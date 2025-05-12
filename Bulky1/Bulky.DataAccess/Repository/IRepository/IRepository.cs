using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Bulky.DataAccess.Repository.IRepository
{
    public interface IRepository<T> where T : class//Internal is equivelant I think to access modifier such as public
    {
        //T - Category
        IEnumerable<T> GetAll();//Get all
        T Get(Expression<Func<T,bool>> filter);//Get single

        void Add(T entity);//Add
        void Remove(T entity);//Remove
        void RemoveRange(IEnumerable<T> entity);//Remove range

        //We don't have update and save methods because they are complicated, and it is not preferable
        //to have it inide The Generic Repository
    }

}
