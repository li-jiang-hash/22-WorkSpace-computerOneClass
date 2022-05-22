<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="中国地图.aspx.cs" Inherits="二二年三月项目.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>中国地图</title>
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
