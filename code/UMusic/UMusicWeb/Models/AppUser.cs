using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace UMusicWeb.Models
{
    public class AppUser : IdentityUser
    {
        [Required]
        public string Name { get; set; }

        public string? Address { get; set; }
        public string? City { get; set; }
        public string? PostalCode { get; set; }

        public int? JoinedAuctionId { get; set; }

        [ForeignKey("JoinedAuctionId")]
        [ValidateNever]
        public Auction? Auction { get; set; }
    }
}
