using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace UMusicWeb.Models
{
    public class Lot
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [MaxLength(50)]
        public string Name { get; set; }

        [Required]
        [MaxLength(300)]
        public string Description { get; set; }

        [Required]
        [Range(0, 1)]
        public int Visibility { get; set; }

        [Required]
        [EnumDataType(typeof(LotState))]
        public LotState State { get; set; }

        [Required]
        [Display(Name = "Increment Value")]
        [Range(0, float.MaxValue)]
        public float IncrementValue { get; set; }

        [Required]
        [Display(Name = "Initial Value")]
        [Range(0, float.MaxValue)]
        public float InitialValue { get; set; }

        [Display(Name = "Final Value")]
        [Range(0, float.MaxValue)]
        public float? FinalValue { get; set; }

        [Required]
        [Display(Name = "Queue time")]
        [Range(0, float.MaxValue)]
        public int QueueTime { get; set; }

        [Display(Name = "Date of Sale")]
        public DateTime? DateSale { get; set; }

        [Required]
        [Display(Name = "Date of Creation")]
        public DateTime DateAdded { get; set; }

        [Required]
        [Display(Name = "Auction")]
        public int AucionId { get; set; }

        [ForeignKey("AucionId")]
        [ValidateNever]
        public Auction Auction { get; set; }

        [ValidateNever]
        public string ImageURL { get; set; }
    }

    public enum LotState
    {

        [Display(Name = "Available for auction")]
        AvailableForAuction,

        [Display(Name = "Already in auction")]
        AlreadyInAuction,

        [Display(Name = "Under verification")]
        UnderVerification,

        [Display(Name = "Sold")]
        Sold
    }
}
