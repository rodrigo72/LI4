using UMusicWeb.Models;

namespace UMusicWeb.Repository.IRepository
{
    public interface ILotRepository : IRepository<Lot>
    {
        void Update(Lot obj);
    }
}
