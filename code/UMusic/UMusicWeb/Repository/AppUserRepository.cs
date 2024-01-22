using UMusicWeb.Data;
using UMusicWeb.Models;
using UMusicWeb.Repository.IRepository;

namespace UMusicWeb.Repository
{
    public class AppUserRepository : Repository<AppUser>, IAppUserRepository
    {
        private ApplicationDbContext _db;

        public AppUserRepository (ApplicationDbContext db) : base(db)
        {
            _db = db;
        }

        public void Update(AppUser user)
        {
            _db.AppUsers.Update(user);
        }

        public void UpdateJoinedAuction(AppUser user, int? auctionId)
        {
            AppUser? objDb = _db.AppUsers.FirstOrDefault(u => u.Id == user.Id);
            if (objDb != null)
            {
                objDb.JoinedAuctionId = auctionId;
            }
        }
    }
}
