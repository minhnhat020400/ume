using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ume.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }
        //Code long
        //tao là long đẹp trai vl :))
        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        // comment
        //tao la nhat

        //lol me m khoa
    }
}