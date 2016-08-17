$(document).ready(function () {
    ko.applyBindings(new PozycjeViewModel());
});

function PozycjeViewModel() {
    var self = this;
    var baseUri = "http://localhost:53566/api/BibliotekaHome";
    self.pozycje = ko.observableArray();
    $.getJSON(baseUri, self.pozycje);


}