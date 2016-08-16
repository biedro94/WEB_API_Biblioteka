using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using Models.Database;
using Models.Result;

namespace Services.Interfaces
{
    public interface IPosition
    {
        Result<List<Pozycja>> Poz { get; }
        Result<List<Pozycja>> GetPositionForCategory(string nazwaKategorii);
        Result<List<Pozycja>> GetDetailsForCategory(int idPoz);
        Result<bool> GetAvailableForPosition(int idPoz);
    }
}
