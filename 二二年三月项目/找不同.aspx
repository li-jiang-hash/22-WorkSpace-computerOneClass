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
