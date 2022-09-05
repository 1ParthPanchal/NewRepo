using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Pharm_Easy_Models;
using Pharm_Easy_Models.Models;
// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Pharm_Easy_Models.Controllers
{
    [Route("api/Categories")]
    [ApiController]
    public class CategoriesController : ControllerBase
    {
       
       public ICategoriesService Categories { get; set; }
        public CategoriesController(ICategoriesService Categories)
        {
            this.Categories = Categories;
        }
  
        [HttpGet]
        [Route("GetCat")]
        public IActionResult Get()
        {
            return Ok(Categories.Get());
        }
        [HttpPost]
        [Route("PostCat")]
        public IActionResult Add([FromBody]Categories categories)
        {
            return Ok(Categories.Add(categories));  
        }
        [HttpGet]
        [Route("GetCat/{id}")]
        public IActionResult GetById(int id)
        {
            return Ok(Categories.GetById(id));
        }
        [HttpDelete]
        [Route("DeleteCat/{id}")]
        public IActionResult DeleteById(int id)
        {
            var i = Categories.GetById(id);
            return Ok(Categories.Delete(i));
        }
        //[HttpPut]
        //[Route("UpdateCompany/{id}")]
        //public IActionResult Update(int id,[FromBody] Categories categories, Categories categories1)
        //{
        //    var olddata = Categories.GetByID(id);
        //    Categories.Update(olddata,categories);
        //    return "Data Updated Successfully..";
        //}
        //public string Put(int id, [FromBody] Categories company)
        //{
        //    var oldData = Categories.GetByID(id);
        //    Categories.Update(oldData, company);
        //    return "Data Updated Successfully..";
        //}
    }
}
