namespace UMusicWeb.Repository.IRepository
{
    public interface IUnitOfWork
    {
        ICategoryRepository Category { get; }
        ILotRepository Lot { get; }
        void Save();

    }
}
