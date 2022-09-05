using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Pharm_Easy_Models.Models;
// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Pharm_Easy_Models.Controllers
{
    [Route("api/hArticle")]
    [ApiController]
    public class hArticleController : ControllerBase
    {
        public IhArticleService hArticle;
        public hArticleController(IhArticleService hArticle)
        {
            this.hArticle = hArticle;
        }
        [HttpGet]
        [Route("GethArticle")]
        public IActionResult Get()
        {
            return Ok(hArticle.Get());
        }
        [HttpPost]
        [Route("PosthArticle")]
        public IActionResult Add([FromBody] hArticle harticle)
        {
            return Ok(hArticle.Add(harticle));
        }
        [HttpGet]
        [Route("GethArticle/{id}")]
        public IActionResult GetById(int id)
        {
            return Ok(hArticle.GetById(id));
        }
        [HttpDelete]
        [Route("DeletehArticle/{id}")]
        public IActionResult DeleteById(int id)
        {
            var i = hArticle.GetById(id);
            return Ok(hArticle.Delete(i));
        }
    }
}
