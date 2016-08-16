using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    class Pracownik
    {
        public int Id_prac { get; set; }
        public string Imie { get; set; }
        public string Nazwisko { get; set; }
        public string Miejscowosc { get; set; }
        public string Adres { get; set; }
        public decimal Pesel { get; set; }
        public string Telefon { get; set; }
    }
}
