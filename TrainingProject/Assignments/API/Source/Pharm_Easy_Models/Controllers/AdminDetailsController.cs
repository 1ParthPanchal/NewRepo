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
    [Route("api/Admin")]
    [ApiController]
    public class AdminDetailsController : ControllerBase
    {
        public IAdminDetailsService Admin { get; set; }

        public AdminDetailsController(IAdminDetailsService Admin)
        {
            this.Admin = Admin;
        }
        // GET: api/<AdminDetailsController>
        [HttpGet]
        [Route("GetAdmin")]
        public IActionResult Get()
        {
            return Ok(Admin.Get());
        }

        // GET api/<AdminDetailsController>/5
        [HttpGet]
        [Route("GetAdmin/{id}")]
        public IActionResult GetById(int id)
        {
            return Ok(Admin.GetById(id));
        }

        // POST api/<AdminDetailsController>
        [HttpPost]
        [Route("PostAdmin")]
        public IActionResult Add([FromBody] AdminDetails adminDetails )
        {
            return Ok(Admin.Add(adminDetails));
        }

        // PUT api/<AdminDetailsController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<AdminDetailsController>/5
        [HttpDelete]
        [Route("DeleteAdmin/{id}")]
        public IActionResult Delete(int id)
        {
            var x = Admin.GetById(id);
            return Ok(Admin.Delete(x));
        }
    }
}
