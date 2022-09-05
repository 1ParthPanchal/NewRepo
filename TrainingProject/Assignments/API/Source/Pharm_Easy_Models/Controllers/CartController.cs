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
    [Route("api/Cart")]
    [ApiController]
    public class CartController : ControllerBase
    {
        public ICartService Cart { get; set; }

        public CartController(ICartService Cart)
        {
            this.Cart = Cart;
        }
        [HttpGet]
        [Route("GetCart")]
        public IActionResult Get()
        {
            return Ok(Cart.Get());
        }
        [HttpPost]
        [Route("PostCart")]
        public IActionResult Add([FromBody] Cart cart)
        {
            return Ok(Cart.Add(cart));
        }
        [HttpGet]
        [Route("GetCart/{id}")]
        public IActionResult GetById(int id)
        {
            return Ok(Cart.GetById(id));
        }
        [HttpDelete]
        [Route("DeleteCart/{id}")]
        public IActionResult DeleteById(int id)
        {
            var i = Cart.GetById(id);
            return Ok(Cart.Delete(i));
        }
    }
}
