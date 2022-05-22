<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="个人资料.aspx.cs" Inherits="二二年三月项目.个人资料" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>个人资料</title>
    <link rel="shortcut icon" href="./image/logo.jpg" type="image/x-icon" />
    <style type="text/css">
        .auto-style1 {
            width: 90%;
            height: 472px;
        }
        .auto-style2 {
            width: 217px;
            text-align: right;
        }
        .auto-style3 {
            height: 24px;
            width: 217px;
            text-align: right;
        }
        .auto-style4 {
            height: 24px;
            text-align: left;
            width: 357px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            width: 243px;
        }
        .auto-style7 {
            height: 24px;
            width: 243px;
        }
        .auto-style8 {
            margin-left: 0px;
        }
        .auto-style9 {
            text-align: left;
            width: 357px;
        }
        .auto-style10 {
            width: 357px;
        }
        .auto-style11 {
            text-align: left;
        }
        .auto-style12 {
            width: 217px;
            text-align: right;
            height: 64px;
        }
        .auto-style13 {
            width: 243px;
            height: 64px;
        }
        .auto-style14 {
            width: 100%;
            border: 3px solid #000000;
            background-color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="Menu1" runat="server" StaticSubMenuIndent="16px" Width="1000px" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem Text="登录注册" Value="登录注册" NavigateUrl="~/数登录.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="查询专业成绩" Value="查询专业成绩" NavigateUrl="~/查成绩.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="个人简历" Value="个人简历" NavigateUrl="~/个人简历.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="个人资料" Value="个人资料" NavigateUrl="~/个人资料.aspx"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/判断年月.aspx" Text="判断年月" Value="判断年月"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/日历.aspx" Text="日历" Value="日历"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/找不同.aspx" Text="找不同" Value="找不同"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/中国地图.aspx" Text="中国地图" Value="中国地图"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </div>
        <div class="auto-style5">
        <div class="auto-style11">
            <div class="auto-style11">
                请填写个人资料：(注意带有*的项目必须填写)<br />
            </div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style2" style="border-color: #FFFFFF; border-style: none;">*密码</td>
                    <td class="auto-style6" style="background-color: #C0C0C0">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9" style="background-color: #C0C0C0">密码可使用长度为6-14的任何字符</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="border-color: #FFFFFF; border-style: none;">*密码确认</td>
                    <td class="auto-style7" style="background-color: #C0C0C0">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4" style="background-color: #C0C0C0">请再输入一次密码</td>
                </tr>
                <tr>
                    <td class="auto-style12" style="border-color: #FFFFFF; border-style: none;">*密码提示</td>
                    <td class="auto-style13" style="background-color: #C0C0C0">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style9" rowspan="2" style="background-color: #C0C0C0">例如：我的哥哥是谁？<br />
                        当你忘记密码时可以通过密码提示问题和答案找回密码<br />
                        注意：答案长度不少于6位</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="border-color: #FFFFFF; border-style: none;">*提示答案</td>
                    <td class="auto-style7" style="background-color: #C0C0C0">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="border-color: #FFFFFF; border-style: none;">*出生日期</td>
                    <td class="auto-style7" style="background-color: #C0C0C0">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style8" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="182px">
                            <asp:ListItem>年/月/日</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style4" style="background-color: #C0C0C0">用以找回密码，请如实填写</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="border-color: #FFFFFF; border-style: none;">*姓名</td>
                    <td class="auto-style7" style="background-color: #C0C0C0">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4" style="background-color: #C0C0C0">请输入真是的姓名</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="border-color: #FFFFFF; border-style: none;">*性别</td>
                    <td class="auto-style6" style="background-color: #C0C0C0">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>男</asp:ListItem>
                            <asp:ListItem>女</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style10" style="background-color: #C0C0C0">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="border-color: #FFFFFF; border-style: none;">*所在省份</td>
                    <td class="auto-style6" style="background-color: #C0C0C0">
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem>请选择</asp:ListItem>
                            <asp:ListItem>河南省</asp:ListItem>
                            <asp:ListItem>河北省</asp:ListItem>
                            <asp:ListItem>安徽省</asp:ListItem>
                            <asp:ListItem>北京市</asp:ListItem>
                            <asp:ListItem>山西省</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style10" style="background-color: #C0C0C0">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="border-color: #FFFFFF; border-style: none;">*所属行业</td>
                    <td class="auto-style6" style="background-color: #C0C0C0">
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem>请选择</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style10" style="background-color: #C0C0C0">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" style="border-color: #FFFFFF; border-style: none;">个人声明<br />
                        我愿意公开我的如下资料： 
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>姓名，联系方式</asp:ListItem>
                            <asp:ListItem>其他已登记的信息</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
            </table>
        </div>
            <div class="auto-style5">
                <br />
                <table class="auto-style14">
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="Button1" runat="server" Text="确认" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="重填" OnClick="Button2_Click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="退出" OnClick="Button3_Click" />
            </div>
        </div>
    </form>
</body>
</html>
