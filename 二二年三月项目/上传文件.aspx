<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="上传文件.aspx.cs" Inherits="二二年三月项目.上传文件" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="#CCCCFF" />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="点击上传" />
        </div>
    </form>
</body>
</html>
