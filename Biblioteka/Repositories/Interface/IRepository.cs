using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;

namespace Repositories.Interface
{
    public interface IRepository
    {

        List<string> GetListOfCategories();

        List<Pozycja> GetListPositionsForCategories(string nazwaKategorii);

        bool GetAvailabilityForPosition(int idPozycji);

        Pozycja GetDetailsPosition(int idPozycji);

        DMLResult ReturnBook(int idPozycji, int idCzytelnika);

        DMLResult OrderBook(int idPozycji, int idCzytelnika);

        DMLResult AddReader(Czytelnik czytelnik);
    }
}
