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
    [Route("api/Company")]
    [ApiController]
    public class CompanyDetailsController : ControllerBase
    {
        public ICompanyDetailsService Company { get; set; }
        public CompanyDetailsController(ICompanyDetailsService Company)
        {
            this.Company = Company;
        }
        // GET: api/<CompanyDetailsController>
        [HttpGet]
        [Route("GetCompany")]
        public IActionResult Get()
        {
            return Ok(Company.Get());
        }

        // GET api/<CompanyDetailsController>/5
        [HttpGet("GetCompany/{id}")]
        public IActionResult GetById(int id)
        {
            return Ok(Company.GetById(id));
        }

        // POST api/<CompanyDetailsController>
        [HttpPost]
        [Route("PostCompany")]
        public IActionResult Add([FromBody] CompanyDetails companyDetails)
        {
            return Ok(Company.Add(companyDetails));
        }

        // PUT api/<CompanyDetailsController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<CompanyDetailsController>/5
        [HttpDelete("DeleteCompany/{id}")]
        public IActionResult DeleteById(int id)
        {
            var i = Company.GetById(id);
            return Ok(Company.Delete(i));
        }
    }
}
