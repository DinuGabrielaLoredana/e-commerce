using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Ecommerce_proiect_an4_sem1.Models;
using System.Security.Claims;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Authorization;
using System.Dynamic;

namespace Ecommerce_proiect_an4_sem1.Controllers
{
    public class ProductsController : Controller
    {
        private readonly EcommerceContext _context;
        private readonly IHttpContextAccessor _httpContextAccessor;
        public ProductsController(EcommerceContext context, IHttpContextAccessor httpContextAccessor)
        {
            _context = context;
            _httpContextAccessor = httpContextAccessor;
        }

        // GET: Products
        public async Task<IActionResult> Index(string searchString, decimal price1, decimal price2, string category)
        {
            var stocks = from m in _context.StockEntry select m;
       
            var products = from m in _context.Product.Include(o => o.ProductCategory).ThenInclude(z => z.Category).OrderBy(x => x.ProductName)
                           select m;
          
            foreach(var stock in stocks)
            {
                foreach(var prod in products)
                {
                    if((stock.ProductId == prod.ProductId) && (stock.RemainingStock <= 0))
                    {
                        products = products.Where(q => !q.Equals(prod));
                    }
                }
            }
            dynamic mymodel = new ExpandoObject();

            mymodel.Categoryes = from m in _context.Category select m;

            if (!String.IsNullOrEmpty(searchString))
            {
                products = products.Where(s => s.ProductName.Contains(searchString));
            }
            if (price1 != 0 )
            {
                products = products.Where(s => s.Price >= price1);
            }
            if(price2 != 0)
            {
                products = products.Where(s => s.Price <= price2);
            }
            if (!String.IsNullOrEmpty(category))
            {
                List<Product> prod = new List<Product>();
                var categoryIds = from m in _context.ProductCategory.Where(s => s.Category.CategoryName.Equals(category)) select m;
                foreach(var categoryId in categoryIds)
                {
                    var filteredProducts = products.Where(s => s.ProductCategory.Contains(categoryId));
                    foreach (var p in filteredProducts)
                    {
                        prod.Add(p);                       
                    }
                }
                mymodel.Products = prod;
                return View(mymodel);
            }
            await products.ToListAsync();

         
            mymodel.Products =  products;
            return View(mymodel);
        }

      

        // GET: Sales
        [ActionName("IndexSales")]
        public async Task<IActionResult> IndexSales(string searchString, decimal price1, decimal price2, string category)
        {
            var stocks = from m in _context.StockEntry select m;
            var products = from m in _context.Product.Include(o => o.ProductCategory).ThenInclude(z => z.Category).Where(s => s.Sales > 0).OrderBy(x => x.ProductName)
                           select m;
            foreach (var stock in stocks)
            {
                foreach (var prod in products)
                {
                    if ((stock.ProductId == prod.ProductId) && (stock.RemainingStock <= 0))
                    {
                        products = products.Where(q => !q.Equals(prod));
                    }
                }
            }
            dynamic mymodel = new ExpandoObject();
            mymodel.Categoryes = from m in _context.Category select m;

            if (!String.IsNullOrEmpty(searchString))
            {
                products = products.Where(s => s.ProductName.Contains(searchString));
            }
            if (price1 != 0)
            {
                products = products.Where(s => s.Price >= price1);
            }
            if (price2 != 0)
            {
                products = products.Where(s => s.Price <= price2);
            }
            if (!String.IsNullOrEmpty(category))
            {
                List<Product> prod = new List<Product>();
                var categoryIds = from m in _context.ProductCategory.Where(s => s.Category.CategoryName.Equals(category)) select m;
                foreach (var categoryId in categoryIds)
                {
                    var filteredProducts = products.Where(s => s.ProductCategory.Contains(categoryId));
                    foreach (var p in filteredProducts)
                    {
                        foreach (var stock in stocks)
                        {
                            if (stock.ProductId == p.ProductId && stock.RemainingStock > 0)
                            {
                                prod.Add(p);
                            }
                        }
                    }
                }
                mymodel.Products = prod;
                return View(mymodel);
            }

            mymodel.Products = await products.ToListAsync();
            return View(mymodel);
        }

        // GET: Products/Details/5
        public async Task<IActionResult> Details(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var product = await _context.Product
                .FirstOrDefaultAsync(m => m.ProductId == id);
            if (product == null)
            {
                return NotFound();
            }

            return View(product);
        }

        // GET: Products/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Products/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ProductName,ProductDescription,Price,ProductPicture,SpecificationFile")] Product product)
        {
            if (ModelState.IsValid)
            {
                product.ProductId = Guid.NewGuid().ToString();
                _context.Add(product);
                await _context.SaveChangesAsync();
                StockEntry stock = new StockEntry();
                stock.RemainingStock = 0;
                stock.ProductId = product.ProductId;
                stock.StockId = Guid.NewGuid().ToString();
                _context.Add(stock);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(product);
        }

        // GET: Products/Edit/5
        public async Task<IActionResult> Edit(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var product = await _context.Product.FindAsync(id);
            if (product == null)
            {
                return NotFound();
            }
            return View(product);
        }

        // POST: Products/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("ProductId,ProductName,ProductDescription,Price,ProductPicture,Sales,SpecificationFile")] Product product)
        {
            if (id != product.ProductId)
            {
                return NotFound();
            }
            product.Nprice = (product.Price - (15 * product.Price / 100 ));
            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(product);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ProductExists(product.ProductId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(product);
        }

        // GET: Products/Delete/5
        public async Task<IActionResult> Delete(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var product = await _context.Product
                .FirstOrDefaultAsync(m => m.ProductId == id);
            if (product == null)
            {
                return NotFound();
            }

            return View(product);
        }

        // POST: Products/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            var product = await _context.Product.FindAsync(id);
            _context.Product.Remove(product);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ProductExists(string id)
        {
            return _context.Product.Any(e => e.ProductId == id);
        }

        // POST: Products/AddToCart/5
        [Authorize]
        [HttpGet, ActionName("AddToCart")]
        public async Task<IActionResult> AddToCart(string id)
        {
            var order = new Order();
            order.OrderId = Guid.NewGuid().ToString();
            order.HasBeenPlaced = 0;
            order.HasBeenConfirmed = "0";
            order.ClientId = _httpContextAccessor.HttpContext.User.FindFirst(ClaimTypes.NameIdentifier).Value;
            _context.Order.Add(order);
            var stocks = _context.StockEntry.Include(s => s.Product).OrderBy(x => x.RemainingStock);
            foreach (var stock in stocks)
            {
                if (stock.ProductId == id)
                {
                    stock.RemainingStock--;
                    _context.Update(stock);
                    break;
                }
            }
            await _context.SaveChangesAsync();
            var productorder = new ProductOrder();
            productorder.IdProductOrder = Guid.NewGuid().ToString();
            productorder.OrderIdFk = order.OrderId;
            productorder.ProductIdFk = id;
            _context.ProductOrder.Add(productorder);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

    }
}
