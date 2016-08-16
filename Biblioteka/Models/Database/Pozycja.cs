using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
   public  class Pozycja
    {
        public int Id_poz { get; set; }
        public string Tytul { get; set; }
        public string Autor { get; set; }
        public string Opis { get; set; }
        public string Jezyk { get; set; }
        public string Wydawca { get; set; }
        public int Rok_wydania { get; set; }
        public int Id_kategorii { get; set; }
    }
}
