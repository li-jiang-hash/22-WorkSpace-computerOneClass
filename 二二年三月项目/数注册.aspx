<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="数注册.aspx.cs" Inherits="二二年三月项目.数注册" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 449px;
            height: 210px;
            border: 1px solid #000080;
        }
        .auto-style2 {
            height: 27px;
        }
        .auto-style3 {
            width: 318px;
        }
        .auto-style4 {
            height: 27px;
            width: 318px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2">用户注册</td>
                </tr>
                <tr>
                    <td>用户名：</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="必填项！" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">密码：</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtPwd1" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd1" ErrorMessage="必填项！" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>确认密码：</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtPwd2" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPwd2" ErrorMessage="必填项！" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd1" ControlToValidate="txtPwd2" ErrorMessage="密码不一致！" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="注册" />
                    </td>
                </tr>
            </table>
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
