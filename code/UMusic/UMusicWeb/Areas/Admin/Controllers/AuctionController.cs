using Microsoft.AspNetCore.Mvc;
using UMusicWeb.Models;
using UMusicWeb.Repository.IRepository;
using Microsoft.AspNetCore.Authorization;
using UMusic.Utility;

namespace UMusicWeb.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize(Roles = SD.Role_Admin)]
    public class AuctionController : Controller
    {
        private readonly IUnitOfWork _unitOfWork;
        public AuctionController(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public IActionResult Index()
        {
            List<Auction> objectLotList = _unitOfWork.Auction.GetAll().ToList();
            return View(objectLotList);
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(Auction obj)
        {
            if (ModelState.IsValid)
            {
                _unitOfWork.Auction.Add(obj);
                _unitOfWork.Save();
                TempData["success"] = "Auction created successfully";
                return RedirectToAction("Index", "Auction");
            }
            return View();
        }

        public IActionResult Edit(int? id)
        {
            if (id == null || id == 0)
            {
                return NotFound();
            }

            Auction? obj = _unitOfWork.Auction.Get(u => u.Id == id);

            if (obj == null)
            {
                return NotFound();
            }

            return View(obj);
        }

        [HttpPost]
        public IActionResult Edit(Auction obj)
        {
            if (ModelState.IsValid)
            {
                _unitOfWork.Auction.Update(obj);
                _unitOfWork.Save();
                TempData["success"] = "Auction updated successfully";
                return RedirectToAction("Index", "Auction");
            }
            return View();
        }

        public IActionResult Delete(int? id)
        {
            if (id == null || id == 0)
            {
                return NotFound();
            }

            Auction? obj = _unitOfWork.Auction.Get(u => u.Id == id);

            if (obj == null)
            {
                return NotFound();
            }

            return View(obj);
        }

        [HttpPost, ActionName("Delete")]
        public IActionResult DeletePOST(int? id)
        {

            Auction? obj = _unitOfWork.Auction.Get(u => u.Id == id);
            if (obj == null)
            {
                return NotFound();
            }

            _unitOfWork.Auction.Remove(obj);
            _unitOfWork.Save();
            TempData["success"] = "Auction deleted successfully";
            return RedirectToAction("Index", "Auction");
        }
    }
}