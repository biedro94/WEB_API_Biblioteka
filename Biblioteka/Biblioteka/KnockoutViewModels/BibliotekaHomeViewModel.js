﻿$(document).ready(function () {
    ko.applyBindings(new CategoryNamesViewModel());
});

function CategoryNamesViewModel() {
    var self = this;
    var baseUri = "http://localhost:53566/api/BibliotekaHome";
    self.category = ko.observableArray();
    $.getJSON(baseUri, self.category);

    self.SendCategoryName = function(){
        var jsonData = ko.toJSON(self);
        ko.utils.postJson(baseUri, {value: jsonData});
    };
}

