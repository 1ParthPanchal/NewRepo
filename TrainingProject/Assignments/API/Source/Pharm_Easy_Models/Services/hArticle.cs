using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Pharm_Easy_Models.Models;
namespace Pharm_Easy_Models
{
    public interface IhArticleService : IRepository<hArticle>
    { }
    public class hArticleService : Repository<hArticle>, IhArticleService
    {
        public hArticleService(Context context) : base(context)
        { }
    }
}
