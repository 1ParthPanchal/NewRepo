using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Pharm_Easy_Models;
using Pharm_Easy_Models.Models;
namespace Pharm_Easy_Models.Services
{
    public interface IProductService : IRepository<Product> { }
    public class ProductService:Repository<Product>, IProductService
    {
        public ProductService(Context context) : base(context) { }
    }
}
