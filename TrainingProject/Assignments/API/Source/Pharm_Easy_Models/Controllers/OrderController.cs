using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Pharm_Easy_Models.Services;
using Pharm_Easy_Models.Models;
// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Pharm_Easy_Models.Controllers
{
    [Route("api/Order")]
    [ApiController]
    public class OrderController : ControllerBase
    {


        public IOrderService Order { get; set; }
         public OrderController(IOrderService Order)
        {
            this.Order = Order;
        }
        
        [HttpGet]
        [Route("GetOrder")]
         public IActionResult Get()
        {
            return Ok(Order.Get());
        }
        [HttpGet]
        [Route("TempOrder")]
        public IActionResult GetOrder()
        {
            var x = " exec dbo.OrderTemp";
            foreach(var y in x)
            {
                Console.WriteLine(y);
            }
          return Ok(Order.GetOrder());
        }

        [HttpPost]
        [Route("PostOrder")]
        public IActionResult Add([FromBody] Order order)
        {
            return Ok(Order.Add(order));
        }
        [HttpGet]
        [Route("GetOrder/{id}")]
        public IActionResult GetById(int id)
        {
            return Ok(Order.GetById(id));
        }

        [HttpDelete]
        [Route("DeleteCat/{id}")]
        public IActionResult DeleteById(int id)
        {
            var i = Order.GetById(id);
            return Ok(Order.Delete(i));
        }

    }
}
