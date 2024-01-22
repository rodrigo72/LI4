using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using System.Security.Claims;
using UMusic.Utility;
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

        [Authorize(Roles = SD.Role_Customer + "," + SD.Role_Admin)]
        public IActionResult Waiting(int id)
        {
            Lot lot = _unitOfWork.Lot.Get(u => u.Id == id);

            DateTime now = DateTime.Now;
            DateTime endDate = lot.DateStart.AddMinutes(lot.QueueTime);

            if (now >= lot.DateStart && now <= endDate)
            {
                string? userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
                if (!string.IsNullOrEmpty(userId))
                {
                    AppUser appUser = _unitOfWork.AppUser.Get(u => u.Id == userId);
                    if (appUser != null && (appUser.JoinedAuctionId == null || appUser.JoinedAuctionId == 0))
                    {
                        _unitOfWork.AppUser.UpdateJoinedAuction(appUser, lot.AucionId);
                        _unitOfWork.Save();
                        return View(lot);
                    }
                }
            }
            TempData["error"] = "Failed to join the queue";
            return RedirectToAction("Index");
        }

        [Authorize(Roles = SD.Role_Customer + "," + SD.Role_Admin)]
        public IActionResult LeaveWaiting(int auctionId)
        {
            string? userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
            if (!string.IsNullOrEmpty(userId))
            {
                AppUser appUser = _unitOfWork.AppUser.Get(u => u.Id == userId);
                if (appUser != null && (appUser.JoinedAuctionId != null))
                {
                    _unitOfWork.AppUser.UpdateJoinedAuction(appUser, null);
                    _unitOfWork.Save();
                }
                return RedirectToAction("Details", new { id = auctionId });
            }
            TempData["error"] = "Failed to leave the queue (how ??)";
            return RedirectToAction("Details", new { id = auctionId });
        }

        [Authorize(Roles = SD.Role_Customer + "," + SD.Role_Admin)]
        public IActionResult Bidding(int id)
        {
            Lot lot = _unitOfWork.Lot.Get(u => u.Id == id);
            return View(lot);
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
