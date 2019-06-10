<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xianzhi1.aspx.cs" Inherits="Pt_used.view.xianzhi1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="xianzhi1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="Container">
            <div id="top">
                <div id="logo">
                    <img src="../img/logo.jpg" />
                </div>
                <div id="title"> 
                    <div id="xianzhi">
                        <asp:Label id="lbxianzhi" runat="server">闲置发布</asp:Label>
                    </div>
                </div>
            </div>
            <div id="body">
                <div id="left">
                    <div id="name1">
                        <div id="name1_1">
                        <div id="name1_2"><asp:Label ID="lbname" runat="server">物品名称</asp:Label></div>
                        <div id="name1_3"><asp:TextBox ID="txtname" runat="server"></asp:TextBox></div>
                        </div>
                 </div>
                    <div id="leibie">
                        <div id="leibie1">
                            <div id="leibie1_1"><asp:Label ID="lbleibie" runat="server">物品类别</asp:Label></div>
                            <div id="leibie1_2"><asp:TextBox ID="txtleibie" runat="server"></asp:TextBox></div>
                        </div>
                    </div>
                     <div id="jiage">
                        <div id="jiage1">
                            <div id="jiage1_1"><asp:Label ID="lbjiage" runat="server">价格</asp:Label></div>
                            <div id="jiage1_2"><asp:TextBox ID="txtjiage" runat="server"></asp:TextBox></div>
                        </div>
                    </div>
                    <div id="miaoshu">
                        <div id="miaoshu1">
                            <div id="miaoshu1_1"><asp:Label ID="lbmiaoshu" runat="server">物品描述</asp:Label></div>
                            <div id="miaoshu1_2"><asp:TextBox ID="txtmiaoshu" runat="server"></asp:TextBox></div>
                        </div>
                    </div>
            </div>
                <div id="right">
                    <div id="chengdu">
                        <div id="chengdu1">
                            <div id="chengdu1_1"><asp:Label ID="lbchengdu" runat="server">新旧程度</asp:Label></div>
                            <div id="chengdu1_2"><asp:TextBox ID="txtchengdu" runat="server"></asp:TextBox></div>
                        </div>
                    </div>
                    <div id="photo">
                        <div id="photo1">
                            <div id="ptoto1_1"><asp:Label ID="lbphoto" runat="server">添加图片</asp:Label></div>
                            <div id="ptoto1_2"><asp:FileUpload ID="upphoto" runat="server" /></div>
                        </div>
                        <div id="photo2"><asp:Button ID="btphoto" Text="添加" OnClick="btphoto_Click" runat="server" /></div>
                    </div>
                </div>
            </div>
                <div id="foot">
                    <div id="fabu">
                        <asp:Button ID="btfabu" runat="server" Text="发布" OnClick="btfabu_Click" />
                    </div>
                </div>
        </div>
        </form>
</body>
</html>
