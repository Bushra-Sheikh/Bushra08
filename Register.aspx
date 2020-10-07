<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Bill_Payment_Project.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 103px;
            text-align: left;
            width: 1864px;
            background-color: #FFCC00;
        }
        .auto-style2 {
            font-size: xx-large;
            text-decoration: underline;
            color: #800000;
        }
        .auto-style3 {
            height: 36px;
            background-color: #99CC00;
        }
        .auto-style6 {
            font-weight: bold;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            background-color: #FF6600;
        }
        .auto-style7 {
            color: #000000;
        }
        .auto-style10 {
            color: #800000;
            background-color: #FFCC00;
        }
        .auto-style11 {
            color: #800000;
        }
        .auto-style12 {
            color: #990000;
        }
        .auto-style13 {
            background-color: #99CC00;
        }
        .auto-style14 {
            height: 35px;
            background-color: #99CC00;
        }
        .auto-style15 {
            color: #800000;
            background-color: #FFFFCC;
        }
    </style>
</head>
<body style="height: 264px">
    <form id="form1" runat="server">
        <div class="auto-style1">
        &nbsp;<asp:Image ID="Image1" runat="server" Height="98px" ImageUrl="~/signup.png" Width="116px" />
            <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Sign up"></asp:Label>
            </strong>
        </div>
        <p class="auto-style13">
            <strong>
            <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style10" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style13">
            <strong>
            <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style10"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter your last name" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style13">
            <strong>Username</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style10"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Username Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style13">
            <span class="auto-style7"><strong>Password</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style10"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox4" EnableTheming="False" ErrorMessage="Password must be 8 characters long" ForeColor="#CC0000" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
        </p>
        <p class="auto-style13">
            <strong>Confirm</strong> <strong>pass</strong>&nbsp;&nbsp; :
            <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style10"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Password does not match" ForeColor="#CC0000"></asp:CompareValidator>
        </p>
        <p class="auto-style3">
&nbsp;<strong><asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
            <asp:RadioButton ID="RadioButton1" runat="server" CssClass="auto-style11" Text="Male" />
&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" CssClass="auto-style12" Text="Female" />
&nbsp;</p>
        <p class="auto-style14">
            <strong>
            <asp:Label ID="Label5" runat="server" Text="Marital Status"></asp:Label>
            </strong>&nbsp; :
            <asp:CheckBox ID="CheckBox1" runat="server" CssClass="auto-style11" Text="Married" />
&nbsp;
            <asp:CheckBox ID="CheckBox2" runat="server" CssClass="auto-style11" Text="Unmarried" />
        </p>
        <p class="auto-style13">
            <strong>
            <asp:Label ID="Label6" runat="server" Text="Email-id"></asp:Label>
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style10"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please enter valid email address" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </p>
        <p class="auto-style13">
            <strong>
            <asp:Label ID="Label7" runat="server" Text="Mobile"></asp:Label>
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style10"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="Mobile length should be 10 digits" ForeColor="#CC0000" MaximumValue="10" MinimumValue="1"></asp:RangeValidator>
        </p>
        <p class="auto-style13">
            <strong>
            <asp:Label ID="Label8" runat="server" Text="Address"></asp:Label>
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style15">
                <asp:ListItem>Select Your City</asp:ListItem>
                <asp:ListItem>Indore</asp:ListItem>
                <asp:ListItem>Pune</asp:ListItem>
                <asp:ListItem>Bhopal</asp:ListItem>
                <asp:ListItem>Bangalore</asp:ListItem>
                <asp:ListItem>Chennai</asp:ListItem>
                <asp:ListItem>Ahmedabad</asp:ListItem>
                <asp:ListItem>Mumbai</asp:ListItem>
                <asp:ListItem>Noida</asp:ListItem>
                <asp:ListItem>Gurgaon</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Address Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style13">
            <strong>State </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style15">
                <asp:ListItem>Select your State</asp:ListItem>
                <asp:ListItem>Andhra Pradesh</asp:ListItem>
                <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                <asp:ListItem>Assam</asp:ListItem>
                <asp:ListItem>Bihar</asp:ListItem>
                <asp:ListItem>Chhatisgarh</asp:ListItem>
                <asp:ListItem>Goa</asp:ListItem>
                <asp:ListItem>Gujarat</asp:ListItem>
                <asp:ListItem>Haryana</asp:ListItem>
                <asp:ListItem>Himachal Pradesh</asp:ListItem>
                <asp:ListItem>Jammu and Kashmir</asp:ListItem>
                <asp:ListItem>Jharkhand</asp:ListItem>
                <asp:ListItem>Karnataka</asp:ListItem>
                <asp:ListItem>Madhya pradesh</asp:ListItem>
                <asp:ListItem>Maharashtra</asp:ListItem>
                <asp:ListItem>Manipur</asp:ListItem>
                <asp:ListItem>Meghalaya</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList1" ErrorMessage="State Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style13">
            <strong>Country</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style15">
                <asp:ListItem>Select Your Country</asp:ListItem>
                <asp:ListItem>Australia</asp:ListItem>
                <asp:ListItem>Belgium</asp:ListItem>
                <asp:ListItem>Brazil</asp:ListItem>
                <asp:ListItem>Bhutan</asp:ListItem>
                <asp:ListItem>Canada</asp:ListItem>
                <asp:ListItem>Denmark</asp:ListItem>
                <asp:ListItem>Europe</asp:ListItem>
                <asp:ListItem>Egypt</asp:ListItem>
                <asp:ListItem>France</asp:ListItem>
                <asp:ListItem>Georgia</asp:ListItem>
                <asp:ListItem>Holy See</asp:ListItem>
                <asp:ListItem>Iceland</asp:ListItem>
                <asp:ListItem>India</asp:ListItem>
                <asp:ListItem>Israel</asp:ListItem>
                <asp:ListItem>Japan</asp:ListItem>
                <asp:ListItem>Kuwait</asp:ListItem>
                <asp:ListItem>Malaysia</asp:ListItem>
                <asp:ListItem>Russia</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Country Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style13">
            <strong>Pincode</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
            <asp:TextBox ID="TextBox10" runat="server" CssClass="auto-style10"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox10" ErrorMessage="Please enter your pincode " ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style13">
            <strong>
            <asp:Label ID="Label9" runat="server" Text="Date Of Birth"></asp:Label>
            </strong>&nbsp; :
            <asp:TextBox ID="TextBox9" runat="server" CssClass="auto-style10"></asp:TextBox>
&nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style6" OnClick="Button1_Click" Text="Submit" />
            </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:Button ID="Button2" runat="server" CssClass="auto-style6" OnClick="Button2_Click" Text="Reset" />
            </strong>&nbsp;&nbsp;
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
