<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CreateBrand.aspx.cs" Inherits="CreateBrand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="box" style="padding-left: 5%">
        <br />
        <asp:Label ID="lblProductBrand" runat="server">Product Brand</asp:Label>
        <asp:TextBox ID="txtProductBrand" CssClass="field" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtProductBrand"
            Display="Dynamic" ForeColor="Red" ErrorMessage="Product brand required" ValidationGroup="vgbrand"></asp:RequiredFieldValidator>
        <asp:Label ID="lblBrandMsg" runat="server" Text="New Brand Added" ForeColor="#8b0000"
            Visible="false"></asp:Label>
        <asp:Button ID="btnCreateBrand" runat="server" CssClass="search-submit" Width="200px"
            Text="Create Brand" OnClick="btnCreateBrand_Click" ValidationGroup="vgbrand" />
    </div>
</asp:Content>
