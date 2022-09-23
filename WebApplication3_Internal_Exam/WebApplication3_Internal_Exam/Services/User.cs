using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication3_Internal_Exam.Models;
namespace WebApplication3_Internal_Exam.Services
{
    public interface IUserService:IRepository<BasicUser>
    {
    }
    public class UserService:Repository<BasicUser>,IUserService
    {
        public UserService(CsharpExamContext context):base(context)
        { }
    }
}
