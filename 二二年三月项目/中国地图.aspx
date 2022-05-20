<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="中国地图.aspx.cs" Inherits="二二年三月项目.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="中国地图"></asp:Label>
            <br />
            <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/image/china.jpg" OnClick="ImageMap1_Click">
                <asp:RectangleHotSpot Top="200" Bottom="400" Left="200" Right="400" HotSpotMode="PostBack" PostBackValue="XJ" />
                <asp:RectangleHotSpot Bottom="220" HotSpotMode="PostBack" Left="760" PostBackValue="HLJ" Right="950" Top="80" />
                <asp:RectangleHotSpot Bottom="600" HotSpotMode="PostBack" Left="780" PostBackValue="FJ" Right="830" Top="530" />
                <asp:RectangleHotSpot Bottom="550" HotSpotMode="PostBack" Left="220" PostBackValue="XZ" Right="460" Top="380" />
             </asp:ImageMap>
        </div>
    </form>
</body>
</html>
