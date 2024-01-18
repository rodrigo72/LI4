using UMusicWeb.Data;
using UMusicWeb.Models;
using UMusicWeb.Repository.IRepository;

namespace UMusicWeb.Repository
{
    public class AuctionRepository : Repository<Auction>, IAuctionRepository
    {
        private ApplicationDbContext _db;
        public AuctionRepository(ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public void Update(Auction auction)
        {
            _db.Auctions.Update(auction);
        }
    }
}
