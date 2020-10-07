<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="billdetails.aspx.cs" Inherits="Bill_Payment_Project.billdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 40%;
            height: 467px;
            margin-top: 0px;
            background-color: #FFFFCC;
        }
        .auto-style3 {
            text-align: left;
            width: 347px;
            color: #FF6600;
            background-color: #FFFFCC;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            font-weight: bold;
            background-color: #99CC00;
        }
        .auto-style6 {
            background-color: #99CCFF;
        }
        .auto-style7 {
            background-color: #FFCC00;
        }
        .auto-style8 {
            color: #800000;
        }
        .auto-style9 {
            text-align: left;
            width: 347px;
            color: #FF6600;
        }
        .auto-style10 {
            background-color: #FFFFCC;
        }
        .auto-style11 {
            height: 66px;
            color: #CC0000;
            font-size: x-large;
            margin-top: 32px;
            margin-bottom: 0px;
            background-color: #FFCC66;
        }
        .auto-style12 {
            color: #800000;
            background-color: #FFCC66;
        }
        .auto-style13 {
            width: 966px;
            margin-left: 414px;
        }
        .auto-style15 {
            margin-left: 0px;
        }
        .auto-style16 {
            text-align: left;
            height: 185px;
        }
        .auto-style17 {
            font-weight: bold;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            background-color: #FF9933;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1 class="auto-style12">Generate New Bill</h1>
            <br />
            <table align="center" class="auto-style2">
                <tr>
                    <td class="auto-style9"><strong>Bill Title</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style7" Height="34px" Width="478px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"><strong>Bill Category</strong></td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style6" Width="244px">
                            <asp:ListItem>Office</asp:ListItem>
                            <asp:ListItem>Personal</asp:ListItem>
                            <asp:ListItem>Social</asp:ListItem>
                            <asp:ListItem>Family</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"><strong>Bill Amount</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style7" Height="34px" Width="478px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"><strong>Date Of Entry</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style7" Height="34px" Width="478px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Bill Due Date</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style7" Height="34px" Width="478px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Bill Payment Mode</strong></td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style6" Width="244px">
                            <asp:ListItem>CC</asp:ListItem>
                            <asp:ListItem>Cash</asp:ListItem>
                            <asp:ListItem>Bank Transfer</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>Bill Status</strong></td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style6" Width="244px">
                            <asp:ListItem>Paid</asp:ListItem>
                            <asp:ListItem>Unpaid</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<strong><asp:Button ID="Button1" runat="server" CssClass="auto-style5" OnClick="Button1_Click" Text="Generate Bill" />
                        </strong></td>
                </tr>
            </table>
            <div class="auto-style11">
                <strong>Bill Reports</strong></div>
            <p class="auto-style13">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style10" DataSourceID="SqlDataSource1" PageSize="5">
                    <Columns>
                        <asp:BoundField DataField="Bill_Title" HeaderText="Bill_Title" SortExpression="Bill_Title" />
                        <asp:BoundField DataField="Bill_Category" HeaderText="Bill_Category" SortExpression="Bill_Category" />
                        <asp:BoundField DataField="Bill_Amount" HeaderText="Bill_Amount" SortExpression="Bill_Amount" />
                        <asp:BoundField DataField="Date_of_Entry" HeaderText="Date_of_Entry" SortExpression="Date_of_Entry" />
                        <asp:BoundField DataField="Bill_Due_Date" HeaderText="Bill_Due_Date" SortExpression="Bill_Due_Date" />
                        <asp:BoundField DataField="Bill_Mode" HeaderText="Bill_Mode" SortExpression="Bill_Mode" />
                        <asp:BoundField DataField="Bill_Status" HeaderText="Bill_Status" SortExpression="Bill_Status" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerSettings Mode="NextPreviousFirstLast" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegisterConnectionString %>" SelectCommand="SELECT * FROM [Bill]"></asp:SqlDataSource>
            </p>
            <div class="auto-style4">
                <strong>&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style8" OnClick="LinkButton1_Click">Unpaid Bills</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                </strong>
                <div class="auto-style16">
                    <asp:GridView ID="GridView2" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" CssClass="auto-style15" ForeColor="Black" GridLines="None" Width="628px">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                    <strong>
                    <br />
                    <br />
                    <br />
                    <br />
                    </strong>
                </div>
                <br />
                <strong>
                <asp:LinkButton ID="LinkButton3" runat="server" CssClass="auto-style8" OnClick="LinkButton3_Click">Paid Bills</asp:LinkButton>
                </strong>
                <br />
                <asp:GridView ID="GridView3" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" CssClass="auto-style15" ForeColor="Black" GridLines="None" Width="632px">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style17" OnClick="Button2_Click" Text="Logout" />
                </strong>&nbsp;</div>
        </div>
    </form>
</body>
</html>
