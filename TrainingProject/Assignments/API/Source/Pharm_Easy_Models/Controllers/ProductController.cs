using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Pharm_Easy_Models.Models;
using Pharm_Easy_Models.Services;
// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Pharm_Easy_Models.Controllers
{
    [Route("api/Product")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        public IProductService Product;
        public ProductController(IProductService Product)
        {
            this.Product = Product;
        }
        [HttpGet]
        [Route("GetProduct")]
        public IActionResult Get()
        {
            return Ok(Product.Get());
        }
        [HttpPost]
        [Route("PostProduct")]
        public IActionResult Add([FromBody] Product product)
        {
            return Ok(Product.Add(product));
        }
        [HttpGet]
        [Route("GetProduct/{id}")]
        public IActionResult GetById(int id)
        {
            return Ok(Product.GetById(id));
        }
        [HttpDelete]
        [Route("DeleteProduct/{id}")]
        public IActionResult DeleteById(int id)
        {
            var i = Product.GetById(id);
            return Ok(Product.Delete(i));
        }
    }
}
