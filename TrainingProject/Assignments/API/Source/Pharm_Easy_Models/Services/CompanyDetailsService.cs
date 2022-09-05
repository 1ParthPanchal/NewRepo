using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Pharm_Easy_Models.Models;
namespace Pharm_Easy_Models.Services
{
    public interface ICompanyDetailsService:IRepository<CompanyDetails>
    {

    }
    public class CompanyDetailsService : Repository<CompanyDetails>, ICompanyDetailsService
    {
        public CompanyDetailsService(Context context) : base(context)
        { }
    }
}
