using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Resolver;

namespace Biblioteka.Controllers
{
    public class BibliotekaHomeController : ApiController
    {
        // GET: api/BibliotekaHome
        public IEnumerable<string> Get()
        {
            return DataServiceResolver.Get().GetListOfCategoriesServices();
        }

        // GET: api/BibliotekaHome/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/BibliotekaHome
        public void Post([FromBody]string value)
        {

        }

        // PUT: api/BibliotekaHome/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/BibliotekaHome/5
        public void Delete(int id)
        {
        }
    }
}
