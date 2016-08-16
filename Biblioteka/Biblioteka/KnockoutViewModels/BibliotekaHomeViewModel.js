$(document).ready(function () {
    ko.applyBindings(new UsersViewModel());
});

function UsersViewModel() {

    var self = this;
    var baseUri = "http://localhost:53566/api/BibliotekaHome";
    self.users = ko.observableArray();
    $.getJSON(baseUri, self.users);
}