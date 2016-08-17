$(document).ready(function () {
    ko.applyBindings(new CategoryNamesViewModel());
});

function CategoryNamesViewModel() {
    var self = this;
    var baseUri = "http://localhost:53566/api/BibliotekaHome";
    var getPozycjeUri = "http://localhost:53566/api/HomePozycje";
    self.category = ko.observableArray();
    self.pozycje = ko.observableArray();
    
    $.getJSON(baseUri, self.category);
    
    self.Save = function (){        
        document.getElementById("butt").addEventListener('click', fn);
        function fn() {
            var jsonData = ko.toJSON(this.innerHTML);
            $.post(baseUri, { value: jsonData }, function () { alert("UDALO SIE"); });
            //alert(this.innerHTML);
        }
        
    }
    
    function Pozycja(idPoz, tytul, autor, opis, jezyk, wydawca, rokWydania, idKat) {
        var self = this;

        // observable are update elements upon changes, also update on element data changes [two way binding]
        self.IdPoz = ko.observable(idPoz);
        self.Tytul = ko.observable(tytul);
        self.Autor = ko.observable(autor);
        self.Opis = ko.observable(opis);
        self.Jezyk = ko.observable(jezyk);
        self.Wydawca = ko.observable(wydawca);
        self.RokWydania = ko.observable(rokWydania);
        self.IdKat = ko.observable(idKat);

    };
    $.getJSON(getPozycjeUri, function (data) {
        $.each(data, function (key, value) {
            self.pozycje.push(new Pozycja(value.Id_poz, value.Tytul, value.Autor, value.Opis, value.Jezyk, value.Wydawca, value.Rok_wydania, value.Id_kategorii));
        });
    });
}

   

    /*self.SendCategoryName = function(){
        var jsonData = ko.toJSON(self);
        ko.utils.postJson(baseUri, {value: jsonData});
    };*/

