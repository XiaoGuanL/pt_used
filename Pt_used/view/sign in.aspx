1
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign in.aspx.cs" Inherits="Pt_used.view.sign_in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="sign in.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
            <div id="top"></div>
            <div id="title">
                <div id="title1">
                    <div id="title1_1">
                        <asp:Label ID="lbtitle1" runat="server">添加用户名</asp:Label>
                    </div>
                </div>
                <div id="title2">
                    <div id="title2_1">
                        <asp:Label ID="lbtitle2" runat="server">添加用户信息</asp:Label>
                    </div>
                </div>
                <div id="title3">
                    <div id="title3_1">
                        <asp:Label ID="lbtitle3" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;注册完成 </asp:Label>
                    </div>
                </div>
            </div>

            <div id="main">
                <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" OnActiveViewChanged="MultiView1_ActiveViewChanged">
                    <asp:View ID="view1" runat="server">
                        <div id="main1">
                            <div id="main1_1">
                                <div id="main1_11">
                                    <div id="main1_1lb">
                                        <asp:Label ID="lbmain1_1" runat="server">邮箱</asp:Label>
                                    </div>
                                </div>
                                <div id="main1_12">
                                    <div id="main1_1txt">
                                        <asp:TextBox ID="txtmain1_1" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>
                                <div id="main1_13">
                                    <div id="main1_1bt">
                                        <asp:Button ID="btmain1_1" runat="server" Text="获取验证码" OnClick="tbmain1_1_Click" />
                                    </div>
                                </div>
                            </div>
                            <div id="main1_2">
                                <div id="main1_21">
                                    <div id="main1_2lb">
                                        <asp:Label ID="lbmain1_2" runat="server">验证码</asp:Label>
                                    </div>
                                </div>
                                <div id="main1_22">
                                    <div id="main1_2txt">
                                        <asp:TextBox ID="txtmain1_2" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div id="main1_3">
                                <div id="main1_31">
                                    <asp:Button CommandName="NextView" ID="btnnext1" runat="server" Text="下一步" OnClick="btnnext1_Click" />
                                </div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="view2" runat="server">
                        <div id="main2">
                            <div id="main2_0">
                                <div id="main_left">
                                    <div id="main2_1">
                                        <div id="main2_11">
                                            <asp:Label ID="lbmain2_1" runat="server">&nbsp;&nbsp;姓名</asp:Label>
                                        </div>
                                        <div id="main2_12">
                                            <asp:TextBox ID="txtmain2_1" runat="server"></asp:TextBox>
                                        </div>
                                        <div id="main2_13">
                                            <asp:Label ID="lbmain2_13" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                    <div id="main2_2">
                                        <div id="main2_21">
                                            <asp:Label ID="lbmain2_2" runat="server">&nbsp;&nbsp;性别</asp:Label>
                                        </div>
                                        <div id="main2_22">
                                            <asp:TextBox ID="txtmain2_2" runat="server"></asp:TextBox>
                                        </div>
                                        <div id="main2_23">
                                            <asp:Label ID="lbmain2_23" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                    <div id="main2_3">
                                        <div id="main2_31">
                                            <asp:Label ID="lbmain2_3" runat="server">&nbsp;&nbsp;账号</asp:Label>
                                        </div>
                                        <div id="main2_32">
                                             <asp:TextBox ID="txtmain2_3" runat="server"></asp:TextBox>
                                        </div>
                                        <div id="main2_33">
                                            <asp:Label ID="lbmain2_33" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                    <div id="main2_4">
                                        <div id="main2_41">
                                            <asp:Label ID="lbmain2_4" runat="server">&nbsp;&nbsp;电话</asp:Label>
                                        </div>
                                        <div id="main2_42">
                                            <asp:TextBox ID="txtmain2_4" runat="server"></asp:TextBox>
                                        </div>
                                        <div id="main2_43">
                                            <asp:Label ID="lbmain2_43" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                    <div id="main2_5">
                                        <div id="main2_51">
                                            <asp:Label ID="lbmain2_5" runat="server">&nbsp;&nbsp;邮箱</asp:Label>
                                        </div>
                                        <div id="main2_52">
                                            <asp:TextBox ID="txtmain2_5" runat="server"></asp:TextBox>
                                        </div>
                                        <div id="main2_53">
                                            <asp:Label ID="lbmain2_53" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div id="main_right">
                                    <div id="main2_6">
                                        <div id="main2_61">
                                            <asp:Label ID="lbmain2_6" runat="server">QQ号</asp:Label>
                                        </div>
                                        <div id="main2_62">
                                            <asp:TextBox ID="txtmain2_6" runat="server"></asp:TextBox>
                                        </div>
                                        <div id="main2_63">
                                            <asp:Label ID="lbmain2_63" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                    <div id="main2_7">
                                        <div id="main2_71">
                                            <asp:Label ID="lbmain2_7" runat="server">学号</asp:Label>
                                        </div>
                                        <div id="main2_72">
                                            <asp:TextBox ID="txtmain2_7" runat="server"></asp:TextBox>
                                        </div>
                                        <div id="main2_73">
                                            <asp:Label ID="lbmain2_73" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                    <div id="main2_8">
                                        <div id="main2_81">
                                            <asp:Label ID="lbmain2_8" runat="server">地址</asp:Label>
                                        </div>
                                        <div id="main2_82">
                                            <asp:TextBox ID="txtmain2_8" runat="server"></asp:TextBox>
                                        </div>
                                        <div id="main2_83">
                                            <asp:Label ID="lbmain2_83" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                    <div id="main2_9">
                                        <div id="main2_91">
                                            <asp:Label ID="lbmain2_9" runat="server">密码</asp:Label>
                                        </div>
                                        <div id="main2_92">
                                            <asp:TextBox ID="txtmain2_9" runat="server"></asp:TextBox>
                                        </div>
                                        <div id="main2_93">
                                            <asp:Label ID="lbmain2_93" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                    <div id="main2_10">
                                        <div id="main2_101">
                                            <asp:Label ID="lbmain2_10" runat="server">确认密码</asp:Label>
                                        </div>
                                        <div id="main2_102">
                                            <asp:TextBox ID="txtmain2_10" runat="server"></asp:TextBox>
                                        </div>
                                        <div id="main2_103">
                                            <asp:Label ID="lbmain2_103" runat="server"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="main2_bot">
                                <div id="main2_bot1"><asp:Button CommandName="PrevView" ID="btprevious2" runat="server" Text="上一步" /></div>
                                <div id="main2_bot2"><asp:Button CommandName="NextView" ID="btnnext2" runat="server" Text="下一步" OnClick="btnnext2_Click" /></div>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="view3" runat="server">
                        <div id="main3_1">

                        </div>
                        <div id="main3_2">
                            <div id="main3_20"><asp:Button ID="bttologin" runat="server" Text="返回登录" OnClick="bttologin_Click" /></div>
                        </div>
                    </asp:View>
                </asp:MultiView>
            </div>
        </div>
    </form>
</body>
</html>
<script type="text/javascript">
    document.getElementById("txtmain1_1").onkeyup = function ()
    {
        var s = document.getElementById("txtmain1_1").value;
        if (/^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/.test(s))
        {
            document.getElementById("Label1").innerText = "邮箱正确";
        }
        else
        {
            document.getElementById("Label1").innerText = "邮箱错误";
        }
    }
    document.getElementById("txtmain2_1").onkeyup = function ()
    {
        var s = document.getElementById("txtmain2_1").value;
        if (txtmain2_1.innerText=="")
        {
            document.getElementById("lbmain2_13").innerText = "请输入姓名";
        }
        else
        {
            document.getElementById("lbmain2_13").innerText = "";
        }
    }
</script>