<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="第一个.aspx.cs" Inherits="二二年三月项目.第一个" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Number One</title>
    <link rel="shortcut icon" href="./image/logo.jpg" type="image/x-icon" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
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
        <div class="auto-style1">
            <asp:Label ID="Label1" runat="server" ForeColor="#99CCFF" Text="请输入用户名："></asp:Label>
            <asp:TextBox ID="tetName" runat="server" ForeColor="#CCCCFF"></asp:TextBox>
            <asp:Button ID="ButOK" runat="server" Font-Size="Small" ForeColor="#CCCCFF" OnClick="ButOK_Click" Text="确定" />
            <br />
        </div>
           <div class="auto-style1">
            <asp:Label ID="Label2" runat="server" ForeColor="#99CCFF" Text="精确查询："></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" ForeColor="#CCCCFF"></asp:TextBox>
               <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="进入" />
               <br />
               <div class="auto-style1">
                   请输入昵称：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                   <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="进入聊天室" />
               </div>
            <br />
        </div>
    </form>
</body>
</html>
