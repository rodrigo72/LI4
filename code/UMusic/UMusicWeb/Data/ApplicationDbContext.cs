using Microsoft.EntityFrameworkCore;
using UMusicWeb.Models;

namespace UMusicWeb.Data
{
    public class ApplicationDbContext : DbContext // extends DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options) // like super() in java
        {
            
        }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Lot> Lots { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Category>().HasData(
                new Category { Id = 1, Name = "Action", DisplayOrder = 1 },
                new Category { Id = 2, Name = "SciFi", DisplayOrder = 2 },
                new Category { Id = 3, Name = "History", DisplayOrder = 3 }
            );

            modelBuilder.Entity<Lot>().HasData(
                new Lot()
                {
                    Id = 1,
                    Name = $"Lot_{1}",
                    Description = "Random description",
                    Visibility = 1,
                    State = LotState.UnderVerification,
                    IncrementValue = 100,
                    InitialValue = 1000,
                    FinalValue = null,
                    QueueTime = 15,
                    DateSale = null,
                    DateAdded = DateTime.Now
                },
                new Lot()
                {
                    Id = 2,
                    Name = $"Lot_{2}",
                    Description = "Random description",
                    Visibility = 1,
                    State = LotState.AlreadyInAuction,
                    IncrementValue = 200,
                    InitialValue = 2000,
                    FinalValue = null,
                    QueueTime = 30,
                    DateSale = null,
                    DateAdded = DateTime.Now
                },
                new Lot()
                {
                    Id = 3,
                    Name = $"Lot_{3}",
                    Description = "Random description",
                    Visibility = 0,
                    State = LotState.Sold,
                    IncrementValue = 100,
                    InitialValue = 1000,
                    FinalValue = 3100.23f,
                    QueueTime = 15,
                    DateSale = DateTime.Now,
                    DateAdded = DateTime.Now.AddDays(-10)
                }
            );
        }
    }
}
