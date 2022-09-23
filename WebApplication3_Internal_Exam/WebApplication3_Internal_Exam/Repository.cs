using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApplication3_Internal_Exam.Models;
namespace WebApplication3_Internal_Exam
{
    public interface IRepository<TEntity> where TEntity:class
    {
        List<TEntity> Get();
        TEntity Add(TEntity entity);
        TEntity Update(TEntity entity, TEntity entity1);
        TEntity GetById(int id);
        TEntity Delete(TEntity entity);
    }
    public class Repository<T>:IRepository<T> where T:class
    {
        public CsharpExamContext context { get; set; }
        public Repository(CsharpExamContext context)
        {
            this.context = context;
        }
        public List<T> Get()
        {
            return context.Set<T>().ToList();
        }
        public T Add(T entity)
        {
            context.Add(entity);
            try { context.SaveChanges(); }catch(Exception e) { };
            return entity;
        }
        public T Update(T entity,T entity1)
        {
            context.Entry<T>(entity).CurrentValues.SetValues(entity1);
                try { context.SaveChanges(); }catch(Exception e) { }
            return entity1;
        }
        public T GetById(int id)
        {
            return context.Set<T>().Find(id);
        }
        public T Delete(T entity)
        {
            context.Remove(entity);
            try { context.SaveChanges(); } catch (Exception e) { }
            return entity;
        }
    }
}
