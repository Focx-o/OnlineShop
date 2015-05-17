<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="AddSeller.aspx.cs" Inherits="AddSeller" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 50px;
            height: 47px;
        }
        .style2
        {
            height: 47px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="border: 1px solid #8b0000;">
        <tr>
            <td colspan="4" style="background: #8b0000; padding-left: 5%; color: White; font-weight: bold;
                padding-top: 10px; padding-bottom: 10px">
                <h2>
                    Add Seller</h2>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="font-size: x-large; padding-left: 5%">
                <br />
                <b>Log In Information:</b>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 50px;">
            </td>
            <td style="font-family: Courier; width: 150px;">
                User ID:
            </td>
            <td>
                <asp:TextBox runat="server" CssClass="field" ID="txtuserid" Width="70%"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server"
                    ErrorMessage="Username required" ValidationGroup="vsAddSeller" ControlToValidate="txtuserid"
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 50px;">
            </td>
            <td style="font-family: Courier; color: #8b0000; background-color: Gray;" colspan="2">
                "User ID" is used to "Log In" to your account. The user ID you choose must be between
                6 and 30 characters in length, and may contain letters, digits and the underscore
                (_) characters only. Spaces are not allowed in your User ID. Tip: use your first
                initial and last name as your user id. For example, if your name is "Joe Black",
                then your user id would be JBLACK
            </td>
            <td style="width: 50px;">
            </td>
        </tr>
        <tr>
            <td style="width: 50px;">
            </td>
            <td style="font-family: Courier">
                Password:
            </td>
            <td>
                <br />
                <asp:TextBox runat="server" ID="txtpassword" CssClass="field" TextMode="Password"
                    Width="70%"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" runat="server"
                    ErrorMessage="password required" ValidationGroup="vsAddSeller" ControlToValidate="txtpassword"
                    ForeColor="Red"></asp:RequiredFieldValidator><br />
            </td>
        </tr>
        <tr>
            <td style="width: 50px;">
            </td>
            <td style="font-family: Courier; color: #8b0000; background-color: Gray;" colspan="2">
                The password must be between 6 and 30 characters in length, any character except
                spaces are allowed. Passwords are case sensitive, for example "password" and "PASSWORD"
                are two different words.
            </td>
        </tr>
        <tr>
            <td style="width: 40px;">
            </td>
            <td style="font-family: Courier">
                <br />
                Confirm Password:
            </td>
            <td>
                <asp:TextBox runat="server" ID="txtconfirmPassword" CssClass="field" TextMode="Password"
                    Width="70%"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtconfirmPassword"
                    ControlToValidate="txtpassword" ErrorMessage="password mismatch" ForeColor="Red"
                    ValidationGroup="vsAddSeller"></asp:CompareValidator>
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator9" runat="server"
                    ErrorMessage="Confirm password" ValidationGroup="vsAddSeller" ControlToValidate="txtconfirmPassword"
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 50px;">
            </td>
            <td style="font-family: Courier; background-color: Gray; color: #8b0000" colspan="2">
                <br />
                Please enter password again to confirm.
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="3" style="font-size: x-large; padding-left: 5%">
                <br />
                <b>Contact Information:</b><br />
                <br />
                <b style="color: Blue; font-size: 20px;">Enter your first and last name ...OR... a business
                    name.</b><br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 50px;">
            </td>
            <td style="font-family: Courier;">
                First name:
            </td>
            <td>
                <asp:TextBox runat="server" CssClass="field" ID="Txtfirstname" Width="70%"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator3" runat="server"
                    ErrorMessage="First Name required" ValidationGroup="vsAddSeller" ControlToValidate="txtfirstname"
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 50px;">
            </td>
            <td style="font-family: Courier;">
                Middle name:
            </td>
            <td>
                <asp:TextBox runat="server" CssClass="field" ID="txtmiddleName" Width="70%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
            </td>
            <td style="font-family: Courier" class="style2">
                Last name:
            </td>
            <td class="style2">
                <asp:TextBox runat="server" CssClass="field" ID="txtlastName" Width="70%"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator5" runat="server"
                    ErrorMessage="Last name required" ValidationGroup="vsAddSeller" ControlToValidate="txtlastName"
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 50px;">
            </td>
            <td style="font-family: Courier">
                Business name:
            </td>
            <td>
                <asp:TextBox runat="server" CssClass="field" ID="txtbusinessName" Width="70%"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator6" runat="server"
                    ErrorMessage="Bussiness name required " ValidationGroup="vsAddSeller" ControlToValidate="txtbusinessName"
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 50px;">
            </td>
            <td style="font-family: Courier; background-color: Gray;" colspan="2">
                Example: ProRent Property Management, Inc.
            </td>
        </tr>
        <tr>
            <td style="width: 50px;">
            </td>
            <td style="font-family: Courier">
                Gender
            </td>
            <td>
                <asp:RadioButtonList runat="server" ID="rblgender">
                    <asp:ListItem Value="1">Male</asp:ListItem>
                    <asp:ListItem Value="2">Female</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator7" runat="server"
                    ErrorMessage="Gender required" ValidationGroup="vsAddSeller" ControlToValidate="rblgender"
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 50px;">
            </td>
            <td style="font-family: Courier">
                Date Of Birth
            </td>
            <td>
                <li style="display: inline-block;">
                    <asp:DropDownList CssClass="field" runat="server" ID="ddldate">
                    </asp:DropDownList>
                </li>
                <li style="display: inline-block;">
                    <asp:DropDownList CssClass="field" runat="server" ID="ddlmonth">
                        <asp:ListItem> Jan</asp:ListItem>
                        <asp:ListItem> Feb</asp:ListItem>
                        <asp:ListItem> Mar</asp:ListItem>
                        <asp:ListItem> Apr</asp:ListItem>
                        <asp:ListItem> May</asp:ListItem>
                        <asp:ListItem> Jun</asp:ListItem>
                        <asp:ListItem> Jul</asp:ListItem>
                        <asp:ListItem> Aug</asp:ListItem>
                        <asp:ListItem> Sep</asp:ListItem>
                        <asp:ListItem> Oct</asp:ListItem>
                        <asp:ListItem> Nov</asp:ListItem>
                        <asp:ListItem> Dec</asp:ListItem>
                    </asp:DropDownList>
                </li>
                <li style="display: inline-block;">
                    <asp:DropDownList CssClass="field" runat="server" ID="ddlyear">
                    </asp:DropDownList>
                </li>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center" style="font-size: x-large; padding-left: 4%">
                <br />
                <br />
                <b style="color: Blue; font-size: 20px;">* At least one telephone number must be supplied.
                    Please include your area code with all telephone numbers</b>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 50px;">
            </td>
            <td style="font-family: Courier;">
                Bussiness/Work Telephone:
            </td>
            <td>
                <asp:TextBox runat="server" CssClass="field" ID="txtBussinessTelephone" Width="70%"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtBussinessTelephone"
                    ErrorMessage="Bussiness number required" ForeColor="Red" ValidationExpression="^[-]?([1-9]{1}[0-9]{0,}(\.[0-9]{0,2})?|0(\.[0-9]{0,2})?|\.[0-9]{1,2})$"
                    ValidationGroup="vsAddSeller"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator8" runat="server"
                    ErrorMessage="Bussiness Telephone required" ValidationGroup="vsAddSeller" ControlToValidate="txtBussinessTelephone"
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 50px;">
            </td>
            <td style="font-family: Courier">
                Home Telephone:
            </td>
            <td>
                <asp:TextBox runat="server" CssClass="field" ID="txthomeTelephone" Width="70%"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txthomeTelephone"
                    ErrorMessage="Home telephone required" ForeColor="Red" ValidationExpression="^[-]?([1-9]{1}[0-9]{0,}(\.[0-9]{0,2})?|0(\.[0-9]{0,2})?|\.[0-9]{1,2})$"
                    ValidationGroup="vsAddSeller" Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 50px;">
            </td>
            <td style="font-family: Courier">
                FAX:
            </td>
            <td>
                <asp:TextBox runat="server" CssClass="field" ID="txtfax" Width="70%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 50px;">
            </td>
            <td style="font-family: Courier">
                Cellular/Mobile:
            </td>
            <td>
                <asp:TextBox runat="server" CssClass="field" ID="Txtmobile" Width="70%"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="Txtmobile"
                    ErrorMessage="Mobile number required" ForeColor="Red" ValidationExpression="^[-]?([1-9]{1}[0-9]{0,}(\.[0-9]{0,2})?|0(\.[0-9]{0,2})?|\.[0-9]{1,2})$"
                    ValidationGroup="vsAddSeller" Display="Dynamic"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 50px;">
            </td>
            <td style="font-family: Courier">
                Skype Name:
            </td>
            <td>
                <asp:TextBox runat="server" CssClass="field" ID="txtSkypeName" Width="70%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 50px;">
            </td>
            <td style="font-family: Courier">
                Your E-mail:
            </td>
            <td>
                <asp:TextBox runat="server" CssClass="field" ID="txtemail" Width="70%"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail"
                    ErrorMessage="Email required" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ValidationGroup="vsAddSeller" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 50px;">
            </td>
            <td style="font-family: Courier">
                Web Site:
            </td>
            <td>
                <asp:TextBox runat="server" CssClass="field" ID="txtwebsite" Width="70%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 50px;">
            </td>
            <td style="font-family: Courier">
                Notes:Additional Contact Information<br />
                (Office hours, best time to call, etc). Up to 500 characters
            </td>
            <td>
                <asp:TextBox runat="server" CssClass="field" ID="txtaddInfo" TextMode="MultiLine"
                    Width="70%" Height="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:Button runat="server" ValidationGroup="vsAddSeller" CssClass="search-submit"
                    ID="btnRegister" Text="Register" OnClick="btnRegister_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
