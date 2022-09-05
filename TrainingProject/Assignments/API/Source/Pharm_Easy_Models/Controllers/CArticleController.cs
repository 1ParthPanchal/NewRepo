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
    [Route("api/CArticle")]
    [ApiController]
    public class CArticleController : ControllerBase
    {
        public ICArticleService CArticle;
        public CArticleController(ICArticleService CArticle)
        {
            this.CArticle = CArticle;
        }

        
        [HttpGet]
        [Route("GetCArticle")]
        public IActionResult Get()
        {
            return Ok(CArticle.Get());
        }
        [HttpPost]
        [Route("PostCArticle")]
        public IActionResult Add([FromBody]CArticle cArticle)
        {
            return Ok(CArticle.Add(cArticle));
        }
        [HttpGet]
        [Route("GetCArticle/{id}")]
        public IActionResult GetById(int id)
        {
            return Ok(CArticle.GetById(id));
        }
        [HttpDelete]
        [Route("DeleteCArticle/{id}")]
        public IActionResult DeleteById(int id)
        {
            var i = CArticle.GetById(id);
            return Ok(CArticle.Delete(i));
        }
    }
}
