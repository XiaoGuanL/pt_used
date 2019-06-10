<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="Pt_used.view.info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="info.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
            <div id="top"></div>
            <div id="title">
                <div id="top1">
                    <asp:Button ID="Bttop1" runat="server" OnClick="Bttop1_Click" Text="主页" />
                </div>
                <div id="top2">
                    <asp:Button ID="Bttop2" runat="server" OnClick="Bttop2_Click" Text="个人中心" />

                </div>
                <div id="top3">
                    <asp:Button ID="Bttop3" runat="server" OnClick="Bttop3_Click" Text="修改信息" />

                </div>
            </div>
            <div id="main">
                <div id="main_left"></div>
                <div id="main_right">
                    <div id="main1">
                        <div id="main1_1">
                            <asp:Label ID="lbmain1" runat="server">昵称</asp:Label>
                        </div>
                        <div id="main1_2">
                            <asp:TextBox ID="txtmain1" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div id="main2">
                        <div id="main2_1">
                            <asp:Label ID="lbmain2" runat="server">姓名</asp:Label>
                        </div>
                        <div id="main2_2">
                            <asp:TextBox ID="txtmain2" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div id="main3">
                        <div id="main3_1">
                            <asp:Label ID="lbmain3" runat="server">地址</asp:Label>
                        </div>
                        <div id="main3_2">
                            <asp:TextBox ID="txtmain3" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div id="main4">
                        <div id="main4_1">
                            <asp:Label ID="lbmain4" runat="server">电话</asp:Label>
                        </div>
                        <div id="main4_2">
                            <asp:TextBox ID="txtmain4" runat="server"></asp:TextBox>

                        </div>
                    </div>
                    <div id="main5">
                        <div id="main5_1">
                            <asp:Label ID="lbmain5" runat="server">邮箱</asp:Label>
                        </div>
                        <div id="main5_2">
                            <asp:TextBox ID="txtmain5" runat="server"></asp:TextBox>

                        </div>
                    </div>
                </div>
            </div>
            <div id="buttom">
                <div id="buttom1">
                    <asp:Button ID="btbuttom" runat="server" OnClick="btbuttom_Click" Text="保存" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
