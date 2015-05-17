<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageProduct.aspx.cs" Inherits="ManageProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:ListView ID="ListView1" runat="server" DataKeyNames="Product_ID" 
        DataSourceID="EntityDataSource1">
    <AlternatingItemTemplate>
        <span style="background-color: #FAFAD2;color: #284775;">Product_ID:
        <asp:Label ID="Product_IDLabel" runat="server" 
            Text='<%# Eval("Product_ID") %>' />
        <br />
        Product_Type_ID:
        <asp:Label ID="Product_Type_IDLabel" runat="server" 
            Text='<%# Eval("Product_Type_ID") %>' />
        <br />
        Brand_ID:
        <asp:Label ID="Brand_IDLabel" runat="server" Text='<%# Eval("Brand_ID") %>' />
        <br />
        Product_Name:
        <asp:Label ID="Product_NameLabel" runat="server" 
            Text='<%# Eval("Product_Name") %>' />
        <br />
        Product_Info:
        <asp:Label ID="Product_InfoLabel" runat="server" 
            Text='<%# Eval("Product_Info") %>' />
        <br />
        Product_Cost:
        <asp:Label ID="Product_CostLabel" runat="server" 
            Text='<%# Eval("Product_Cost") %>' />
        <br />
        Seller_ID:
        <asp:Label ID="Seller_IDLabel" runat="server" Text='<%# Eval("Seller_ID") %>' />
        <br />
        Product_Image:
        <asp:Label ID="Product_ImageLabel" runat="server" 
            Text='<%# Eval("Product_Image") %>' />
        <br />
        Product_Offer_Available:
        <asp:Label ID="Product_Offer_AvailableLabel" runat="server" 
            Text='<%# Eval("Product_Offer_Available") %>' />
        <br />
        Product_Offer_Detail:
        <asp:Label ID="Product_Offer_DetailLabel" runat="server" 
            Text='<%# Eval("Product_Offer_Detail") %>' />
        <br />
        Product_Replacement_Garentee_available:
        <asp:Label ID="Product_Replacement_Garentee_availableLabel" runat="server" 
            Text='<%# Eval("Product_Replacement_Garentee_available") %>' />
        <br />
        Cash_on_Delivery_Available:
        <asp:Label ID="Cash_on_Delivery_AvailableLabel" runat="server" 
            Text='<%# Eval("Cash_on_Delivery_Available") %>' />
        <br />
        tbl_Brand:
        <br />
        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
            Text="Delete" />
        <br />
        <br />
        </span>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <span style="background-color: #FFCC66;color: #000080;">Product_ID:
        <asp:Label ID="Product_IDLabel1" runat="server" 
            Text='<%# Eval("Product_ID") %>' />
        <br />
        Product_Type_ID:
        <asp:TextBox ID="Product_Type_IDTextBox" runat="server" 
            Text='<%# Bind("Product_Type_ID") %>' />
        <br />
        Brand_ID:
        <asp:TextBox ID="Brand_IDTextBox" runat="server" 
            Text='<%# Bind("Brand_ID") %>' />
        <br />
        Product_Name:
        <asp:TextBox ID="Product_NameTextBox" runat="server" 
            Text='<%# Bind("Product_Name") %>' />
        <br />
        Product_Info:
        <asp:TextBox ID="Product_InfoTextBox" runat="server" 
            Text='<%# Bind("Product_Info") %>' />
        <br />
        Product_Cost:
        <asp:TextBox ID="Product_CostTextBox" runat="server" 
            Text='<%# Bind("Product_Cost") %>' />
        <br />
        Seller_ID:
        <asp:TextBox ID="Seller_IDTextBox" runat="server" 
            Text='<%# Bind("Seller_ID") %>' />
        <br />
        Product_Image:
        <asp:TextBox ID="Product_ImageTextBox" runat="server" 
            Text='<%# Bind("Product_Image") %>' />
        <br />
        Product_Offer_Available:
        <asp:TextBox ID="Product_Offer_AvailableTextBox" runat="server" 
            Text='<%# Bind("Product_Offer_Available") %>' />
        <br />
        Product_Offer_Detail:
        <asp:TextBox ID="Product_Offer_DetailTextBox" runat="server" 
            Text='<%# Bind("Product_Offer_Detail") %>' />
        <br />
        Product_Replacement_Garentee_available:
        <asp:TextBox ID="Product_Replacement_Garentee_availableTextBox" runat="server" 
            Text='<%# Bind("Product_Replacement_Garentee_available") %>' />
        <br />
        Cash_on_Delivery_Available:
        <asp:TextBox ID="Cash_on_Delivery_AvailableTextBox" runat="server" 
            Text='<%# Bind("Cash_on_Delivery_Available") %>' />
        <br />
        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
            Text="Update" />
        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
            Text="Cancel" />
        <br />
        <br />
        </span>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <span>No data was returned.</span>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <span style="">Product_ID:
        <asp:TextBox ID="Product_IDTextBox" runat="server" 
            Text='<%# Bind("Product_ID") %>' />
        <br />
        Product_Type_ID:
        <asp:TextBox ID="Product_Type_IDTextBox" runat="server" 
            Text='<%# Bind("Product_Type_ID") %>' />
        <br />
        Brand_ID:
        <asp:TextBox ID="Brand_IDTextBox" runat="server" 
            Text='<%# Bind("Brand_ID") %>' />
        <br />
        Product_Name:
        <asp:TextBox ID="Product_NameTextBox" runat="server" 
            Text='<%# Bind("Product_Name") %>' />
        <br />
        Product_Info:
        <asp:TextBox ID="Product_InfoTextBox" runat="server" 
            Text='<%# Bind("Product_Info") %>' />
        <br />
        Product_Cost:
        <asp:TextBox ID="Product_CostTextBox" runat="server" 
            Text='<%# Bind("Product_Cost") %>' />
        <br />
        Seller_ID:
        <asp:TextBox ID="Seller_IDTextBox" runat="server" 
            Text='<%# Bind("Seller_ID") %>' />
        <br />
        Product_Image:
        <asp:TextBox ID="Product_ImageTextBox" runat="server" 
            Text='<%# Bind("Product_Image") %>' />
        <br />
        Product_Offer_Available:
        <asp:TextBox ID="Product_Offer_AvailableTextBox" runat="server" 
            Text='<%# Bind("Product_Offer_Available") %>' />
        <br />
        Product_Offer_Detail:
        <asp:TextBox ID="Product_Offer_DetailTextBox" runat="server" 
            Text='<%# Bind("Product_Offer_Detail") %>' />
        <br />
        Product_Replacement_Garentee_available:
        <asp:TextBox ID="Product_Replacement_Garentee_availableTextBox" runat="server" 
            Text='<%# Bind("Product_Replacement_Garentee_available") %>' />
        <br />
        Cash_on_Delivery_Available:
        <asp:TextBox ID="Cash_on_Delivery_AvailableTextBox" runat="server" 
            Text='<%# Bind("Cash_on_Delivery_Available") %>' />
        <br />
        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
            Text="Insert" />
        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
            Text="Clear" />
        <br />
        <br />
        </span>
    </InsertItemTemplate>
    <ItemTemplate>
        <span style="background-color: #FFFBD6;color: #333333;">Product_ID:
        <asp:Label ID="Product_IDLabel" runat="server" 
            Text='<%# Eval("Product_ID") %>' />
        <br />
        Product_Type_ID:
        <asp:Label ID="Product_Type_IDLabel" runat="server" 
            Text='<%# Eval("Product_Type_ID") %>' />
        <br />
        Brand_ID:
        <asp:Label ID="Brand_IDLabel" runat="server" Text='<%# Eval("Brand_ID") %>' />
        <br />
        Product_Name:
        <asp:Label ID="Product_NameLabel" runat="server" 
            Text='<%# Eval("Product_Name") %>' />
        <br />
        Product_Info:
        <asp:Label ID="Product_InfoLabel" runat="server" 
            Text='<%# Eval("Product_Info") %>' />
        <br />
        Product_Cost:
        <asp:Label ID="Product_CostLabel" runat="server" 
            Text='<%# Eval("Product_Cost") %>' />
        <br />
        Seller_ID:
        <asp:Label ID="Seller_IDLabel" runat="server" Text='<%# Eval("Seller_ID") %>' />
        <br />
        Product_Image:
        <asp:Label ID="Product_ImageLabel" runat="server" 
            Text='<%# Eval("Product_Image") %>' />
        <br />
        Product_Offer_Available:
        <asp:Label ID="Product_Offer_AvailableLabel" runat="server" 
            Text='<%# Eval("Product_Offer_Available") %>' />
        <br />
        Product_Offer_Detail:
        <asp:Label ID="Product_Offer_DetailLabel" runat="server" 
            Text='<%# Eval("Product_Offer_Detail") %>' />
        <br />
        Product_Replacement_Garentee_available:
        <asp:Label ID="Product_Replacement_Garentee_availableLabel" runat="server" 
            Text='<%# Eval("Product_Replacement_Garentee_available") %>' />
        <br />
        Cash_on_Delivery_Available:
        <asp:Label ID="Cash_on_Delivery_AvailableLabel" runat="server" 
            Text='<%# Eval("Cash_on_Delivery_Available") %>' />
        <br />
        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
            Text="Delete" />
        <br />
        <br />
        </span>
    </ItemTemplate>
    <LayoutTemplate>
        <div ID="itemPlaceholderContainer" runat="server" 
            style="font-family: Verdana, Arial, Helvetica, sans-serif;">
            <span runat="server" id="itemPlaceholder" />
        </div>
        <div style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
            <asp:DataPager ID="DataPager1" PageSize="3" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                        ShowLastPageButton="True" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <span style="background-color: #FFCC66;font-weight: bold;color: #000080;">
        Product_ID:
        <asp:Label ID="Product_IDLabel" runat="server" 
            Text='<%# Eval("Product_ID") %>' />
        <br />
        Product_Type_ID:
        <asp:Label ID="Product_Type_IDLabel" runat="server" 
            Text='<%# Eval("Product_Type_ID") %>' />
        <br />
        Brand_ID:
        <asp:Label ID="Brand_IDLabel" runat="server" Text='<%# Eval("Brand_ID") %>' />
        <br />
        Product_Name:
        <asp:Label ID="Product_NameLabel" runat="server" 
            Text='<%# Eval("Product_Name") %>' />
        <br />
        Product_Info:
        <asp:Label ID="Product_InfoLabel" runat="server" 
            Text='<%# Eval("Product_Info") %>' />
        <br />
        Product_Cost:
        <asp:Label ID="Product_CostLabel" runat="server" 
            Text='<%# Eval("Product_Cost") %>' />
        <br />
        Seller_ID:
        <asp:Label ID="Seller_IDLabel" runat="server" Text='<%# Eval("Seller_ID") %>' />
        <br />
        Product_Image:
        <asp:Label ID="Product_ImageLabel" runat="server" 
            Text='<%# Eval("Product_Image") %>' />
        <br />
        Product_Offer_Available:
        <asp:Label ID="Product_Offer_AvailableLabel" runat="server" 
            Text='<%# Eval("Product_Offer_Available") %>' />
        <br />
        Product_Offer_Detail:
        <asp:Label ID="Product_Offer_DetailLabel" runat="server" 
            Text='<%# Eval("Product_Offer_Detail") %>' />
        <br />
        Product_Replacement_Garentee_available:
        <asp:Label ID="Product_Replacement_Garentee_availableLabel" runat="server" 
            Text='<%# Eval("Product_Replacement_Garentee_available") %>' />
        <br />
        Cash_on_Delivery_Available:
        <asp:Label ID="Cash_on_Delivery_AvailableLabel" runat="server" 
            Text='<%# Eval("Cash_on_Delivery_Available") %>' />
        <br />
        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
            Text="Delete" />
        <br />
        <br />
        </span>
    </SelectedItemTemplate>
</asp:ListView>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
        ConnectionString="name=db_OnlineShopEntities" 
        DefaultContainerName="db_OnlineShopEntities" EnableDelete="True" 
        EnableFlattening="False" EnableUpdate="True" EntitySetName="tbl_Product"
        EntityTypeFilter="tbl_Product">
    </asp:EntityDataSource>
</asp:Content>

