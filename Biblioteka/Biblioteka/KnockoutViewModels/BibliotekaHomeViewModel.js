$(document).ready(function () {
    ko.applyBindings(new CategoryVm());
});

const urls = {
    baseUri: "http://localhost:53566/api/BibliotekaHome"
}

class CategoryVm {
    constructor() {

        this.categories = ko.observableArray([]);
        this.defaultCategory = ko.observable(0);
        this.pozycje = ko.observableArray([]);

        $.getJSON(urls.baseUri, this.categories).then(fulfilled => {
            this.save(this.categories()[0]);
        }, rejected => {

        });
    }
    save(text){
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
    }


}

