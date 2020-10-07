<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Bill_Payment_Project.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:ImageMap ID="ImageMap1" runat="server" Height="100%" HotSpotMode="Navigate" ImageUrl="~/bill-1696.jpg" Width="100%">
            <asp:RectangleHotSpot AlternateText="Electricity Bill" Bottom="425" HotSpotMode="Navigate" Left="230" NavigateUrl="~/Login.aspx" Right="410" Target="_self" Top="380" />
        </asp:ImageMap>
    </form>
</body>
</html>
