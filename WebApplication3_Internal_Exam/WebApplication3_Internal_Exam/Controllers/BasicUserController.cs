using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication3_Internal_Exam.Models;
using Microsoft.Extensions.Configuration;
using WebApplication3_Internal_Exam.Services;
using System.Security.Claims;
using Microsoft.IdentityModel.Tokens;
using System.Text;
using System.IdentityModel.Tokens.Jwt;
// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WebApplication3_Internal_Exam.Controllers
{
    [Route("api/User")]
    [ApiController]
    public class BasicUserController : ControllerBase
    {
        public IUserService user { get; set; }
        public CsharpExamContext context { get; set; }
        private readonly IConfiguration _configuration; 

        public BasicUserController(IUserService user, CsharpExamContext context, IConfiguration _configuration)
        {
            this.user = user;
            this.context = context;
            this._configuration = _configuration;
        }
        [HttpGet]
        [Route("GetUser")]
        public IActionResult Get()
        {
            return Ok(user.Get());
        }
        [HttpPost]
        [Route("AddUser")]
        public IActionResult Add([FromBody] BasicUser basicUser )
        {
            return Ok(user.Add(basicUser));
        }
        [HttpPost]
        [Route("PostUser")]
        public IActionResult Post([FromBody] BasicUser basicUser)
        {
            var model = context.BasicUsers.Where(x => x.Username == basicUser.Username);
            var modelPass = context.BasicUsers.Where(p => p.Password == basicUser.Password).Single();

            var claims = new List<Claim>
            {
                new Claim(ClaimTypes.Name , basicUser.Username),
                new Claim(ClaimTypes.Role,  "User")
            };
            if(model !=null && basicUser.Password == modelPass.Password)
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
                }
                    );

            }
            return Unauthorized();
        }
    }

}
