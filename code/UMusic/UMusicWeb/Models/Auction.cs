using System.ComponentModel.DataAnnotations;

namespace UMusicWeb.Models
{
    public class Auction
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [Display(Name = "Start Date")]
        public DateTime StartDate { get; set; }

        [Display(Name = "End Date")]
        public DateTime? EndDate { get; set; }

        [Required]
        [MaxLength(100)]
        public string Name { get; set; }

        [Required]
        [MaxLength(300)]
        public string Description { get; set; }

        [Required]
        [Display(Name = "Automatic Initialization")]
        public bool AutomaticInitialization { get; set; }
    }
}
