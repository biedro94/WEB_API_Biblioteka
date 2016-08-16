using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class DMLResult
    {
        public int Ilosc_insert { get; set; }
        public int Ilosc_update { get; set; }
        public int Ilosc_delete { get; set; }

        public DMLResult()
        {
        }
        public DMLResult(int ile_insert, int ile_update, int ile_delete)
        {
            this.Ilosc_insert = ile_insert;
            this.Ilosc_update = ile_update;
            this.Ilosc_delete = ile_delete;
        }


        public override string ToString()
        {
            return "\nIlość wierszy zmienionych w operacji INSERT: " + Ilosc_insert.ToString() +
                   "\nIlość wierszy zmienionych w operacji UPDATE: " + Ilosc_update.ToString() +
                   "\nIlość wierszy zmienionych w operacji DELETE: " + Ilosc_delete.ToString();
        }
    }
}
