using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Service;
using Service.Services.Interface;
using Service.Services.Implementation;
using Repositories;

namespace Resolver
{
    public class DataServiceResolver
    {
        public static IDataService Get()
        {
            var repository = new Repository();
            return new DataServices(repository);
        }
    }
}
