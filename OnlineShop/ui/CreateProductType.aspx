<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CreateProductType.aspx.cs" Inherits="CreateProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="box" style="padding-left: 5%">
        <br />
        <asp:Label ID="lblProductType" runat="server">Product Type/Category</asp:Label>
        <asp:TextBox ID="txtProductType" CssClass="field" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtProductType"
            Display="Dynamic" ErrorMessage="Product type required" ForeColor="Red" ValidationGroup="vgprotype"></asp:RequiredFieldValidator>
        <asp:Label ID="lblProductTypeMsg" runat="server" Text="Product Type added" ForeColor="#8b0000"
            Visible="false"></asp:Label>
        <asp:Button ID="btnCreateProductType" runat="server" CssClass="search-submit" Width="200px"
            Text="Create Product Type" OnClick="btnCreateProductType_Click" 
            ValidationGroup="vgprotype" />
    </div>
</asp:Content>
