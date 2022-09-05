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
    [Route("api/Bank")]
    [ApiController]
    public class BankDetailsController : ControllerBase
    {
        public IbankdetailsService bank { get; set; }

        public BankDetailsController(IbankdetailsService bank)
        {
            this.bank = bank;
        }
        // GET: api/<BankDetailsController>
        [HttpGet]
        [Route("GetBank")]
        public IActionResult Get()
        {
            return Ok(bank.Get());
        }

        // GET api/<BankDetailsController>/5
        [HttpGet]
        [Route("GetBank/{id}")]
        public IActionResult GetById(int id)
        {
            return Ok(bank.GetById(id));
        }

        // POST api/<BankDetailsController>
        [HttpPost]
        [Route("PostBank")]
        public IActionResult Add([FromBody] bankdetails bankdetails)
        {
            return Ok(bank.Add(bankdetails));
        }

        // PUT api/<BankDetailsController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<BankDetailsController>/5
        [HttpDelete]
        [Route("DeleteBank/{id}")]
        public IActionResult Delete(int id)
        {
            var y = bank.GetById(id);
            return Ok(bank.Delete(y));
        }
    }
}
