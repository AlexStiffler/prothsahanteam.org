<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Admin_Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
</head>
<body style="background: #00C851; overflow: hidden">
    <form id="form1" runat="server">
        <div style="background: #00C851;">
            <div style="background-color: #fff">
                <img src="../img/Prothsahan-Team-logo.png" style="display: block; margin: 60px auto;" />
            </div>
            <div class="container">
                <div id="loginbox" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2" style="margin: -30px 290px;">
                    <div class="panel panel-info">

                        <div style="padding-top: 30px" class="panel-body">

                            <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                            <div id="loginform" class="form-horizontal" role="form">

                                <div style="margin-bottom: 25px" class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
                                    <asp:TextBox ID="txtUserName" runat="server" class="form-control" placeholder="username or email"></asp:TextBox>
                                </div>

                                <div style="margin-bottom: 25px" class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock" aria-hidden="true"></i></span>
                                    <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="password" TextMode="Password"></asp:TextBox>
                                </div>
                                <span>
                                    <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"></asp:Label></span>

                                <div style="margin-top: 10px" class="form-group">
                                    <!-- Button -->
                                    <div class="col-sm-12 controls">

                                        <%-- <a id="btn-login" href="Admin/Master-Index.aspx" class="btn btn-default">Login</a></center>--%>
                                        <asp:Button ID="btnLogin" runat="server" class="btn btn-default" Text="Login" OnClick="btnLogin_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
            </div>
        </div>
    </form>
</body>
</html>
