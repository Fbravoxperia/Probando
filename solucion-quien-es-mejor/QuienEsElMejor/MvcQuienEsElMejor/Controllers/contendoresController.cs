using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MvcQuienEsElMejor.Controllers
{
    public class contendoresController : Controller
    {
        // GET: contendores
        public ActionResult Index()
        {
            return View();
        }

        // GET: contendores/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: contendores/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: contendores/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: contendores/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: contendores/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: contendores/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: contendores/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
