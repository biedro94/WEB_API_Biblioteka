
/// <reference path="C:\Users\Bogdan.Kosmala\Desktop\Biblioteka\Biblioteka\Biblioteka-Bogdan\Biblioteka-Bogdan\Biblioteka\Biblioteka\Scripts/knockout-3.4.0.js" />
/// <reference path="C:\Users\Bogdan.Kosmala\Desktop\Biblioteka\Biblioteka\Biblioteka-Bogdan\Biblioteka-Bogdan\Biblioteka\Biblioteka\Scripts/jquery-1.10.2.js" />

var bibliotekaHomeViewModel;

/*function Student(id, firstName, lastName, age, description, gender) {
    var self = this;

    // observable are update elements upon changes, also update on element data changes [two way binding]
    self.Id = ko.observable(id);
    self.FirstName = ko.observable(firstName);
    self.LastName = ko.observable(lastName);

    // create computed field by combining first name and last name
    self.FullName = ko.computed(function () {
        return self.FirstName() + " " + self.LastName();
    }, self);

    self.Age = ko.observable(age);
    self.Description = ko.observable(description);
    self.Gender = ko.observable(gender);

    // Non-editable catalog data - should come from the server
    self.genders = [
        "Male",
        "Female",
        "Other"
    ];

    self.addStudent = function () {
        var dataObject = ko.toJSON(this);

        // remove computed field from JSON data which server is not expecting
        delete dataObject.FullName;

        $.ajax({
            url: '/api/student',
            type: 'post',
            data: dataObject,
            contentType: 'application/json',
            success: function (data) {
                studentRegisterViewModel.studentListViewModel.students.push(new Student(data.Id, data.FirstName, data.LastName, data.Age, data.Description, data.Gender));

                self.Id(null);
                self.FirstName('');
                self.LastName('');
                self.Age('');
                self.Description('');
            }
        });
    };
}
*/
function Category(name)
{
    var self = this;
    //self.CategoryName = ko.observable(name);
    self.CategoryName = ko.observable('aaaaaa');
}
// use as student list view's view model
function ListaKategorii() {
    }
    var self = this;

    // observable arrays are update binding elements upon array changes
    self.categories = ko.observableArray([]);

    self.getCategories = function () {
        self.categories.removeAll();

        // retrieve students list from server side and push each object to model's students list
        $.getJSON('/api/BibliotekaHome', function (data) {
            $.each(data, function (key, value) {
                self.categories.push(new Category('bbbbb'));
            });
        });
    };
   /* $.getJSON('/api/student', function (data) {
        $.each(data, function (key, value) {
            self.students.push(new Student(value.Id, value.FirstName, value.LastName, value.Age, value.Description, value.Gender));
        });
    });
    };*/

   
    /*// remove student. current data context object is passed to function automatically.
    self.removeStudent = function (student) {
        $.ajax({
            url: '/api/student/' + student.Id(),
            type: 'delete',
            contentType: 'application/json',
            success: function () {
                self.students.remove(student);
            }
        });
    };*/
}


// create index view view model which contain two models for partial views
    bibliotekaHomeViewModel = {  categoryListViewModel: new ListaKategorii() };


// on document ready
$(document).ready(function () {

    // bind view model to referring view
    ko.applyBindings(bibliotekaHomeViewModel);

    bibliotekaHomeViewModel.categoryListViewModel.getCategories();
    // load student data
    //studentRegisterViewModel.studentListViewModel.getStudents();
});



 

    var viewModel = {
        myMessage: ko.observable() // Initially blank
    };
viewModel.myMessage("Hello, world!"); // Text appears

