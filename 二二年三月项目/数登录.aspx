<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="数登录.aspx.cs"
Inherits="二二年三月项目.denglu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="./image/logo.jpg" type="image/x-icon" />
    <title>用户登录</title>
    <style type="text/css">
      .auto-style1 {
        text-align: center;
      }
      .auto-style2 {
        width: 340px;
        padding: 20px;
        display: block;
        border: 1px solid #bfa;
        background-color: rgba(187, 255, 186, 0.5);
        margin: 20% auto;
        border-radius: 5%;
      }
      .auto-style3 {
        width: 202px;
        height: 50px;
      }
      #Button1 {
        padding: 5px 10px;
        border: none;
        border-radius: 5px;
        background-color: aqua;
        font-size: 20px;
      }
      #txtName,
      #txtPwd {
        margin-top: 15px;
        border-style: none;
        line-height: 24px;
      }
      #HyperLink1 {
        margin: 0 0 0 20px;
        text-decoration: none;
      }
      tr > td[colspan="2"] {
        font-size: 25px;
      }
    </style>
  </head>
  <body>
    <form id="form1" runat="server">
      <div class="auto-style1">
        <table class="auto-style2">
          <tr>
            <td colspan="2">用户登录</td>
          </tr>
          <tr>
            <td>用户名：</td>
            <td class="auto-style3">
              <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator
                ID="RequiredFieldValidator1"
                runat="server"
                ControlToValidate="txtName"
                ErrorMessage="必填项！"
                ForeColor="Red"
              ></asp:RequiredFieldValidator>
            </td>
          </tr>
          <tr>
            <td>密码：</td>
            <td class="auto-style3">
              <asp:TextBox
                ID="txtPwd"
                runat="server"
                TextMode="Password"
              ></asp:TextBox>
              <asp:RequiredFieldValidator
                ID="RequiredFieldValidator2"
                runat="server"
                ControlToValidate="txtPwd"
                ErrorMessage="必填项！"
                ForeColor="Red"
              ></asp:RequiredFieldValidator>
            </td>
          </tr>
          <tr>
            <td>
              <asp:CheckBox ID="CheckBox1" runat="server" Text="记住我" />
            </td>
            <td class="auto-style3">
              <asp:Button
                ID="Button1"
                runat="server"
                OnClick="Button1_Click"
                Text="登录"
              />
              <asp:HyperLink
                ID="HyperLink1"
                runat="server"
                NavigateUrl="~/数注册.aspx"
                >还没有注册</asp:HyperLink
              >
            </td>
          </tr>
          <tr>
            <td colspan="2">
              <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </td>
          </tr>
        </table>
      </div>
    </form>
  </body>
</html>
