using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Data.SqlClient;
using Microsoft.IdentityModel.Protocols;
using Pharm_Easy_Models.Models;
namespace Pharm_Easy_Models.Services
{
    public interface IOrderService : IRepository<Order>
    {
    }
    public class OrderService:Repository<Order>,IOrderService
    {
        public OrderService(Context context):base(context)
        {
            

        }
    }
}
