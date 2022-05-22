<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="聊天室.aspx.cs" Inherits="二二年三月项目.聊天室" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>聊天室</title>
    <link rel="shortcut icon" href="./image/logo.jpg" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            请输入昵称：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="进入聊天室" />
        </div>
    </form>
</body>
</html>
