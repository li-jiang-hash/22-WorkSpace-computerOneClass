<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="个人简历.aspx.cs" Inherits="二二年三月项目.个人简历" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>个人简历</title>
    <link rel="shortcut icon" href="./image/logo.jpg" type="image/x-icon" />
    <style type="text/css">
        .auto-style1 {
            width: 65%;
            height: 652px;
            border-style: solid;
            border-width: 1px;
        }
        .auto-style2 {
            width: 75px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style7 {
            height: 48px;
        }
        .auto-style8 {
            width: 120px;
            height: 48px;
        }
        .auto-style9 {
            width: 75px;
            height: 48px;
        }
        .auto-style10 {
            width: 75px;
            height: 138px;
        }
        .auto-style11 {
            height: 138px;
        }
        .auto-style12 {
            width: 609px;
            height: 120px;
        }
        .auto-style13 {
            width: 179px;
            height: 48px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style3" colspan="4" style="border: thin solid #CCCCFF; background-color: #C0C0C0; ">个人信息</td>
                </tr>
                <tr>
                    <td class="auto-style2" style="border: thin solid #CCCCFF">真实<br />
                        姓名：</td>
                    <td colspan="3" style="border: thin solid #CCCCFF">
                        <asp:TextBox ID="TextBox1" runat="server" Width="231px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" style="border: thin solid #CCCCFF">年龄：</td>
                    <td class="auto-style7" style="border: thin solid #CCCCFF">
                        <asp:TextBox ID="TextBox2" runat="server" Height="21px" Width="122px"></asp:TextBox>
                    </td>
                    <td class="auto-style8" style="border: thin solid #CCCCFF;">性别：</td>
                    <td class="auto-style13" style="border: thin solid #CCCCFF">&nbsp;
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="男" />
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="女" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="border: thin solid #CCCCFF">毕业<br />
                        院校：</td>
                    <td colspan="3" style="border: thin solid #CCCCFF">
                        <asp:TextBox ID="TextBox3" runat="server" Width="231px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="border: thin solid #CCCCFF">所学<br />
                        专业：</td>
                    <td colspan="3" style="border: thin solid #CCCCFF">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="95px">
                            <asp:ListItem>选择专业</asp:ListItem>
                            <asp:ListItem>计算机应用</asp:ListItem>
                            <asp:ListItem>软件开发</asp:ListItem>
                            <asp:ListItem>会计</asp:ListItem>
                            <asp:ListItem>电商</asp:ListItem>
                            <asp:ListItem>舞蹈</asp:ListItem>
                            <asp:ListItem>幼师</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="border: thin solid #CCCCFF">联系<br />
                        方式：</td>
                    <td colspan="3" style="border: thin solid #CCCCFF">
                        <asp:TextBox ID="TextBox4" runat="server" Width="231px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="(\(\d{3}\)|\d{3}-)?\d{8}" ControlToValidate="TextBox4">格式不正确！</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="border: thin solid #CCCCFF">爱<br />
                        好：</td>
                    <td colspan="3" style="border: thin solid #CCCCFF">
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>计算机</asp:ListItem>
                            <asp:ListItem>古琴</asp:ListItem>
                            <asp:ListItem>学习</asp:ListItem>
                            <asp:ListItem>旅游</asp:ListItem>
                            <asp:ListItem>绘画</asp:ListItem>
                            <asp:ListItem>拍摄</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" style="border: thin solid #CCCCFF">工作<br />
                        简历：</td>
                    <td class="auto-style11" colspan="3" style="border: thin solid #CCCCFF">
                        <textarea id="TextArea1" class="auto-style12" name="S1"></textarea></td>
                </tr>
                <tr>
                    <td class="auto-style2" style="border: thin solid #CCCCFF">&nbsp;</td>
                    <td class="auto-style3" colspan="3" style="border: thin solid #CCCCFF">
                        <asp:Button ID="Button1" runat="server" Text="提交" />
&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="重置" />
                        
&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="退出" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
