<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Panel ID="AdminPanel_page" runat="server" Visible="true">
        <div class="box">
            <h2 style="padding-left: 5%; padding-right: 5%">
                ADMIN LOGIN
            </h2>
            <table style="border-style: none; border-color: inherit; border-width: medium; margin-left: 5%;">
                <tr>
                    <td class="style1">
                        <label>
                            <br />
                            Admin username</label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <asp:TextBox CssClass=" field" ID="LoginUserName" runat="server" Width="355px" ValidationGroup="vgLogin"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="LoginUserName" Display="Dynamic" ForeColor="Red"
                            ErrorMessage="* E-mail Required" runat="server" ID="vUserName" ValidationGroup="vgLogin" />
                    </td>
                </tr>
                <tr>
                    <td class="style1">
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
                    <td class="style1">
                        <br />
                        <asp:CheckBox ID="chkPersistCookie" Text=" Stay signed in" runat="server" AutoPostBack="false" />
                        <asp:Button CssClass="search-submit" Text="Sign in" runat="server" ID="cmdLogin"
                            ValidationGroup="vgLogin" onclick="cmdLogin_Click"></asp:Button>
                    </td>
                </tr>
            </table>
            <br />
        </div>
    </asp:Panel>
 </form>
</body>
</html>
