using UMusicWeb.Models;

namespace UMusicWeb.Repository.IRepository
{
    public interface IAuctionRepository : IRepository<Auction>
    {
        void Update(Auction auction);
    }
}
