using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Ecommerce_proiect_an4_sem1.Models;

namespace Ecommerce_proiect_an4_sem1.Controllers
{
    public class ProductOrdersController : Controller
    {
        private readonly EcommerceContext _context;

        public ProductOrdersController(EcommerceContext context)
        {
            _context = context;
        }

        // GET: ProductOrders
        public async Task<IActionResult> Index()
        {
            var ecommerceContext = _context.ProductOrder.Include(p => p.OrderIdFkNavigation).Include(p => p.ProductIdFkNavigation);
            return View(await ecommerceContext.ToListAsync());
        }

        // GET: ProductOrders/Details/5
        public async Task<IActionResult> Details(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var productOrder = await _context.ProductOrder
                .Include(p => p.OrderIdFkNavigation)
                .Include(p => p.ProductIdFkNavigation)
                .FirstOrDefaultAsync(m => m.IdProductOrder == id);
            if (productOrder == null)
            {
                return NotFound();
            }

            return View(productOrder);
        }

        // GET: ProductOrders/Create
        public IActionResult Create()
        {
            ViewData["OrderIdFk"] = new SelectList(_context.Order, "OrderId", "OrderId");
            ViewData["ProductIdFk"] = new SelectList(_context.Product, "ProductId", "ProductId");
            return View();
        }

        // POST: ProductOrders/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("OrderIdFk,ProductIdFk,IdProductOrder")] ProductOrder productOrder)
        {
            if (ModelState.IsValid)
            {
                _context.Add(productOrder);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["OrderIdFk"] = new SelectList(_context.Order, "OrderId", "OrderId", productOrder.OrderIdFk);
            ViewData["ProductIdFk"] = new SelectList(_context.Product, "ProductId", "ProductId", productOrder.ProductIdFk);
            return View(productOrder);
        }

        // GET: ProductOrders/Edit/5
        public async Task<IActionResult> Edit(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var productOrder = await _context.ProductOrder.FindAsync(id);
            if (productOrder == null)
            {
                return NotFound();
            }
            ViewData["OrderIdFk"] = new SelectList(_context.Order, "OrderId", "OrderId", productOrder.OrderIdFk);
            ViewData["ProductIdFk"] = new SelectList(_context.Product, "ProductId", "ProductId", productOrder.ProductIdFk);
            return View(productOrder);
        }

        // POST: ProductOrders/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("OrderIdFk,ProductIdFk,IdProductOrder")] ProductOrder productOrder)
        {
            if (id != productOrder.IdProductOrder)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(productOrder);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!ProductOrderExists(productOrder.IdProductOrder))
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
            ViewData["OrderIdFk"] = new SelectList(_context.Order, "OrderId", "OrderId", productOrder.OrderIdFk);
            ViewData["ProductIdFk"] = new SelectList(_context.Product, "ProductId", "ProductId", productOrder.ProductIdFk);
            return View(productOrder);
        }

        // GET: ProductOrders/Delete/5
        public async Task<IActionResult> Delete(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var productOrder = await _context.ProductOrder
                .Include(p => p.OrderIdFkNavigation)
                .Include(p => p.ProductIdFkNavigation)
                .FirstOrDefaultAsync(m => m.IdProductOrder == id);
            if (productOrder == null)
            {
                return NotFound();
            }

            return View(productOrder);
        }

        // POST: ProductOrders/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            var productOrder = await _context.ProductOrder.FindAsync(id);
            _context.ProductOrder.Remove(productOrder);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool ProductOrderExists(string id)
        {
            return _context.ProductOrder.Any(e => e.IdProductOrder == id);
        }
    }
}
