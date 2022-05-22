<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="数注册.aspx.cs"
Inherits="二二年三月项目.数注册" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户注册</title>
    <link rel="shortcut icon" href="./image/logo.jpg" type="image/x-icon" />
    <style type="text/css">
      .auto-style1 {
        width: 300px;
        height: 210px;
        background-color: rgba(187, 255, 186, 0.5);
        margin: 20% auto;
        border-radius: 10%;
        padding: 20px;
      }
      .auto-style2 {
        height: 27px;
      }
      .auto-style3 {
        width: 300px;
      }
      .auto-style4 {
        height: 27px;
        width: 300px;
      }
      #Button1 {
        padding: 5px 10px;
        font-size: 20px;
        margin-left: 25%;
      }
      tr:first-child {
        text-align: center;
        font-size: 25px;
      }
      tr > td:first-child {
        width: 100px;
      }
      tr > td:nth-child(2) {
        width: 200px;
      }
      #Button1 {
        padding: 5px 10px;
        border: none;
        border-radius: 5px;
        background-color: aqua;
        font-size: 20px;
      }
      #txtName,#txtPwd1,#txtPwd2{
        margin-top: 15px;
        border-style: none;
        line-height: 24px;
      }
      .text{
          font-size:12px;
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
            <td class="auto-style2">密码：</td>
            <td class="auto-style4">
              <asp:TextBox
                ID="txtPwd1"
                runat="server"
                TextMode="Password"
              ></asp:TextBox>
              <asp:RequiredFieldValidator
                ID="RequiredFieldValidator2"
                runat="server"
                ControlToValidate="txtPwd1"
                ErrorMessage="必填项！"
                ForeColor="Red"
              ></asp:RequiredFieldValidator>
            </td>
          </tr>
          <tr>
            <td class="text">确认密码：</td>
            <td class="auto-style3">
              <asp:TextBox
                ID="txtPwd2"
                runat="server"
                TextMode="Password"
              ></asp:TextBox>
              <asp:RequiredFieldValidator
                ID="RequiredFieldValidator3"
                runat="server"
                ControlToValidate="txtPwd2"
                ErrorMessage="必填项！"
                ForeColor="Red"
              ></asp:RequiredFieldValidator>
              <asp:CompareValidator
                ID="CompareValidator1"
                runat="server"
                ControlToCompare="txtPwd1"
                ControlToValidate="txtPwd2"
                ErrorMessage="密码不一致！"
                ForeColor="Red"
              ></asp:CompareValidator>
            </td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td class="auto-style3">
              <asp:Button
                ID="Button1"
                runat="server"
                OnClick="Button1_Click"
                Text="注册"
              />
            </td>
          </tr>
        </table>
      </div>
    </form>
  </body>
</html>
