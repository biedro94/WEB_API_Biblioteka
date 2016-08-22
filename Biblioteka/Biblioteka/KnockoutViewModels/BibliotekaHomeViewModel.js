$(document).ready(function () {
    ko.applyBindings(new CategoryVm());
});

const urls = {
    baseUri: "http://localhost:53566/api/BibliotekaHome"
}

class CategoryVm {
    constructor() {

        this.categories = ko.observableArray([]);
        this.pozycje = ko.observableArray([]);
        this.searchPattern = ko.observable();
        this.resultData = ko.observable();
        this.idPosition = ko.observable(10000);

        $.getJSON(urls.baseUri, this.categories).then(fulfilled => {
            this.save(this.categories()[0]);
        }, rejected => {

        });
    }
    save(text) {
        var url = "api/category/" + text + "/get";
        $.getJSON(url, (data) => {
            const a = data.map(x => {
                return {
                    IdPoz: ko.observable(x.Id_poz),
                    Tytul: ko.observable(x.Tytul),
                    Autor: ko.observable(x.Autor),
                    Opis: ko.observable(x.Opis),
                    Jezyk: ko.observable(x.Jezyk),
                    Wydawca: ko.observable(x.Wydawca),
                    RokWydania: ko.observable(x.Rok_wydania),
                    IdKat: ko.observable(x.Id_kategorii),
                }
            });
            this.pozycje(a);
        });
    };
    search() {
        /*wyszukiwanie jest prymitywne - jedynie na potrzeby prezentacji działania*/
        var url = "api/search/" + this.searchPattern() + "/get";
        $.getJSON(url, (data) => {
            const a = data.map(x => {
                return {
                    IdPoz: ko.observable(x.Id_poz),
                    Tytul: ko.observable(x.Tytul),
                    Autor: ko.observable(x.Autor),
                    Opis: ko.observable(x.Opis),
                    Jezyk: ko.observable(x.Jezyk),
                    Wydawca: ko.observable(x.Wydawca),
                    RokWydania: ko.observable(x.Rok_wydania),
                    IdKat: ko.observable(x.Id_kategorii),
                }
            });
            this.pozycje(a);
        });
    };


   /* details(id) {
        var url = "api/position/" + id + "/get";
        $.getJSON(url, this.resultData);
    };*/

    getPozDetails() {
        this.resultData({
            Dostepnosc : ko.observable(Dostepnosc)
        });
    };

    clearDetails() {
        this.resultData(undefined);
    };

    /*availability (id){
        var url = "api/availability/" + id + "/get";
        $.getJSON(url, this.resultData);
    };*/


}