
using Microsoft.EntityFrameworkCore;

using Pharm_Easy_Models.Models;

namespace Pharm_Easy_Models
{

    public class Context:DbContext
    {
        //public DbSet<homePage> homePages { get; set; }
        

        public DbSet<Categories>Categories{ get; set; }
        public DbSet<Product>products{ get; set; }
        public DbSet<Offers>offers{ get; set; }
        public DbSet<hArticle>hArticles{ get; set; }
        public DbSet<CArticle>cArticles{ get; set; }
      public DbSet<Cart>carts { get; set; }
        public DbSet<Order>orders { get; set; }

        //public DbSet<Seller>     Sellers { get; set; }
        public DbSet<login>logins { get; set; }
        public DbSet<DisplayDetails>displayDetails { get; set; }
        public DbSet<SellerCatagories>scatagories { get; set; }
        public DbSet<SProduct>sproducts { get; set; }
        public DbSet<CompanyDetails> CompanyDetails { get; set; }
        public DbSet<bankdetails> bankdetails { get; set; }
        public DbSet<AdminDetails> adminDetails { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                //#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Server=43.204.134.14; Database=pharmeasy-2443-parth; uid=pharmeasy-2443-parth; pwd=LnT6OfNWARgDt4F; MultipleActiveResultSets=true");

            }
        }
    }




    //public class homePage
    //{

    //}
    //public class Categories
    //{
    //    [Key]
    //    public int Cat_Id { get; set; }
    //    [Required(ErrorMessage = "Title is required")]
    //    public string Cat_Name { get; set; }
    //}
    //public class Product
    //{
    //    [Key]
    //    public int Pr_Id { get; set; }
    //    [Required(ErrorMessage = "Title is required")]
    //    public string Pr_Name { get; set; }
    //    public string Pr_Discription { get; set; }
    //    public int Pr_Price { get; set; }
    //    public virtual Categories Cat_Id { get; set; }
    //}
    //public class Offers
    //{
    //    [Key]
    //    public int Off_Id { get; set; }
    //    [Required(ErrorMessage = "Title is required")]
    //    public string Off_Discription { get; set; }
    //    public string Off_Code { get; set; }


    //}
    //public class hArticle
    //{
    //    [Key]
    //    public int H_Id { get; set; }
    //    [Required(ErrorMessage = "Title is required")]
    //    public string H_Discription { get; set; }
    //}
    //public class CArticle
    //{
    //    [Key]
    //    public int A_Id { get; set; }
    //    [Required(ErrorMessage = "Title is required")]
    //    public string C_Name { get; set; }
    //    public DateTime A_Date { get; set; }
    //    public string A_Discription { get; set; }
    //}
    //public class Cart
    //{
    //    [Key]
    //    public int C_Id { get; set; }


    //    public virtual Offers Off_Id { get; set; }
    //    [Required(ErrorMessage = "Title is required")]

    //    public virtual Order o_quantity { get; set; }
    //}
    //public class Order
    //{
    //    [Key]
    //    public int o_Id { get; set; }
    //    public string o_Details { get; set; }

    //    public virtual Product Pr_Id { get; set; }
    //    [Required(ErrorMessage = "Title is required")]
    //    public int o_quantity { get; set; }
    //    [Required(ErrorMessage = "Title is required")]

    //    public virtual Offers Off_Id { get; set; }
    //}
    //public class Login

    //{
    //    [Key]
    //    public int MobileNumber { get; set; }

    //}

    //public class payment
    //{
    //    [key]
    //    public int p_id { get; set; }
    //    public string p_method { get; set; }

    //}
    ////public class Seller
    ////{
    ////}
    //public class login
    //{
    //    [Key]
    //    public int Mobile_Number { get; set; }
    //    public string Create_Password { get; set; }
    //    public string Conform_Password { get; set; }

    //    public string GST_Number { get; set; }
    //}
    //public class DisplayDetails
    //{
    //    [Key]
    //    public string Full_Name { get; set; }
    //    public string Display_Name { get; set; }
    //    public int Pincode { get; set; }
    //}
    //public class SCatagories
    //{
    //    [Key]
    //    public int Cat_Id { get; set; }
    //    [Required(ErrorMessage = "Title is required")]
    //    public string Cat_Name { get; set; }
    //}
    //public class SProduct
    //{
    //    [Key]
    //    public int Pr_Id { get; set; }
    //    [Required(ErrorMessage = "Title is required")]
    //    public string Pr_Name { get; set; }
    //    public string Pr_Discription { get; set; }
    //    public int Pr_Price { get; set; }
    //    public virtual Categories Cat_Id { get; set; }
    //    public string Brand_Name { get; set; }
    //}


}
