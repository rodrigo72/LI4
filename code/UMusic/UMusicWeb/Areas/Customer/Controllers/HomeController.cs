using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using UMusicWeb.Models;
using UMusicWeb.Repository.IRepository;

namespace UMusicWeb.Areas.Customer.Controllers
{
    [Area("Customer")]
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IUnitOfWork _unitOfWork;

        public HomeController(ILogger<HomeController> logger, IUnitOfWork unitOfWork)
        {
            _logger = logger;
            _unitOfWork = unitOfWork;
        }

        public IActionResult Index()
        {
            IEnumerable<Auction> list = _unitOfWork.Auction.GetAll();
            return View(list);
        }

        public IActionResult Details(int id)
        {
            IEnumerable<Lot> list = _unitOfWork.Lot.GetAll(u => u.AucionId == id);
            return View(list);
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
