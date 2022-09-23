using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication3_Internal_Exam.Models;
namespace WebApplication3_Internal_Exam.Services
{
    public interface IAdminService:IRepository<LoginModel>
    {
    }
    public class AdminService:Repository<LoginModel>,IAdminService
    {
        public AdminService(CsharpExamContext context):base(context)
        { }
    }
}
