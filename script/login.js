function myFunction() {
    var x = document.getElementById("passwordid");
    if (x.type == "password") {
        x.type = "text";
    }
    else {
        x.type = "password";
    }
}