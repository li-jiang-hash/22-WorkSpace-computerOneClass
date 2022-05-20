<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="发言.aspx.cs" Inherits="二二年三月项目.发言" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" Width="383px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="发言" />
        </div>
    </form>
</body>
</html>
