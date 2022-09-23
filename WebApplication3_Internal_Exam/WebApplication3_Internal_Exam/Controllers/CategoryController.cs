using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication3_Internal_Exam.Models;
using WebApplication3_Internal_Exam.Services;
using Microsoft.Extensions.Configuration;
using Microsoft.AspNetCore.Authorization;
// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WebApplication3_Internal_Exam.Controllers
{
    [Route("Category")]
    [ApiController]
    public class CategoryController : ControllerBase
    {
        public ICategoryService cat { get; set; }
        public CsharpExamContext context { get; set; }
        private readonly IConfiguration _configuration;

        public CategoryController(ICategoryService cat, CsharpExamContext context, IConfiguration _configuration)
        {
            this.cat = cat;
            this.context = context;
            this._configuration = _configuration;
        }
        //[Authorize(Roles = "User")]
        [HttpGet]
        [Route("GetCat")]
        public IActionResult Get()
        {
            return Ok(cat.Get());
        }
        [HttpGet]
        [Route("GetCat/{id}")]
        public IActionResult GetById(int id)
        {
            return Ok(cat.GetById(id));
        }
       // [Authorize(Roles = "User")]
        [HttpPost]
        [Route("PostCat")]
        public IActionResult Add([FromBody] Category Category)
        {
            return Ok(cat.Add(Category));
        }
        [Authorize(Roles = "Manager")]
        [HttpPost]
        [Route("Update/{id}")]
        public IActionResult Update(int id,[FromBody] Category Category)
        {
            var x = cat.GetById(id);
            cat.Update(x, Category);
            return Ok(Category);
        }
       // [Authorize(Roles = "Manager")]
        [HttpDelete]
        [Route("Delete/{id}")]
        public IActionResult Delete(int id)
        {
            var x = cat.GetById(id);
            cat.Delete(x);
            return Ok(x);
        }
    }

}
