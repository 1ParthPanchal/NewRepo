using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Pharm_Easy_Models.Models;
namespace Pharm_Easy_Models.Services
{
    public interface IAdminDetailsService : IRepository<AdminDetails>
    { }
    public class AdminDetailsService : Repository<AdminDetails>,IAdminDetailsService
    {
        public AdminDetailsService(Context context):base(context)
        {

        }
    }
}
