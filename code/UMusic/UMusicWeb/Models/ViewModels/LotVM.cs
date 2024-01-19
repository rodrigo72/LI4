using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace UMusicWeb.Models.ViewModels
{
    public class LotVM
    {
        public Lot Lot { get; set; }

        [ValidateNever]
        public IEnumerable<SelectListItem> AuctionList { get; set; }
    }
}
