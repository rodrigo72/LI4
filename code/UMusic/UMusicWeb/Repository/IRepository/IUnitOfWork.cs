namespace UMusicWeb.Repository.IRepository
{
    public interface IUnitOfWork
    {
        ICategoryRepository Category { get; }
        ILotRepository Lot { get; }
        IAuctionRepository Auction { get; }
        IAppUserRepository AppUser { get; }
        void Save();

    }
}
