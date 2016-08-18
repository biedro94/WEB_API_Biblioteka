using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Resolver;
using Models;

namespace Biblioteka.Controllers
{
    public class BibliotekaHomeController : ApiController
    {
        // GET: api/BibliotekaHome
        public List<string> Get()
        {
            return DataServiceResolver.Get().GetListOfCategoriesServices();
        }

        // GET: api/BibliotekaHome/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/BibliotekaHome
        [HttpGet]
        [Route("api/category/{value}/get")]
        public List<Pozycja> GetSmthBy([FromUri]string value)
        {
            return DataServiceResolver.Get().GetListPositionsForCategoriesServices(value);
        }

        [HttpGet]
        [Route("api/position/{value}/get")]
        public Pozycja GetIdDetails([FromUri]int idPozycji)
        {
            return DataServiceResolver.Get().GetDetailsAboutPositionServices(idPozycji);
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
