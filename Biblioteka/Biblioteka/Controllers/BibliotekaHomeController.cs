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
        [HttpGet]
        public List<string> GetListOfCategories()
        {
            return DataServiceResolver.Get().GetListOfCategoriesServices();
        }

        /* Do usuniecia
        // GET: api/BibliotekaHome/5
        public string Get(int id)
        {
            return "value";
        }*/

        // POST: api/BibliotekaHome
        [HttpGet]
        [Route("api/category/{value}/get")]
        public List<Pozycja> GetPositionsForCategories([FromUri]string value)
        {
            return DataServiceResolver.Get().GetListPositionsForCategoriesServices(value);
        }

        [HttpGet]
        [Route("api/search/{value}/get")]
        public List<Pozycja> SearchForTitle([FromUri]string value)
        {
            return DataServiceResolver.Get().SearchPositionsByTitleServices(value);
	    }

        [HttpGet]
        [Route("api/position/{value}/get")]
        public Pozycja GetIdForPositionDetails([FromUri]int value)
        {
            return DataServiceResolver.Get().GetDetailsAboutPositionServices(value);
        }
        /* Do usuniecia 
        // PUT: api/BibliotekaHome/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/BibliotekaHome/5
        public void Delete(int id)
        {
        }*/
    }
}
