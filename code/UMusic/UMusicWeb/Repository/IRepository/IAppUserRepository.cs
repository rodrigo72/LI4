using UMusicWeb.Models;

namespace UMusicWeb.Repository.IRepository
{
    public interface IAppUserRepository : IRepository<AppUser>
    {
        void Update(AppUser appUser);
        public void UpdateJoinedAuction(AppUser user, int? auctionId);
    }
}
