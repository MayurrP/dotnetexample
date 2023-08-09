using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using WebApplication23.Models;
using WebApplication24.Data;

namespace WebApplication24.Controllers
{
    public class SportsListsController : Controller
    {
        private readonly WebApplication24Context _context;

        public SportsListsController(WebApplication24Context context)
        {
            _context = context;
        }

        // GET: SportsLists
        public async Task<IActionResult> Index()
        {
              return _context.SportsList != null ? 
                          View(await _context.SportsList.ToListAsync()) :
                          Problem("Entity set 'WebApplication24Context.SportsList'  is null.");
        }

        // GET: SportsLists/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.SportsList == null)
            {
                return NotFound();
            }

            var sportsList = await _context.SportsList
                .FirstOrDefaultAsync(m => m.Id == id);
            if (sportsList == null)
            {
                return NotFound();
            }

            return View(sportsList);
        }

        // GET: SportsLists/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: SportsLists/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,SportsName")] SportsList sportsList)
        {
            if (ModelState.IsValid)
            {
                _context.Add(sportsList);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(sportsList);
        }

        // GET: SportsLists/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.SportsList == null)
            {
                return NotFound();
            }

            var sportsList = await _context.SportsList.FindAsync(id);
            if (sportsList == null)
            {
                return NotFound();
            }
            return View(sportsList);
        }

        // POST: SportsLists/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,SportsName")] SportsList sportsList)
        {
            if (id != sportsList.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(sportsList);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!SportsListExists(sportsList.Id))
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
            return View(sportsList);
        }

        // GET: SportsLists/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.SportsList == null)
            {
                return NotFound();
            }

            var sportsList = await _context.SportsList
                .FirstOrDefaultAsync(m => m.Id == id);
            if (sportsList == null)
            {
                return NotFound();
            }

            return View(sportsList);
        }

        // POST: SportsLists/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.SportsList == null)
            {
                return Problem("Entity set 'WebApplication24Context.SportsList'  is null.");
            }
            var sportsList = await _context.SportsList.FindAsync(id);
            if (sportsList != null)
            {
                _context.SportsList.Remove(sportsList);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool SportsListExists(int id)
        {
          return (_context.SportsList?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
