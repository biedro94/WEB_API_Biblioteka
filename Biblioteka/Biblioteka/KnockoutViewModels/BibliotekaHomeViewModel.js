$(document).ready(function () {
    ko.applyBindings(new CategoryNamesViewModel());
});

function CategoryNamesViewModel() {
    var self = this;
    var baseUri = "http://localhost:53566/api/BibliotekaHome";
    self.category = ko.observableArray();
    

        self.SendCategoryName = function () {
            var data = JSON.stringify(
                {
                    first: self.category
                });
            $.post("api/BibliotekaHome", data);
        }
        $.getJSON(baseUri, self.category);
    }

   

    /*self.SendCategoryName = function(){
        var jsonData = ko.toJSON(self);
        ko.utils.postJson(baseUri, {value: jsonData});
    };*/


