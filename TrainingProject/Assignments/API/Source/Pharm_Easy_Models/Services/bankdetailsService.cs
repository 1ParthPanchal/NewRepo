using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Pharm_Easy_Models.Models;
namespace Pharm_Easy_Models.Services
{
    public interface IbankdetailsService : IRepository<bankdetails>
    {
    }
    public class bankdetailsService : Repository<bankdetails>, IbankdetailsService
    {
        public bankdetailsService(Context context): base(context)
        {

        }
    }
}
