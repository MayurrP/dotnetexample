﻿using System;
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
    public class InstructorListsController : Controller
    {
        private readonly WebApplication24Context _context;

        public InstructorListsController(WebApplication24Context context)
        {
            _context = context;
        }

        // GET: InstructorLists
        public async Task<IActionResult> Index()
        {
            var webApplication24Context = _context.InstructorList.Include(i => i.Sports);
            return View(await webApplication24Context.ToListAsync());
        }

        // GET: InstructorLists/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null || _context.InstructorList == null)
            {
                return NotFound();
            }

            var instructorList = await _context.InstructorList
                .Include(i => i.Sports)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (instructorList == null)
            {
                return NotFound();
            }

            return View(instructorList);
        }

        // GET: InstructorLists/Create
        public IActionResult Create()
        {
            ViewData["SportsId"] = new SelectList(_context.SportsList, "Id", "Id");
            return View();
        }

        // POST: InstructorLists/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,InstructorName,Experience,Age,SportsId")] InstructorList instructorList)
        {
            if (ModelState.IsValid)
            {
                _context.Add(instructorList);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["SportsId"] = new SelectList(_context.SportsList, "Id", "Id", instructorList.SportsId);
            return View(instructorList);
        }

        // GET: InstructorLists/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.InstructorList == null)
            {
                return NotFound();
            }

            var instructorList = await _context.InstructorList.FindAsync(id);
            if (instructorList == null)
            {
                return NotFound();
            }
            ViewData["SportsId"] = new SelectList(_context.SportsList, "Id", "Id", instructorList.SportsId);
            return View(instructorList);
        }

        // POST: InstructorLists/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,InstructorName,Experience,Age,SportsId")] InstructorList instructorList)
        {
            if (id != instructorList.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(instructorList);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!InstructorListExists(instructorList.Id))
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
            ViewData["SportsId"] = new SelectList(_context.SportsList, "Id", "Id", instructorList.SportsId);
            return View(instructorList);
        }

        // GET: InstructorLists/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.InstructorList == null)
            {
                return NotFound();
            }

            var instructorList = await _context.InstructorList
                .Include(i => i.Sports)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (instructorList == null)
            {
                return NotFound();
            }

            return View(instructorList);
        }

        // POST: InstructorLists/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.InstructorList == null)
            {
                return Problem("Entity set 'WebApplication24Context.InstructorList'  is null.");
            }
            var instructorList = await _context.InstructorList.FindAsync(id);
            if (instructorList != null)
            {
                _context.InstructorList.Remove(instructorList);
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool InstructorListExists(int id)
        {
          return (_context.InstructorList?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
