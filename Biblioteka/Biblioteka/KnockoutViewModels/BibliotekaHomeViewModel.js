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
    
    self.Save = function (){        
        document.getElementById("butt").addEventListener('click', fn);
        function fn() {
            //var jsonData = ko.toJSON(this.innerHTML);
            $.post(baseUri, { value: this.innerHTML }, function () { alert("UDALO SIE"); });
            //alert(this.innerHTML);
        }
        
    }
    
    $.getJSON(getPozycjeUri, function (data) {
        var a = data.map(x => new Pozycja(x))
        self.pozycje(a);
    });
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

