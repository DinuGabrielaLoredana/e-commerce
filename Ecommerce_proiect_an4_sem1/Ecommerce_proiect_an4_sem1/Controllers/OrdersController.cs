using System;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Ecommerce_proiect_an4_sem1.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using System.Security.Claims;

namespace Ecommerce_proiect_an4_sem1.Controllers
{
    [Authorize(Roles="Admin, User")]
    public class OrdersController : Controller
    {
        private readonly EcommerceContext _context;
        private readonly IHttpContextAccessor _httpContextAccessor;

        public OrdersController(EcommerceContext context, IHttpContextAccessor httpContextAccessor)
        {
            _context = context;
            _httpContextAccessor = httpContextAccessor;
        }

        // GET: Orders
        public async Task<IActionResult> Index()
        {
            var currentClientRole = _httpContextAccessor.HttpContext.User.FindFirst(ClaimTypes.Role).Value;
            if (currentClientRole == "Admin")
            {
                IQueryable<Order> ecommerceContext = null;
                ecommerceContext = _context.Order.Include(o => o.Client).Include(p => p.ProductOrder).ThenInclude(x => x.ProductIdFkNavigation).Where(z => z.HasBeenPlaced == 1 && z.HasBeenConfirmed.Contains("0")).OrderBy(s => s.HasBeenConfirmed);
                return View(await ecommerceContext.ToListAsync());
            }
            else 
            {
                IQueryable<Order> ecommerceContext = null;
                var currentClient = _httpContextAccessor.HttpContext.User.FindFirst(ClaimTypes.NameIdentifier).Value;
                ecommerceContext = _context.Order.Include(o => o.Client).Include(p => p.ProductOrder).ThenInclude(x => x.ProductIdFkNavigation).Where(y => y.ClientId == currentClient).Where(z => z.HasBeenPlaced == 1).OrderBy(s => s.HasBeenConfirmed);
                return View(await ecommerceContext.ToListAsync()); 
            }
        }

        // GET: Basket
        [ActionName("IndexBasket")]
        public async Task<IActionResult> IndexBasket()
        {
            var currentClientRole = _httpContextAccessor.HttpContext.User.FindFirst(ClaimTypes.Role).Value;
            if (currentClientRole == "Admin")
            {
                IQueryable<Order> ecommerceContext = null;
                ecommerceContext = _context.Order.Include(o => o.Client).Include(p => p.ProductOrder).ThenInclude(x => x.ProductIdFkNavigation).Where(z => z.HasBeenPlaced == 0);
                return View(await ecommerceContext.ToListAsync());
            }
            else
            {
                IQueryable<Order> ecommerceContext = null;
                var currentClient = _httpContextAccessor.HttpContext.User.FindFirst(ClaimTypes.NameIdentifier).Value;
                ecommerceContext = _context.Order.Include(o => o.Client).Include(p => p.ProductOrder).ThenInclude(x => x.ProductIdFkNavigation).Where(y => y.ClientId == currentClient).Where(z => z.HasBeenPlaced == 0);
                return View(await ecommerceContext.ToListAsync());
            }
        }

        // GET: Orders/Details/5
        public async Task<IActionResult> Details(string id)
        {
            if (null == id)
            {
                return NotFound();
            }

            var order = await _context.Order
                .Include(o => o.Client)
                .FirstOrDefaultAsync(m => m.OrderId == id);
            if (order == null)
            {
                return NotFound();
            }

            return View(order);
        }

        // GET: Orders/Create
        public IActionResult Create()
        {
            ViewData["ClientId"] = new SelectList(_context.User, "Id", "Id");
            return View();
        }

        // POST: Orders/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("HasBeenPlaced,ClientId,Quantity")] Order order)
        {
            if (ModelState.IsValid)
            {
                order.OrderId = Guid.NewGuid().ToString();
                order.HasBeenPlaced = 0;
                order.HasBeenConfirmed = "0";
                _context.Add(order);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["ClientId"] = new SelectList(_context.User, "Id", "Id", order.ClientId);
            return View(order);
        }

        // GET: Orders/Edit/5
        public async Task<IActionResult> Edit(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var order = await _context.Order.FindAsync(id);
            if (order == null)
            {
                return NotFound();
            }
            ViewData["ClientId"] = new SelectList(_context.User, "Id", "Id", order.ClientId);
            return View(order);
        }

        // POST: Orders/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("OrderId,HasBeenPlaced,ClientId")] Order order)
        {
            if (id != order.OrderId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(order);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!OrderExists(order.OrderId))
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
            ViewData["ClientId"] = new SelectList(_context.User, "Id", "Id", order.ClientId);
            return View(order);
        }

        // GET: Orders/Delete/5
        public async Task<IActionResult> Delete(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var order = await _context.Order
                .Include(o => o.Client)
                .FirstAsync(m => m.OrderId == id);
            if (order == null)
            {
                return NotFound();
            }

            return View(order);
        }

        // POST: Orders/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            var order = await _context.Order.FindAsync(id);
            order.HasBeenConfirmed = "1";
            order.HasBeenPlaced = 1;
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(IndexBasket));
        }

        private bool OrderExists(string id)
        {
            return _context.Order.Any(e => e.OrderId == id);
        }
        
        [ActionName("ConfirmOrder")]
        public async Task<IActionResult> ConfirmOrder(string id)
        {
            var order = await _context.Order.FindAsync(id);
            order.HasBeenConfirmed = "1";
            _context.Update(order);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }
        
        [ActionName("PlaceOrder")]
        public async Task<IActionResult> PlaceOrder(string id)
        {
            var order = await _context.Order.FindAsync(id);
            order.HasBeenPlaced = 1;
            _context.Update(order);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(IndexBasket));
        }

        [ActionName("DecrementOrder")]
        public async Task<IActionResult> DecrementOrder(string id)
        {
            var order = await _context.Order.FindAsync(id);
            if (1 < order.Quantity)
            {
                order.Quantity--;
                _context.Update(order);
                await _context.SaveChangesAsync();
            }
            return RedirectToAction(nameof(IndexBasket));
        }

        [ActionName("IncrementOrder")]
        public async Task<IActionResult> IncrementOrder(string id)
        {
            var order = await _context.Order.FindAsync(id);
            order.Quantity++;
            _context.Update(order);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(IndexBasket));
        }
    }
}
