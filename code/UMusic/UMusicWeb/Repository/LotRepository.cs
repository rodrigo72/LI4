using UMusicWeb.Data;
using UMusicWeb.Models;
using UMusicWeb.Repository.IRepository;

namespace UMusicWeb.Repository
{
    public class LotRepository : Repository<Lot>, ILotRepository
    {
        private ApplicationDbContext _db;
        public LotRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public void Update(Lot obj)
        {
            _db.Lots.Update(obj);
        }
    }
}
