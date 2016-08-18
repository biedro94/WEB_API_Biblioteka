using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Repositories;
using Repositories.Interface;
using Models;
using System.Net;
using System.Net.Http;
using System.Web;
using Service.Services.Interface;


namespace Service.Services.Implementation
{
    public class DataServices : IDataService
    {
        private IRepository repo;

        public DataServices(IRepository e)
        {
            this.repo = e;
        }
        public List<string> GetListOfCategoriesServices()
        {
            return repo.GetListOfCategories();
        }
        public List<Pozycja> GetListPositionsForCategoriesServices(string categoryName)
        {
            return repo.GetListPositionsForCategories(categoryName);
        }
        public List<Pozycja> SearchPositionsByTitleServices(string text)
        {
            return repo.SearchPositionsByTitle(text);
        }
        public Pozycja GetDetailsAboutPositionServices(int idPozycji)
        {
            return repo.GetDetailsPosition(idPozycji);
        }

    }
}
