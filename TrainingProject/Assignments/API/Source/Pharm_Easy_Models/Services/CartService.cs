using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Pharm_Easy_Models.Models;

namespace Pharm_Easy_Models.Services
{
    public interface ICartService : IRepository<Cart>
    {
    }
    public class CartService :  Repository<Cart>,ICartService
    {
        public CartService(Context context) : base(context)
        { }
    }
}
