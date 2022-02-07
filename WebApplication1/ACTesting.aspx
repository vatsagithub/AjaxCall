<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ACTesting.aspx.cs" Inherits="WebApplication1.ACTesting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/Vatsa/VatsaCSS.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.5.1.js"></script>
    <script src="Scripts/ACTESTING/ACTESTING.js"></script>
</head>
<body>
    <form id="form1" runat="server" class="vertical-layout-form" action="javascript:dummyFunction();">

        <div class="content">
            <div class="Mynavbar"></div>
        </div>

        <div class="content" style="margin-left: 50px; margin-right: 50px;">
            <div class="hiddenheader" style="margin-top: 60px;"></div>
            <div class="main">
                <h3 style="margin-left: 2%; font-size: 27px;">Student Details (CRUD Operations)</h3>
                <div class="table">
                    <table style="border-width: .5px">
                        <thead>
                            <tr>
                                <th><a href="#" id="CreateStuDetails" class="CreateStuDetail">Add New</a></th>
                                <th style="width: 223px">Full Name</th>
                                <th style="width: 223px">EmailId</th>
                                <th style="width: 223px">ContactNo</th>
                                <th style="width: 223px">Login</th>
                                <th style="width: 223px">Password</th>
                            </tr>
                            <tr style="display: none" id="hiddenStuRow">
                                <td><a href="#" id="SaveRow" onclick="SaveRow()">Save</a>&nbsp;&nbsp;<a href="#" id="CancelRow" onclick="CancelRow()">Cancel</a></td>
                                <td>
                                    <input type="text" style="width: 200px" class="time form-control formcustom" id="txtname" /></td>
                                <td>
                                    <input type="text" style="width: 200px" class="time form-control formcustom" id="txtemailid" /></td>
                                <td>
                                    <input type="text" style="width: 200px" class="time form-control formcustom" id="txtcontactno" /></td>
                                <td>
                                    <input type="text" style="width: 200px" class="time form-control formcustom" id="txtlogin" /></td>
                                <td>
                                    <input type="text" style="width: 200px" class="time form-control formcustom" id="txtpassword" /></td>
                            </tr>
                    </table>                
                </div>
            </div>
        </div>
     
        <div id="errordiv"></div>

    </form>
</body>
</html>
