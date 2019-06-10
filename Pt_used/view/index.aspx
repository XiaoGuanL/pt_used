<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Pt_used.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="index.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">

        <div id="container">
            <div id="top"></div>
            <div id="title">
                <div id="title1">
                    <asp:Button ID="bttitle1" runat="server" Text="发布闲置" OnClick="bttitle1_Click" />
                </div>
                <div id="title2">
                    <asp:Button ID="bttitle2" runat="server" Text="求购发布" OnClick="bttitle2_Click" />
                </div>
                <div id="title3">
                    <asp:Button ID="bttitle3" runat="server" Text="登录" OnClick="bttitle3_Click" />
                </div>
                <div id="title4">
                    <asp:Button ID="bttitle4" runat="server" Text="注册" OnClick="bttitle4_Click" />
                </div>
                <div id="title5">
                    <asp:Button ID="bttitle5" runat="server" Text="个人中心" OnClick="bttitle5_Click" />
                </div>
            </div>
            <div id="main">
                <div id="main_left">
                    <div id="main1">
                        <div id="main1_1">
                            <asp:TextBox ID="txtmain1" runat="server"></asp:TextBox>
                        </div>
                        <div id="main1_2">
                            <asp:Button ID="btmain1" runat="server" Text="搜索" />
                        </div>
                    </div>
                    <hr />
                    <div id="main2">
                        <div id="main2_1">
                            <asp:Button ID="Btmain2_1" runat="server" OnClick="Btmain2_1_Click1" Text="服饰" />
                        </div>
                        <div id="main2_2">
                            <asp:Button ID="Btmain2_2" runat="server" OnClick="Btmain2_2_Click1" Text="化妆品" />
                        </div>
                        <div id="main2_3">
                            <asp:Button ID="Btmain2_3" runat="server" OnClick="Btmain2_3_Click1" Text="书籍" />
                        </div>
                        <div id="main2_4">
                            <asp:Button ID="Btmain2_4" runat="server" OnClick="Btmain2_4_Click1" Text="文具" />
                        </div>
                        <div id="main2_5">
                            <asp:Button ID="Btmain2_5" runat="server" OnClick="Btmain2_5_Click1" Text="电子产品" />
                        </div>
                        <div id="main2_6">
                            <asp:Button ID="Btmain2_6" runat="server" OnClick="Btmain2_6_Click1" Text="其他" />
                        </div>
                    </div>
                    <hr />
                    <div id="main3"></div>
                </div>
                <div id="stright"></div>
                <div id="main_right">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" GridLines="None" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing1"
                         OnRowUpdating="GridView1_RowUpdating1" OnRowCancelingEdit="GridView1_RowCancelingEdit1" DataSourceID="SqlDataSource1" AllowPaging="True" ForeColor="#333333" HorizontalAlign="Center">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Unumber" HeaderText="联系人" ReadOnly="True" />
                            <asp:BoundField DataField="Gname" HeaderText="名称" />
                            <asp:BoundField DataField="Cnumber" HeaderText="类别" />
                            <asp:BoundField DataField="Price" HeaderText="价格" />
                            <asp:BoundField DataField="Degree" HeaderText="新旧程度" />
                            <asp:BoundField DataField="Gtime" HeaderText="发布时间" />
                            <asp:BoundField DataField="Add" HeaderText="描述" />
                            <asp:CommandField HeaderText="选择" ShowSelectButton="True" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pd_usedConnectionString %>" SelectCommand="SELECT * FROM [Goods]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
