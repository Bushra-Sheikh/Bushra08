<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Bill_Payment_Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 929px;
            height: 604px;
            margin-left: 454px;
            margin-right: 129px;
            margin-top: 33px;
        }
        .auto-style2 {
            width: 95%;
            height: 96px;
            margin-top: 4px;
        }
        .auto-style3 {
            width: 181px;
        }
        .auto-style4 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            color: #FF6600;
        }
        .auto-style5 {
            color: #666666;
        }
        .auto-style6 {
            width: 181px;
            color: #808080;
        }
        .auto-style8 {
            color: #FF0000;
        }
        .auto-style9 {
            background-color: #FFCC00;
        }
        .auto-style11 {
            font-weight: bold;
            background-color: #FF6600;
        }
        .auto-style12 {
            color: #800000;
        }
        .auto-style13 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            &nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <span class="auto-style4"><strong>Login Form</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" CssClass="auto-style13" Height="220px" ImageUrl="~/login.jpg" Width="279px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <br />
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3"><span class="auto-style5"><strong>Username</strong></span><span class="auto-style8">*</span></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style9" Height="26px" Width="219px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><span class="auto-style5"><strong>Password</strong></span><span class="auto-style8">*</span></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style9" Height="26px" Width="219px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <br />
            <strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Height="46px" OnClick="Button1_Click" Text="Login" Width="114px" />
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:Button ID="Button2" runat="server" CssClass="auto-style11" Height="46px" OnClick="Button2_Click" Text="Cancel" Width="114px" />
            </strong>
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style12" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
&nbsp;if you don&#39;t have any account.<br />
        </div>
    </form>
</body>
</html>
