$(document).ready(function () {
    ko.applyBindings(new UsersViewModel());
});

//Create a user view-model class:
function UsersViewModel() {

    var self = this;
    var baseUri = "http://localhost:53566/api/BibliotekaHome";
    self.users = ko.observableArray();

    self.create = function (formElement) {
        $.get(baseUri, $(formElement).serialize(), null, "json")
            .done(function (o) {
                self.users.push(o);
            });
    }
    // Adds the value and notifies observers
    $.getJSON(baseUri, self.users);
}