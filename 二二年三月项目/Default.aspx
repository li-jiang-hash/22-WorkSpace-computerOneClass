<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="二二年三月项目.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="shortcut icon" href="./image/logo.jpg" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">
            <asp:TextBox ID="TextBox1" runat="server" Height="272px" Width="488px" TextMode="MultiLine"></asp:TextBox>
            <br />
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
            </asp:Timer>
        </div>
    </form>
</body>
</html>
