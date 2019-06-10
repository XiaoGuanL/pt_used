<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="Pt_used.view.info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="user.css" rel="stylesheet" type="text/css" />
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
                <div id="main_left">
                    <div id="main1">
                        <div id="main1_1">
                            <asp:Button ID="Btmain1" runat="server" OnClick="Btmain1_Click1" Text="我的收藏" />

                        </div>
                    </div>
                    <div id="main2">
                        <div id="main2_1">
                            <asp:Button ID="Btmain2" runat="server" OnClick="Btmain2_Click1" Text="我的闲置" />

                        </div>
                    </div>
                    <div id="main3">
                        <div id="main3_1">
                            <asp:Button ID="Btmain3" runat="server" OnClick="Btmain3_Click1" Text="我的求购" />

                        </div>
                    </div>
                    <div id="main4">
                        <div id="main4_1">
                            <asp:Button ID="Btmain4" runat="server" OnClick="Btmain4_Click1" Text="我的交易" />

                        </div>
                    </div>
                </div>
                <div id="main_right">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                        ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"
                         OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit">
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Gnumber" HeaderText="物品编号" ReadOnly="True" />
                            <asp:BoundField DataField="" HeaderText="物品名称" />
                            <asp:BoundField DataField="" HeaderText="类别" />
                            <asp:BoundField DataField="价格" HeaderText="价格" />
                            <asp:BoundField DataField="程度" HeaderText="新旧程度" />
                            <asp:BoundField DataField="发布时间" HeaderText="发布时间" />
                            <asp:CommandField HeaderText="选择" ShowSelectButton="True" />
                            <asp:CommandField HeaderText="编辑" ShowEditButton="True" />
                            <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                        </Columns>
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
