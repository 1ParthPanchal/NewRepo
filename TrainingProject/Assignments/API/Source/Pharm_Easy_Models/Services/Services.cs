using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Pharm_Easy_Models.Models;
using Pharm_Easy_Models;
namespace Pharm_Easy_Models
{
    public interface ICategoriesService : IRepository<Categories>
    {
        
    }
    public class CategoriesService : Repository<Categories>, ICategoriesService
    {
        public CategoriesService(Context context) : base(context)
        { }


    }
    
}
