<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="website.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" lang="en"> 
    <title>LOGIN -MCET</title>
    <meta name="viewport" content ="width=device-width,initial-scale=1,maximum-scale=1" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
   <meta http-equiv="cache-control" content="no-store" />
   <meta http-equiv="cache-control" content="must-revalidate" />
    <meta http-equiv="cache-control" content="proxy-revalidate" />
    <link rel="Stylesheet" href="css/login.css" /> 
     <script type="text/javascript" src="script/login.js"></script>
     <link rel="icon" type="image/x-icon" href="/image/logo.jpeg" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
     <script src="Scripts/sweetalert.min.js"></script>
    <link href="Styles/sweetalert.css" rel="stylesheet" />

    <script>
        function myf() {
            var alerted = localStorage.getItem('alerted') || '';
            if (alerted == 'yes') {
                localStorage.setItem('alerted', 'no');
            }
        }
    </script>     

 </head>
<body onload="myf()" >
     <div class="wrapper"><div class="wrap-login">
         <div class="headline">
                  <h1>DR.MAHALINGHAM COLLEGE OF ENGINEERING AND TECHNOLOGY - POLLACHI</h1><br />
         </div>
         <form class="form" runat="server">
                <div class="form-group">
                    <asp:TextBox ID="loginid" runat="server" placeholder="ENTER YOUR EMAIL" type="email" required=""></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:TextBox ID="passwordid" runat="server" type="password" placeholder="PASSWORD" value="" required="" ></asp:TextBox>
                </div>
                <div class="forget-password">
                    <div class="check-box">
                        <input type="checkbox" id="checkbox" onclick="myFunction()"/><label for="checkbox">Show Password</label>
                    </div>
                    <a href="#">Forgot password?</a>
                </div>
                <asp:Button ID="loginbutton" runat="server" Text="LOGIN" class="btn" OnClick="loginbutton_Click" />
                <div class="visit"><a href="https://www.mcet.in" target="_blank"><asp:Label ID="Label1" runat="server" Text="">Visit Website<i class="fa fa-external-link"></i></asp:Label></a></div>               
         </form>
   </div>
     </div>   
</body>
</html>
