//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Threading.Tasks;
//using Pharm_Easy_Models.Models;
//using Pharm_Easy_Models;
//using Microsoft.EntityFrameworkCore;

//namespace Pharm_Easy_Models
//{
//    public class Data
//    {
//        private  Context DbContext { get; set; }
//        public Data()
//        {
//            DbContext = new Context();
//        }
//            public async Task<List<Categories>> Get()
//        {
//            var cat = await (from c in DbContext.Categories
//                             select new Categories

//                             {
//                                 Cat_Id = c.Cat_Id,
//                                 Cat_Name = c.Cat_Name
//                             }).ToListAsync();
//            return cat;
//        }
//        public async Task<List<Product>> GetPro()
//        {
//            var Pro = await (from p in DbContext.products select new Product { Pr_Id = p.Pr_Id, Pr_Name = p.Pr_Name, Pr_Discription = p.Pr_Discription, Pr_Price = p.Pr_Price }).ToListAsync();
//            return Pro;
//        }
//            public async Task<Categories> Post(Categories cat)
//        {
//            DbContext.Add(cat);
//            try
//            {
//                await DbContext.SaveChangesAsync();
//            }
//            catch(Exception e)
//            {

//            }
            
//            return cat;
//        }
//    }
//}
