<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="找不同.aspx.cs" Inherits="二二年三月项目.找不同" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>找不同游戏</title>
    <link rel="shortcut icon" href="./image/logo.jpg" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/image/kitty.jpg" OnClick="ImageMap1_Click">
                <asp:RectangleHotSpot Bottom="270" HotSpotMode="PostBack" Left="350" PostBackValue="Dif1-a" Right="450" Top="170" />
                <asp:RectangleHotSpot Bottom="270" HotSpotMode="PostBack" Left="850" PostBackValue="Dif1-b" Right="950" Top="170" />
                <asp:RectangleHotSpot Bottom="540" HotSpotMode="PostBack" Left="630" PostBackValue="Dif2-a" Right="670" Top="440" />
                <asp:RectangleHotSpot Bottom="540" HotSpotMode="PostBack" Left="130" PostBackValue="Dif2-b" Right="170" Top="440" />
                <asp:RectangleHotSpot Bottom="300" HotSpotMode="PostBack" Left="160" PostBackValue="Dif3-a" Right="300" Top="500" />
                <asp:RectangleHotSpot Bottom="300" HotSpotMode="PostBack" Left="660" PostBackValue="Dif3-b" Right="800" Top="500" />
            </asp:ImageMap>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
