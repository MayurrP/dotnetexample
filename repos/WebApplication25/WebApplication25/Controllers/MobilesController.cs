using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using WebApplication25.Data;
using WebApplication25.Models;

namespace WebApplication25.Controllers
{
    public class MobilesController : Controller
    {
        private readonly WebApplication25Context _context;

        public MobilesController(WebApplication25Context context)
        {
            _context = context;
        }

        // GET: Mobiles
        public async Task<IActionResult> Index()
        {
              return _context.Mobile != null ? 
                          View(await _context.Mobile.ToListAsync()) :
                          Problem("Entity set 'WebApplication25Context.Mobile'  is null.");
        }

        public IActionResult Details(string search)
        {
            if (search == null || _context.Mobile == null)
                    {
                return NotFound();
                //string message = "Record doesn't exist";
                //throw new HttpResponseException(
                //    Request.CreateErrorResponse(HttpStatusCode.NotFound, message));

            }
            Mobile product = _context.Mobile.FirstOrDefault(p => p.Name.Contains(search));

            //ViewBag.mystr = product;
            return View(product);   
        }
        

        // GET: Mobiles/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Mobiles/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Images,Name,Price")] Mobile mobile)
        {
            if (ModelState.IsValid)
            {
                _context.Add(mobile);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(mobile);
        }

        // GET: Mobiles/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Mobile == null)
            {
                return NotFound();
            }

            var mobile = await _context.Mobile.FindAsync(id);
            if (mobile == null)
            {
                return NotFound();
            }
            return View(mobile);
        }

        // POST: Mobiles/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Images,Name,Price")] Mobile mobile)
        {
            if (id != mobile.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(mobile);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!MobileExists(mobile.Id))
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
            return View(mobile);
        }

        // GET: Mobiles/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Mobile == null)
            {
                return NotFound();
            }

            var mobile = await _context.Mobile
                .FirstOrDefaultAsync(m => m.Id == id);
            if (mobile == null)
            {
                return NotFound();
            }

            return View(mobile);
        }

        // POST: Mobiles/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Mobile == null)
            {
                return Problem("Entity set 'WebApplication25Context.Mobile'  is null.");
            }
            var mobile = await _context.Mobile.FindAsync(id);
            if (mobile != null)
            {
                _context.Mobile.Remove(mobile);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool MobileExists(int id)
        {
          return (_context.Mobile?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
