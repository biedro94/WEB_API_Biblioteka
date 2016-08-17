using Models;
using Resolver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Biblioteka.Controllers
{
    public class HomePozycjeController : ApiController
    {
        // GET: api/HomePozycje
        public IEnumerable<Pozycja> Get()
        {
            return DataServiceResolver.Get().GetListPositionsForCategoriesServices();
        }

        // GET: api/HomePozycje/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/HomePozycje
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/HomePozycje/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/HomePozycje/5
        public void Delete(int id)
        {
        }
    }
}
