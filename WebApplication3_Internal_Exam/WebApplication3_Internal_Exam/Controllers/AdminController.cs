using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using WebApplication3_Internal_Exam.Models;
using WebApplication3_Internal_Exam.Services;
// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WebApplication3_Internal_Exam.Controllers
{
   
    [Route("api/Admin")]
    [ApiController]
    public class AdminController : ControllerBase
    {
       public IAdminService admin { get; set; }
        public CsharpExamContext context { get; set; }
        private readonly IConfiguration _configuration;
        public AdminController(IAdminService  admin, CsharpExamContext context, IConfiguration _configuration)
        {
            this.admin = admin;
            this.context = context;
            this._configuration = _configuration;
        }
        [HttpGet]
        [Route("GetAdmin")]
        public IActionResult Get()
        {
            return Ok(admin.Get());
        }
        [HttpPost]
        [Route("AddAdmin")]
        public IActionResult Add([FromBody] LoginModel LoginModel)
        {
            return Ok(admin.Add(LoginModel));
        }
        [HttpPost]
        [Route("PostAdmin")]
        public IActionResult Post([FromBody] LoginModel LoginModel)
        {
            var model = context.LoginModels.Where(x => x.Username == LoginModel.Username);
            var modelPass = context.LoginModels.Where(p => p.Password == LoginModel.Password).Single();

            var claims = new List<Claim>
             {
                new Claim(ClaimTypes.Name, LoginModel.Username),
                new Claim(ClaimTypes.Role, "Manager")
             };

            if (model !=null && LoginModel.Password == modelPass.Password)
            {

                var Key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_configuration["JWT:Secret"]));
                var token = new JwtSecurityToken(
                    issuer: _configuration["JWT:ValidIssuer"],
                    audience: _configuration["JWT:ValidAudience"],
                     claims: claims,
                    expires: DateTime.Now.AddHours(3),
                    signingCredentials: new SigningCredentials(Key, SecurityAlgorithms.HmacSha256));

                return Ok(new
                {
                    token = new JwtSecurityTokenHandler().WriteToken(token),
                    expiration = token.ValidTo
                });
            }
            return Unauthorized("invalid");
            return Ok(admin.Add(LoginModel));
        }

    }
}
