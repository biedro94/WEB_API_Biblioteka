using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models;
using Models.Result;

namespace Services.Interfaces
{
    public class Position : IPosition
    {
        private readonly IPosition Poz;
        public Result<List<Pozycja>> GetPositionForCategory(string nazwaKategorii)
        {
            
        }

        public Result<List<Pozycja>> GetDetailsForPosition(int idPoz)
        {
            Result<List<Pozycja>> res;

        }

        public Result<bool> GetAvailableForPosition(int idPoz)
        {
            

        }
    }
}
