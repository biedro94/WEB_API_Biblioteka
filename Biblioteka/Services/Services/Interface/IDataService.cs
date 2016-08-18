using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Service.Services.Interface
{
    public interface IDataService
{

        List<string> GetListOfCategoriesServices();

        List<Pozycja> GetListPositionsForCategoriesServices(string categoryName);

        Pozycja GetDetailsAboutPositionServices(int idPozycji);

        List<Pozycja> SearchPositionsByTitleServices(string text);

    }
}
