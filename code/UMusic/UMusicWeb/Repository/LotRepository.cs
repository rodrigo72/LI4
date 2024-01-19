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
            var objDb = _db.Lots.FirstOrDefault(u => u.Id == obj.Id);
            if (objDb != null)
            {
                objDb.Name = obj.Name;
                objDb.Description = obj.Description;
                objDb.Visibility = obj.Visibility;
                objDb.State = obj.State;
                objDb.IncrementValue = obj.IncrementValue;
                objDb.InitialValue = obj.InitialValue;
                objDb.FinalValue = obj.FinalValue;
                objDb.QueueTime = obj.QueueTime;
                objDb.DateAdded = obj.DateAdded;
                objDb.DateSale = obj.DateSale;
                objDb.AucionId = obj.AucionId;
                if (obj.ImageURL != null)
                {
                    objDb.ImageURL = obj.ImageURL;
                }
            }
            //_db.Lots.Update(obj);
        }
    }
}
