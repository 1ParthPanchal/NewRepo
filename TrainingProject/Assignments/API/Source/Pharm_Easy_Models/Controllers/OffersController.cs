using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Pharm_Easy_Models.Models;
// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Pharm_Easy_Models.Controllers
{
    [Route("api/Offers")]
    [ApiController]
    public class OffersController : ControllerBase
    {
        public IOffersService Offers;
        public OffersController(IOffersService Offers)
        {
            this.Offers = Offers;
        }
        [HttpGet]
        [Route("GetOffers")]
        public IActionResult Get()
        {
            return Ok(Offers.Get());
        }
        [HttpPost]
        [Route("PostOffers")]
        public IActionResult Add([FromBody] Offers offers)
        {
            return Ok(Offers.Add(offers));
        }
        [HttpGet]
        [Route("GetOffers/{id}")]
        public IActionResult GetById(int id)
        {
            return Ok(Offers.GetById(id));
        }
        [HttpDelete]
        [Route("DeleteOffers/{id}")]
        public IActionResult DeleteById(int id)
        {
            var i = Offers.GetById(id);
            return Ok(Offers.Delete(i));
        }
    }
}
