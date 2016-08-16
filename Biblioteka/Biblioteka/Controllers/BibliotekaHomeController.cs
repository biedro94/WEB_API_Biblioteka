using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Services;
using Models;

namespace Biblioteka.Controllers
{
    public class BibliotekaHomeController : ApiController
    {
        // GET: api/BibliotekaHome
        public List<string> Get()
        {
            return DataServices.GetListOfCategoriesServices();
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
