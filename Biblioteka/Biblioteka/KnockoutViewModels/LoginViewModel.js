$(document).ready(function () {
    ko.applyBindings(new LoginVM());
});

const urls = {
    baseUri: "http://localhost:53566/api/Login"
}

class LoginVM {
    constructor() {

        this.login = function (formElement) {

            $.post(baseUri, $(formElement).serialize(), null, "json"), $(formElement).each(function () {
                this.reset();
            });
        }
    }
    

}