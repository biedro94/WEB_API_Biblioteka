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

    self.SendCategoryName = function () {
        var data = JSON.stringify(
            {
                first: self.category
            });
        $.post("api/BibliotekaHome", data);
    };






    $.getJSON(getPozycjeUri, function (data) {
        var a = data.map(x => new Pozycja(x))
        self.pozycje(a);
    });

    /*
    var obj = [
    { id: 1 },
    { id: 2 }
    ]

    var result = ko.mapping.fromJS(obj, {
        key: function (item) {
            return ko.utils.unwrapObservable(item.id);
        }
    });*/

    /*

    $.getJSON(getPozycjeUri, function (data) {
        pozycje = ko.mapping.fromJS(data, {
            key: function (item) {
                return new Pozycja(item);
            }
        });
        ko.mapping.fromJS(data, pozycje);
    });

    */
    }


/*
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
*/
function Pozycja(poz) {
    var self = this;

    // observable are update elements upon changes, also update on element data changes [two way binding]
    self.IdPoz = ko.observable(poz.Id_poz);
    self.Tytul = ko.observable(poz.Tytul);
    self.Autor = ko.observable(poz.Autor);
    self.Opis = ko.observable(poz.Opis);
    self.Jezyk = ko.observable(poz.Jezyk);
    self.Wydawca = ko.observable(poz.Wydawca);
    self.RokWydania = ko.observable(poz.Rok_wydania);
    self.IdKat = ko.observable(poz.Id_kategorii);

};

    /*self.SendCategoryName = function(){
        var jsonData = ko.toJSON(self);
        ko.utils.postJson(baseUri, {value: jsonData});
    };*/

