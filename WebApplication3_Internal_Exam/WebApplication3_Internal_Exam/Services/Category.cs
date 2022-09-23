using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication3_Internal_Exam.Models;
namespace WebApplication3_Internal_Exam.Services
{
    public interface ICategoryService:IRepository<Category>
    {
    }
    public class CategoryService:Repository<Category>,ICategoryService
    {
        public CategoryService(CsharpExamContext context):base(context)
        { }
    }
}
