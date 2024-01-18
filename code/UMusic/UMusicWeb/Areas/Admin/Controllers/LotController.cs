using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.ModelBinding;
using UMusicWeb.Models;
using UMusicWeb.Repository.IRepository;

namespace UMusicWeb.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class LotController : Controller
    {
        private readonly IUnitOfWork _unitOfWork;

        public LotController(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public IActionResult Index()
        {
            List<Lot> objectLotList = _unitOfWork.Lot.GetAll().ToList();
            return View(objectLotList);
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(Lot obj)
        {
            if ((obj.DateSale != null || obj.FinalValue != null) && obj.State != LotState.Sold)
            {
                ModelState.AddModelError("state", "Lot cannot have a Date of Sale or a Final Value without the being Sold");
            }

            if (obj.State == LotState.Sold && (obj.FinalValue == null || obj.DateSale == null))
            {
                ModelState.AddModelError("state", "A Lot with the state 'Sold' must have both a Final Value and a Date of Sale specified.");
            }

            if (ModelState.IsValid)
            {
                obj.DateAdded = DateTime.Now;
                _unitOfWork.Lot.Add(obj);
                _unitOfWork.Save();
                TempData["success"] = "Lot created successfully";
                return RedirectToAction("Index", "Lot");
            }
            return View();
        }

        public IActionResult Edit(int? id)
        {
            if (id == null || id == 0)
            {
                return NotFound();
            }

            Lot? lot = _unitOfWork.Lot.Get(u => u.Id == id);

            if (lot == null)
            {
                return NotFound();
            }

            return View(lot);
        }

        [HttpPost]
        public IActionResult Edit(Lot obj)
        {
            if ((obj.DateSale != null || obj.FinalValue != null) && obj.State != LotState.Sold)
            {
                ModelState.AddModelError("state", "A Lot cannot have a Date of Sale or Final Value unless its state is set to 'Sold'.");
            }

            if (obj.State == LotState.Sold && (obj.FinalValue == null || obj.DateSale == null))
            {
                ModelState.AddModelError("state", "A Lot with the state 'Sold' must have both a Final Value and a Date of Sale specified.");
            }

            if (ModelState.IsValid)
            {
                _unitOfWork.Lot.Update(obj);
                _unitOfWork.Save();
                TempData["success"] = "Lot updated successfully";
                return RedirectToAction("Index", "Lot");
            }
            return View();
        }

        public IActionResult Delete(int? id)
        {
            if (id == null || id == 0)
            {
                return NotFound();
            }

            Lot? lot = _unitOfWork.Lot.Get(u => u.Id == id);

            if (lot == null)
            {
                return NotFound();
            }

            return View(lot);
        }

        [HttpPost, ActionName("Delete")]
        public IActionResult DeletePOST(int? id)
        {

            Lot? lot = _unitOfWork.Lot.Get(u => u.Id == id);
            if (lot == null)
            {
                return NotFound();
            }

            _unitOfWork.Lot.Remove(lot);
            _unitOfWork.Save();
            TempData["success"] = "Lot deleted successfully";
            return RedirectToAction("Index", "Lot");
        }
    }
}