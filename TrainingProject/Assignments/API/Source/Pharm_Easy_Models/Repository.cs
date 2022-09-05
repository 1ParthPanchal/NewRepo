using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using Pharm_Easy_Models.Models;
namespace Pharm_Easy_Models
{
    public interface IRepository<TEntity> where TEntity : class
    {
        List<TEntity> Get();
        List<Order> GetOrder();
        TEntity GetById(int id);
        TEntity Add(TEntity entity);
        TEntity Delete(TEntity entity);

        TEntity Update(TEntity entity);
        //Task<List<TEntity>> GetCategories();
        //Task<List<TEntity>> GetProducts();
        //Task<List<TEntity>> GetOffers();
        //Task<List<TEntity>> GetHarticle();
        //Task<List<TEntity>> GetCarticle();
        ////Task<List<TEntity>> GetByID(int id);
        //void DeleteCategory(int Cat_Id);
        ////void  UpdateCategory(Categories categories, Categories categories1);
        //void insertcategories(Categories categories);
        //void insertproducts(Product product);
        //void insertoffers(Offers offers);
        //void insertHarticle(hArticle hArticle);
        //void insertCarticle(CArticle cArticle);
      
        // void insertproduct(Product product);
    }
    public class Repository<T> : IRepository<T> where T : class
    {
        public Context context { get; set; }
        public Repository(Context context)
        {
            this.context = context;
        }
        public List<T> Get()
        {
            return context.Set<T>().ToList();
        }
        public List<Order> GetOrder()
        {
            return context.orders.FromSqlRaw<Order>("OrderTemp").ToList();
        }
        public T Add(T entity)
        {
            context.Add(entity);
            try { context.SaveChanges(); }
            catch(Exception e) { }
            
            return entity;
        }
        public T GetById(int id)
        {
            return context.Set<T>().Find(id) ;
        }
        public T Update(T entity , T entity1)
        {
            context.Entry<T>(entity).CurrentValues.SetValues(entity1);
            context.SaveChanges();
            return entity;
        }
        public T Delete(T entity)
        {
            context.Remove(entity);
            context.SaveChanges();
            return entity;
        }

        public T Update(T entity)
        {
            throw new NotImplementedException();
        }

        //  public void Dispose()
        //  {
        //      throw new NotImplementedException();
        //  }

        //  //Get Methods
        //  public async Task<List<T>> GetCategories()
        //  {
        //      return await context.Set<T>().ToListAsync();
        //  }

        //  public async Task<List<T>> GetProducts()
        //  {
        //      return await context.Set<T>().ToListAsync();
        //  }
        //  public async Task<List<T>> GetOffers()
        //  {
        //      return await context.Set<T>().ToListAsync();
        //  }
        //  public async Task<List<T>> GetHarticle()
        //  {
        //      return await context.Set<T>().ToListAsync();
        //  }
        //  public async Task<List<T>> GetCarticle()
        //  {
        //      return await context.Set<T>().ToListAsync();
        //  }

        //  //public  T GetByID(int id)
        //  //{
        //  //    return context.Set<T>().Find(id);
        //  //}
        //  //Post Methods

        //  public void insertcategories(Categories categories)
        //  {
        //      try
        //      {
        //          Categories categories1 = new Categories();
        //          categories1.Cat_Name = categories.Cat_Name;
        //          context.Categories.Add(categories1);
        //          context.SaveChanges();
        //      }
        //      catch (Exception e){}
        //   }
        //  public void insertproducts(Product product)
        //  {
        //      try
        //      {
        //          Product product1 = new Product();
        //          product1.Pr_Name = product.Pr_Name;
        //          product1.Pr_Discription = product.Pr_Discription;
        //          product1.Pr_Price = product.Pr_Price;
        //          product1.Pr_Image = product.Pr_Image;
        //          product1.Cat_Id = product.Cat_Id;
        //          context.products.Add(product1);
        //          context.SaveChanges();
        //      }
        //      catch (Exception e) { }
        //  }
        //  public void insertoffers(Offers offers)
        //  {
        //      try
        //      {
        //          Offers offers1 = new Offers();
        //          offers1.Off_Discription = offers.Off_Discription;
        //          offers1.Off_Code = offers.Off_Code;
        //          context.offers.Add(offers1);
        //          context.SaveChanges();
        //      }
        //      catch (Exception e) { }
        //  }
        //  public void insertHarticle(hArticle hArticle)
        //  {
        //      try
        //      {
        //          hArticle hArticle1 = new hArticle();
        //          hArticle1.H_Heading = hArticle.H_Heading;
        //          hArticle1.H_Discription = hArticle.H_Discription;
        //          context.hArticles.Add(hArticle1);
        //          context.SaveChanges();
        //      }
        //      catch(Exception e) { }
        //  }
        //  public void insertCarticle(CArticle cArticle)
        //  {
        //      try
        //      {
        //          CArticle cArticle1 = new CArticle();
        //          cArticle1.C_Name = cArticle.C_Name;
        //          cArticle1.A_Date = cArticle.A_Date;
        //          cArticle1.A_Discription = cArticle.A_Discription;
        //          context.cArticles.Add(cArticle1);
        //          context.SaveChanges();
        //      }
        //      catch (Exception e) { }
        //  }
        //  //public void insertHarticle(hArticle hArticle)
        //  // {
        //  //     throw new NotImplementedException();
        //  // }

        //  //Delete Method
        //public void DeleteCategory(int Cat_Id)
        //  {
        //      Categories categories = context.Categories.Find(Cat_Id);
        //      context.Categories.Remove(categories);
        //  }



        // // Update Method
        //  //public void UpdateCategory(Categories categories, Categories categories1)
        //  //{
        //  //    //try
        //  //    //{
        //  //    //    context.Entry<Categories>(categories).CurrentValues.SetValues(categories1);


        //  //    //    context.SaveChanges();

        //  //    //}
        //  //    //catch (Exception e) { }

        //  //    //context.Entry(categories).State = EntityState.Modified;
        //  //}
        //  //public T Update(T entity, T entity1)
        //  //{
        //  //    context.Entry<T>(entity).CurrentValues.SetValues(entity1);
        //  //    context.SaveChanges();
        //  //    return entity;
        //  //}
    }
}
