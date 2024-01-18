using UMusicWeb.Data;
using UMusicWeb.Repository.IRepository;

namespace UMusicWeb.Repository
{
    public class UnitOfWork : IUnitOfWork
    {
        private ApplicationDbContext _db;
        public ICategoryRepository Category { get; private set; }
        public ILotRepository Lot { get; private set; }

        public UnitOfWork(ApplicationDbContext db)
        {
            _db = db;
            Category = new CategoryRepository(_db);
            Lot = new LotRepository(_db);
        }

        public void Save()
        {
            _db.SaveChanges();
        }
    }
}
