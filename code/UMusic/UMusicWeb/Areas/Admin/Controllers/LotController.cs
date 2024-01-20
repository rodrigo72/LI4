using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using UMusic.Utility;
using UMusicWeb.Models;
using UMusicWeb.Models.ViewModels;
using UMusicWeb.Repository.IRepository;

namespace UMusicWeb.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize(Roles = SD.Role_Admin)]
    public class LotController : Controller
    {
        private readonly IUnitOfWork _unitOfWork;
        private readonly IWebHostEnvironment _webHostEnvironment;
        public LotController(IUnitOfWork unitOfWork, IWebHostEnvironment webHostEnvironment)
        {
            _unitOfWork = unitOfWork;
            _webHostEnvironment = webHostEnvironment;
        }

        public IActionResult Index()
        {
            List<Lot> objectLotList = _unitOfWork.Lot.GetAll(includeProperties:"Auction").ToList();
            return View(objectLotList);
        }

        public IActionResult Upsert(int? id)
        {
            IEnumerable<SelectListItem> AuctionList = _unitOfWork.Auction
                .GetAll().Select(u => new SelectListItem
                {
                    Text = u.Name,
                    Value = u.Id.ToString()
                });

            LotVM vm = new LotVM()
            {
                AuctionList = AuctionList,
                Lot = new Lot()
            };

            if (id == null || id == 0)
            {
                return View(vm);
            }
            else
            {
                // update
                vm.Lot = _unitOfWork.Lot.Get(u => u.Id == id);
                return View(vm);
            }
        }

        [HttpPost]
        public IActionResult Upsert(LotVM obj, IFormFile? file)
        {
            if ((obj.Lot.DateSale != null || obj.Lot.FinalValue != null) && obj.Lot.State != LotState.Sold)
            {
                ModelState.AddModelError("state", "Lot cannot have a Date of Sale or a Final Value without the being Sold");
            }

            if (obj.Lot.State == LotState.Sold && (obj.Lot.FinalValue == null || obj.Lot.DateSale == null))
            {
                ModelState.AddModelError("state", "A Lot with the state 'Sold' must have both a Final Value and a Date of Sale specified.");
            }

            if (ModelState.IsValid)
            {
                string wwwRootPath = _webHostEnvironment.WebRootPath;
                if (file != null)
                {
                    string fileName = Guid.NewGuid().ToString() + Path.GetExtension(file.FileName);
                    string productPath = Path.Combine(wwwRootPath, @"images\lot");

                    if (!string.IsNullOrEmpty(obj.Lot.ImageURL))
                    {
                        // remove the old image
                        var oldImagePath = Path.Combine(wwwRootPath, obj.Lot.ImageURL.TrimStart('\\'));

                        if (System.IO.File.Exists(oldImagePath))
                        {
                            System.IO.File.Delete(oldImagePath);
                        }
                    }

                    using (var fileStream = new FileStream(Path.Combine(productPath, fileName), FileMode.Create))
                    {
                        file.CopyTo(fileStream);
                    }
                    obj.Lot.ImageURL = @"\images\lot\" + fileName;
                }

                obj.Lot.DateAdded = DateTime.Now;
                if (obj.Lot.Id == 0)
                {
                    _unitOfWork.Lot.Add(obj.Lot);
                }
                else
                {
                    _unitOfWork.Lot.Update(obj.Lot);
                }

                _unitOfWork.Save();
                TempData["success"] = "Lot created successfully";
                return RedirectToAction("Index", "Lot");
            } 
            else
            {
                obj.AuctionList = _unitOfWork.Auction
                .GetAll().Select(u => new SelectListItem
                {
                    Text = u.Name,
                    Value = u.Id.ToString()
                });

                return View(obj);
            }
        }

        #region API CALLS

        [HttpGet]
        public IActionResult GetAll()
        {
            List<Lot> objectLotList = _unitOfWork.Lot.GetAll(includeProperties: "Auction").ToList();
            return Json(new { data =  objectLotList });
        }


        [HttpDelete]
        public IActionResult Delete(int? id)
        {
            var lot = _unitOfWork.Lot.Get(u => u.Id == id);
            if (lot == null)
            {
                return Json(new { success = false, message = "Error while deleting" });
            }

            var oldImagePath = Path.Combine(_webHostEnvironment.WebRootPath, lot.ImageURL.TrimStart('\\'));

            if (System.IO.File.Exists(oldImagePath))
            {
                System.IO.File.Delete(oldImagePath);
            }

            _unitOfWork.Lot.Remove(lot);
            _unitOfWork.Save();

            return Json(new { sucess = true, message = "Delete successful" });
        }

        #endregion

    }
}