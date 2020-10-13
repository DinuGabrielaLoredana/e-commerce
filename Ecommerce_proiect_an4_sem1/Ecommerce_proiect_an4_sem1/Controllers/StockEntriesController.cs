using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Ecommerce_proiect_an4_sem1.Models;
using Microsoft.AspNetCore.Authorization;

namespace Ecommerce_proiect_an4_sem1.Controllers
{
    [Authorize(Roles = "Admin")]
    public class StockEntriesController : Controller
    {
        private readonly EcommerceContext _context;

        public StockEntriesController(EcommerceContext context)
        {
            _context = context;
        }

        // GET: StockEntries
        public async Task<IActionResult> Index()
        {
            var ecommerceContext = _context.StockEntry.Include(s => s.Product).OrderBy(x => x.RemainingStock);
            return View(await ecommerceContext.ToListAsync());
        }

        // GET: StockEntries/Details/5
        public async Task<IActionResult> Details(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var stockEntry = await _context.StockEntry
                .Include(s => s.Product)
                .FirstOrDefaultAsync(m => m.StockId == id);
            if (stockEntry == null)
            {
                return NotFound();
            }

            return View(stockEntry);
        }

        // GET: StockEntries/Create
        public IActionResult Create()
        {
            ViewData["ProductId"] = new SelectList(_context.Product, "ProductId", "ProductName");
            return View();
        }

        // POST: StockEntries/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ProductId,RemainingStock")] StockEntry stockEntry)
        {
            if (ModelState.IsValid)
            {
                stockEntry.StockId = Guid.NewGuid().ToString();
                _context.Add(stockEntry);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["ProductId"] = new SelectList(_context.Product, "ProductId", "ProductName", stockEntry.ProductId);
            return View(stockEntry);
        }

        // GET: StockEntries/Edit/5
        public async Task<IActionResult> Edit(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var stockEntry = await _context.StockEntry.FindAsync(id);
            if (stockEntry == null)
            {
                return NotFound();
            }
            ViewData["ProductId"] = new SelectList(_context.Product, "ProductId", "ProductName", stockEntry.ProductId);
            return View(stockEntry);
        }

        // POST: StockEntries/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string id, [Bind("StockId,ProductId,RemainingStock")] StockEntry stockEntry)
        {
            if (id != stockEntry.StockId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(stockEntry);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!StockEntryExists(stockEntry.StockId))
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
            ViewData["ProductId"] = new SelectList(_context.Product, "ProductId", "ProductName", stockEntry.ProductId);
            return View(stockEntry);
        }

        // GET: StockEntries/Delete/5
        public async Task<IActionResult> Delete(string id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var stockEntry = await _context.StockEntry
                .Include(s => s.Product)
                .FirstOrDefaultAsync(m => m.StockId == id);
            if (stockEntry == null)
            {
                return NotFound();
            }

            return View(stockEntry);
        }

        // POST: StockEntries/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(string id)
        {
            var stockEntry = await _context.StockEntry.FindAsync(id);
            _context.StockEntry.Remove(stockEntry);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool StockEntryExists(string id)
        {
            return _context.StockEntry.Any(e => e.StockId == id);
        }

    }
}
