using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Pharm_Easy_Models.Models
{
    //public class homePage
    //{

    //}
    public class Categories
    {
        [Key]
        public int Cat_Id { get; set; }
        [Required(ErrorMessage = "Title is required")]
        public string  Cat_Name{ get; set; }
        public string Cat_Images { get; set; }
      public ICollection<Product>  products { get; set; }

    }
    public class Product
    {
        [Key]
        public int Pr_Id { get; set; }
        [Required(ErrorMessage = "Title is required")]
        public string Pr_Name { get; set; }
        public string Pr_Discription { get; set; }
        public int Pr_Price { get; set; }
       public string Pr_Image { get; set; }
        public int Cat_Id { get; set; }
        //[foreignkey("categories")]
        //public categories categories { get; set; }
    }
    public class Offers
    {
        [Key]
        public int Off_Id { get; set; }
        [Required(ErrorMessage = "Id is required")]
        public string Off_Discription { get; set; }
        public string Off_Code { get; set; }



    }
    public class hArticle
    {
        [Key]
        public int H_Id { get; set; }
        [Required(ErrorMessage = "Title is required")]
        public string H_Discription { get; set; }
        public string H_Heading { get; set; }

       
    }
    public class CArticle
    {
        [Key]
        public int A_Id { get; set; }
        [Required(ErrorMessage = "Title is required")]
        public string C_Name { get; set; }
        public DateTime A_Date { get; set; }
        public string A_Discription { get; set; }
        
    }
    public class Cart
    {
        [Key]
        public int C_Id { get; set; }

        public string o_Details { get; set; }

        public int Pr_Id { get; set; }
       public int product_quantity { get; set; }
        public virtual Offers Off_Id { get; set; }

        //public virtual Order Order { get; set; }
    }
    public class Order
    {
        [Key]
        public int o_Id { get; set; }
        public string o_Details { get; set; }

        public int Product_Id { get; set; }
        [Required(ErrorMessage = "Title is required")]
        public int o_quantity { get; set; }
      
        [Required(ErrorMessage = "Title is required")]
        [ForeignKey("Off_Id")]
        public int offer_Id { get; set; }
    }

}
