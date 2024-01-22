using UMusicWeb.Data;
using UMusicWeb.Repository.IRepository;
using UMusicWeb.Models;

namespace UMusicWeb.Repository
{
    public class UnitOfWork : IUnitOfWork
    {
        private ApplicationDbContext _db;
        public ICategoryRepository Category { get; private set; }
        public ILotRepository Lot { get; private set; }
        public IAuctionRepository Auction { get; private set; }
        public IAppUserRepository AppUser { get; private set; }

        public UnitOfWork(ApplicationDbContext db)
        {
            _db = db;
            Category = new CategoryRepository(_db);
            Lot = new LotRepository(_db);
            Auction = new AuctionRepository(_db);
            AppUser = new AppUserRepository(_db);
        }

        public void Save()
        {
            _db.SaveChanges();
        }
    }
}
