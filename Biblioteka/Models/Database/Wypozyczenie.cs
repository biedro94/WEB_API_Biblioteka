using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    class Wypozyczenie
    {
        public int Id_poz { get; set; }
        public int Id_czyt { get; set; }
        public int Id_prac { get; set; }
        public DateTime data_wypozyczenia { get; set; }
        public DateTime? data_zwrotu { get; set; }

    }
}
