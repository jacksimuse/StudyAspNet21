using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using MyPortpolio.Data;
using MyPortpolio.Models;

namespace MyPortpolio.Controllers
{
    public class ContactsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public ContactsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Contacts
        public async Task<IActionResult> Index()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Index([Bind("Id,Name,Email,Contents")] Contact contact)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    contact.RegDate = DateTime.Now;
                    _context.Add(contact);
                    await _context.SaveChangesAsync();

                    ViewBag.Message = "감사합니다. 연락드리겠습니다";
                }
                catch (Exception ex)
                {
                    ModelState.Clear();
                    ViewBag.Message = $"예외가 발생했습니다. {ex.Message}";
                }
                //return RedirectToAction(nameof(Index));
            }
            return View();
        }
    } 
}
