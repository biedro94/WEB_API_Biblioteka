using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Repositories;
using Models;
using System.Net;
using System.Net.Http;
using System.Web;

namespace Services
{
    public class DataServices 
    {
        public static List<string> GetListOfCategoriesServices()
        {
            return Repository.GetListOfCategories();
        }

    }
}
