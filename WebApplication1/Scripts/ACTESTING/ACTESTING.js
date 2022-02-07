$(document).ready(function () {

    $('#CreateStuDetails').click(function (e) {
        $('#errordiv').empty();
        $('#hiddenStuRow').show();
    });

    ////$('#CancelRow').click(function (e) {
    ////    $('#hiddenStuRow').hide();
    ////    $('#errordiv').empty();
    ////});
});

function CancelRow() {
    $('#hiddenStuRow').hide();
    $('#errordiv').empty();
}

function SaveRow() {
    $('#errordiv').empty();
    var name = $('#txtname').val();
    var emailId = $('#txtemailid').val();
    var contactNo = $('#txtcontactno').val();
    var login = $('#txtlogin').val();
    var password = $('#txtpassword').val();

    ////Method 1: Send the data in object form...
    ////Step 1: Create an object...
    //var Data = {};
    //Data.Name = name;
    //Data.EmailId = emailId;
    //Data.ContactNo = contactNo;
    //Data.Login = login;
    //Data.Password = password;

    $.ajax({
        type: 'POST',
        url: 'ACTesting.aspx/AddNewStudentDetail',
        ////data: JSON.stringify({ Onkar : Data }),             ////Step 2: Send the data in object form
        data: JSON.stringify({ Name : name, Emailid: emailId, ContactNo: contactNo, Login: login, Password: password }),    //Send the data in json form...
        contentType: "application/json; charset=utf-8",
        dataType: 'JSON',
        success:
            function (msg) {
                if (msg != null) {
                    var json = jQuery.parseJSON(msg);
                    console.log(msg);
                }
            },
        error:
            function (msg) {
                console.log(msg);
            }
    });
}
