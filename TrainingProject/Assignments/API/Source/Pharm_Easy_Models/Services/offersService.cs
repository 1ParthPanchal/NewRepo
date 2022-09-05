using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Pharm_Easy_Models.Models;
namespace Pharm_Easy_Models
{
    public interface IOffersService : IRepository<Offers>
    { }
    public class OffersService : Repository<Offers>, IOffersService
    {
        public OffersService(Context context) : base(context)
        { }
    }
}
