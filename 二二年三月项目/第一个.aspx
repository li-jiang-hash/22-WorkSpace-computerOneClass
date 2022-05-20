<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="第一个.aspx.cs" Inherits="二二年三月项目.第一个" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
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
