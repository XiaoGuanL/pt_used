<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Pt_used.view.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>西南石油大学二手交易网站-柚货</title>
    <link href="login.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="Container">
            <div id="top"></div>
            <div id="bodyer">
                <div id="left"></div>
                <div id="middle">
                    <div id="zhuti">
                        <div id="logo">
                          <!--<img src=""/>-->
                        </div>
                        <div id="login">
                            <div id="login1">
                                <div id="login1_1"><asp:TextBox ID="txtlogin1" runat="server" /></div>
                            </div>
                            <div id="login2">
                                <div id="login2_1"><asp:TextBox ID="txtlogin2" runat="server" /></div>
                            </div>
                            <div id="login3">
                                <div id="login3_1"><asp:Button ID="btlogin3" runat="server" Text="登陆" OnClick="btlogin3_Click" /></div>
                            </div>
                            <div id="login4">
                                <div id="login4_1">
                                    <div id="login4_11"><asp:Button ID="btlogin4_1" runat="server" Text="忘记密码" /></div>
                                </div>
                                <div id="login4_2">
                                    <div id="login4_21"><asp:Button ID="btlogin4_2" runat="server" Text="注册" OnClick="btlogin4_2_Click" /></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="right"></div>
            </div>
        </div>
    </form>
</body>
</html>
