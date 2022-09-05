using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Pharm_Easy_Models.Models;
namespace Pharm_Easy_Models.Services
{
    public interface ICArticleService : IRepository<CArticle>
    { }
    public class CArticleService : Repository<CArticle>, ICArticleService
    {
        public CArticleService(Context context) : base(context)
        { }
    }
}
