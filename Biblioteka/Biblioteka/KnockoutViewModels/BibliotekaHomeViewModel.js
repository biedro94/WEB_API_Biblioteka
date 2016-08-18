$(document).ready(function () {
    ko.applyBindings(new CategoryNamesViewModel());
});

function CategoryNamesViewModel() {
    var self = this;
    var baseUri = "http://localhost:53566/api/BibliotekaHome";
    var getPozycjeUri = "http://localhost:53566/api/category/";
    self.category = ko.observableArray();
    self.defaultCategory = ko.observable(0);
    self.pozycje = ko.observableArray();

    $.getJSON(baseUri, self.category).then(fulfilled => {
        self.Save(self.category()[0]);
    }, rejected => {

    });

    self.Save = (text) => {
        var url = "api/category/" + text + "/get";
        $.getJSON(url, function (data) {
            var a = data.map(x => new Pozycja(x))
            self.pozycje(a);

        });
    };

    /*self.Save = (text) => {
        self.defaultCategory(text);
    };*/

    /*self.PozycjeReload = (text) => {
        //alert(self.defaultCategory());
        var url = "api/category/" + text + "/get";
        $.getJSON(url, function (data) {
            var a = data.map(x => new Pozycja(x))
            self.pozycje(a);
            
        });
    };*/
    
   /* self.test = ko.computed(function () {
        
        if (self.defaultCategory() == 0) {
            self.PozycjeReload(self.category()[0]);
            return 0;
        }
        else {
            self.PozycjeReload(self.defaultCategory());
            return 1;

        }
    });*/

  };


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

