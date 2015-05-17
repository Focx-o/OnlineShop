<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="box">
            <h2 style="padding-left: 5%; padding-right: 5%">
                CHANGE PASSWORD
            </h2>
            <table style="border-style: none; border-color: inherit; border-width: medium; margin-left: 5%;">
                <tr>
                    <td colspan="2" class="style1">
                        <label>
                            <br />
                            current passsword</label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <asp:TextBox CssClass=" field" ID="currentPass" TextMode="Password" runat="server" Width="355px" 
                            ValidationGroup="change"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="currentPass" Display="Dynamic" ForeColor="Red"
                            ErrorMessage="* Current Password Required" runat="server" ID="vUserName" 
                            ValidationGroup="change" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="style1">
                        <label>
                            <br />
                            create password</label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <asp:TextBox CssClass=" field" ID="CreatePass" TextMode="password" runat="server"
                            Width="355px" ValidationGroup="change"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="CreatePass" ForeColor="Red" Display="Dynamic"
                            ErrorMessage="* New Password Required" runat="server" ID="vUserPass" 
                            ValidationGroup="change" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="style1">
                        <label>
                            <br />
                            confirm password</label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <asp:TextBox CssClass=" field" ID="ConfirmPass" TextMode="password" runat="server"
                            Width="355px" ValidationGroup="change"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="ConfirmPass" ControlToValidate="CreatePass" Display="Dynamic" 
                            ErrorMessage=" * Password do not match" ForeColor="#CC0000" 
                            ValidationGroup="change"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="style1">
                        <asp:Button CssClass="search-submit" Text="Change Password" Width="150" 
                            runat="server" ID="cmdLogin"
                            ValidationGroup="change" onclick="cmdLogin_Click"></asp:Button>
                    </td>
                </tr>
            </table>
            <br />
            <asp:Label runat="server" ID="lblmsg" ForeColor="Green" ></asp:Label>
        </div>

</asp:Content>

