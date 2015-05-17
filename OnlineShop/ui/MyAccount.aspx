<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="MyAccount.aspx.cs" Inherits="MyAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Login or Register</title>
    <style type="text/css">
        .style1
        {
            width: 537px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="loginPanel_page" runat="server" Visible="true">
        <div class="box">
            <h2 style="padding-left: 5%; padding-right: 5%">
                CUSTOMER LOGIN
            </h2>
            <table style="border-style: none; border-color: inherit; border-width: medium; margin-left: 5%;">
                <tr>
                    <td colspan="2" class="style1">
                        <label>
                            <br />
                            E-mail</label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <asp:TextBox CssClass=" field" ID="LoginUserName" runat="server" Width="355px" ValidationGroup="vgLogin"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="LoginUserName" Display="Dynamic" ForeColor="Red"
                            ErrorMessage="* E-mail Required" runat="server" ID="vUserName" ValidationGroup="vgLogin" />
                        <asp:RegularExpressionValidator ID="EmailRequired0" runat="server" ControlToValidate="LoginUserName"
                            Display="Dynamic" ErrorMessage="* A valid email must be entered" ForeColor="Red"
                            ValidationGroup="vgLogin" Width="216px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="style1">
                        <label>
                            <br />
                            Password</label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <asp:TextBox CssClass=" field" ID="LoginUserPass" TextMode="password" runat="server"
                            Width="355px" ValidationGroup="vgLogin"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="LoginUserPass" ForeColor="Red" Display="Dynamic"
                            ErrorMessage="* Password Required" runat="server" ID="vUserPass" ValidationGroup="vgLogin" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="style1">
                        <br />
                        <asp:CheckBox ID="chkPersistCookie" Text=" Stay signed in" runat="server" AutoPostBack="false" />
                        <asp:Button CssClass="search-submit" Text="Sign in" runat="server" ID="cmdLogin"
                            ValidationGroup="vgLogin" OnClick="cmdLogin_Click"></asp:Button>
                    </td>
                </tr>
            </table>
            <p style="margin-left: 5%">
                <asp:LinkButton ID="lbRegister" runat="server" OnClick="ShowRegisterForm">Register as a customer</asp:LinkButton>
                <br />
                <asp:HyperLink ID="hplNewPassword" runat="server" NavigateUrl="~/Forgot-password.aspx"> Fortgot your password?</asp:HyperLink><br />
            </p>
            <br />
        </div>
    </asp:Panel>
    <asp:Panel ID="registerPanel" runat="server" Visible="False">
        <div class="box">
            <h2 style="padding-left: 5%; padding-right: 5%">
                CUSTOMER REGISTRATION FORM</h2>
            <br />
            <p style="text-align: justify; padding-left: 5%; padding-right: 5%">
                This form is used to register a user in the "Customers" table with username and
                password. The password is encrypted with SHA1 and stored as an encrypted password
                in the "Customers" table. Your account is created when you click the "Sign in" button
                and you then get a confirmation message when the "ThankYouPanel" gets visible.
            </p>
            <br />
            <br />
            <table width="704" style="margin-left: 5%;">
                <tr>
                    <td style="width: 200px">
                        E-mail:
                    </td>
                    <td style="width: 254px">
                        <asp:TextBox CssClass="field" ID="txtUserName" runat="server" Width="95%"></asp:TextBox>
                    </td>
                    <td style="width: 250px">
                        <asp:RegularExpressionValidator ID="RExpressionValidator1" runat="server" ControlToValidate="txtUserName"
                            Display="Dynamic" ErrorMessage="* Incorrect email id" ValidationGroup="RegisterCustomer"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="txtUserName"
                            Display="Dynamic" ErrorMessage="* A valid email must be entered" Width="216px"
                            ValidationGroup="RegisterCustomer">* A valid email must be entered</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        Password:
                    </td>
                    <td style="width: 254px">
                        <asp:TextBox CssClass="field" ID="txtPassword" TextMode="Password" runat="server"
                            Width="95%"></asp:TextBox>
                    </td>
                    <td style="width: 250px">
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="txtPassword"
                            ErrorMessage="* Password must be entered" ValidationGroup="RegisterCustomer"
                            Display="Dynamic" Width="216px">* Password must be entered</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        Confirm password:
                    </td>
                    <td style="width: 254px">
                        <asp:TextBox CssClass="field" ID="txtConfirmPassword" TextMode="Password" runat="server"
                            Width="95%"></asp:TextBox>
                    </td>
                    <td style="width: 250px">
                        <asp:CompareValidator ID="ComparePassword" runat="server" ControlToCompare="txtPassword"
                            ControlToValidate="txtConfirmPassword" ErrorMessage="* Passwords do not match"
                            Width="216px" ValidationGroup="RegisterCustomer" Display="Dynamic"></asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="atttentionRequired6" runat="server" ControlToValidate="txtConfirmPassword"
                            Display="Dynamic" ValidationGroup="RegisterCustomer" Width="216px"> * Confirm Password</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        Company/Name:
                    </td>
                    <td style="width: 254px">
                        <asp:TextBox ID="txtCompanyName" CssClass="field" runat="server" Width="95%"></asp:TextBox>
                    </td>
                    <td style="width: 250px">
                        <asp:RequiredFieldValidator ID="CompanyRequired" runat="server" ControlToValidate="txtCompanyName"
                            Display="Dynamic" ErrorMessage="* Company / Name must be entered" Width="216px"
                            ValidationGroup="RegisterCustomer">* Company / Name must be entered</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        Organization number:
                    </td>
                    <td style="width: 254px">
                        <asp:TextBox ID="txtOrganisationNumber" CssClass="field" runat="server" Width="95%"></asp:TextBox>
                    </td>
                    <td style="width: 250px">
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        Contact:
                    </td>
                    <td style="width: 254px">
                        <asp:TextBox ID="txtContact" runat="server" Width="95%" CssClass="field"></asp:TextBox>
                    </td>
                    <td style="width: 250px">
                        <asp:RequiredFieldValidator ID="PasswordRequired0" runat="server" ControlToValidate="txtContact"
                            Display="Dynamic" ErrorMessage="* Contact number required" ValidationGroup="RegisterCustomer"
                            Width="216px"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        C/O or attention:
                    </td>
                    <td style="width: 254px">
                        <asp:TextBox ID="txtAttention" runat="server" Width="95%" CssClass="field"></asp:TextBox>
                    </td>
                    <td style="width: 250px">
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        Box or street address:
                    </td>
                    <td style="width: 254px">
                        <asp:TextBox ID="txtAdress" runat="server" Width="95%" CssClass="field"></asp:TextBox>
                    </td>
                    <td style="width: 250px">
                        <asp:RequiredFieldValidator ID="atttentionRequired5" runat="server" ControlToValidate="txtAdress"
                            Display="Dynamic" ErrorMessage="* Enter your address" ValidationGroup="RegisterCustomer"
                            Width="216px"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        Postal Code:
                    </td>
                    <td style="width: 254px">
                        <asp:TextBox ID="txtPostalCode" runat="server" Width="95%" CssClass="field"></asp:TextBox>
                    </td>
                    <td style="width: 250px">
                        <asp:RequiredFieldValidator ID="atttentionRequired4" runat="server" ControlToValidate="txtPostalCode"
                            Display="Dynamic" ErrorMessage="* Enter postal code" ValidationGroup="RegisterCustomer"
                            Width="216px"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        City:
                    </td>
                    <td style="width: 254px">
                        <asp:TextBox ID="txtCity" runat="server" Width="95%" CssClass="field"></asp:TextBox>
                    </td>
                    <td style="width: 250px">
                        <asp:RequiredFieldValidator ID="atttentionRequired3" runat="server" ControlToValidate="txtCity"
                            Display="Dynamic" ErrorMessage="* Enter city name" ValidationGroup="RegisterCustomer"
                            Width="216px"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        Country
                    </td>
                    <td style="width: 254px">
                        <asp:TextBox ID="txtCountry" runat="server" Width="95%" CssClass="field"></asp:TextBox>
                    </td>
                    <td style="width: 250px">
                        <asp:RequiredFieldValidator ID="atttentionRequired2" runat="server" ControlToValidate="txtCountry"
                            Display="Dynamic" ErrorMessage="* Enter country name" ValidationGroup="RegisterCustomer"
                            Width="216px"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">
                    </td>
                    <td style="width: 254px">
                    </td>
                    <td style="width: 250px">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btnRegister" CssClass="search-submit" runat="server" Text="Register"
                            ValidationGroup="RegisterCustomer" OnClick="btnRegister_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:LinkButton ID="lbLoginForm" runat="server" OnClick="showLoginForm">Login as a customer</asp:LinkButton>
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="ThankYouPanel" runat="server" Visible="false">
        <h1>
            Thank you</h1>
        Thank you for register with us.<br />
        <br />
    </asp:Panel>
    <script type="text/javascript">

        function startScript() {
            var loginPanel = document.getElementById('loginPanel');
            loginPanel.style.display = 'none';

        }

    </script>
</asp:Content>
