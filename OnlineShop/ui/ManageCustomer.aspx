<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageCustomer.aspx.cs" Inherits="ManageCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:ListView ID="ListView1" runat="server" DataKeyNames="Customer_ID" 
        DataSourceID="SqlDataSource1">
    <AlternatingItemTemplate>
        <span style="">Customer_ID:
        <asp:Label ID="Customer_IDLabel" runat="server" 
            Text='<%# Eval("Customer_ID") %>' />
        <br />
        Email:
        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
        <br />
        column1:
        <asp:Label ID="column1Label" runat="server" Text='<%# Eval("column1") %>' />
        <br />
        Organistation_Number:
        <asp:Label ID="Organistation_NumberLabel" runat="server" 
            Text='<%# Eval("Organistation_Number") %>' />
        <br />
        Contact:
        <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
        <br />
        column2:
        <asp:Label ID="column2Label" runat="server" Text='<%# Eval("column2") %>' />
        <br />
        Street_Address:
        <asp:Label ID="Street_AddressLabel" runat="server" 
            Text='<%# Eval("Street_Address") %>' />
        <br />
        Country:
        <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
        <br />
        City:
        <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
        <br />
        Postal_Code:
        <asp:Label ID="Postal_CodeLabel" runat="server" 
            Text='<%# Eval("Postal_Code") %>' />
        <br />
        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
            Text="Delete" />
<br /><br /></span>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <span style="">Customer_ID:
        <asp:Label ID="Customer_IDLabel1" runat="server" 
            Text='<%# Eval("Customer_ID") %>' />
        <br />
        Email:
        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
        <br />
        column1:
        <asp:TextBox ID="column1TextBox" runat="server" Text='<%# Bind("column1") %>' />
        <br />
        Organistation_Number:
        <asp:TextBox ID="Organistation_NumberTextBox" runat="server" 
            Text='<%# Bind("Organistation_Number") %>' />
        <br />
        Contact:
        <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
        <br />
        column2:
        <asp:TextBox ID="column2TextBox" runat="server" Text='<%# Bind("column2") %>' />
        <br />
        Street_Address:
        <asp:TextBox ID="Street_AddressTextBox" runat="server" 
            Text='<%# Bind("Street_Address") %>' />
        <br />
        Country:
        <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
        <br />
        City:
        <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
        <br />
        Postal_Code:
        <asp:TextBox ID="Postal_CodeTextBox" runat="server" 
            Text='<%# Bind("Postal_Code") %>' />
        <br />
        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
            Text="Update" />
        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
            Text="Cancel" />
        <br /><br /></span>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <span>No data was returned.</span>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <span style="">Email:
        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
        <br />column1:
        <asp:TextBox ID="column1TextBox" runat="server" Text='<%# Bind("column1") %>' />
        <br />Organistation_Number:
        <asp:TextBox ID="Organistation_NumberTextBox" runat="server" 
            Text='<%# Bind("Organistation_Number") %>' />
        <br />Contact:
        <asp:TextBox ID="ContactTextBox" runat="server" Text='<%# Bind("Contact") %>' />
        <br />column2:
        <asp:TextBox ID="column2TextBox" runat="server" Text='<%# Bind("column2") %>' />
        <br />Street_Address:
        <asp:TextBox ID="Street_AddressTextBox" runat="server" 
            Text='<%# Bind("Street_Address") %>' />
        <br />Country:
        <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
        <br />City:
        <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
        <br />Postal_Code:
        <asp:TextBox ID="Postal_CodeTextBox" runat="server" 
            Text='<%# Bind("Postal_Code") %>' />
        <br />
        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
            Text="Insert" />
        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
            Text="Clear" />
        <br /><br /></span>
    </InsertItemTemplate>
    <ItemTemplate>
        <span style="">Customer_ID:
        <asp:Label ID="Customer_IDLabel" runat="server" 
            Text='<%# Eval("Customer_ID") %>' />
        <br />
        Email:
        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
        <br />
        column1:
        <asp:Label ID="column1Label" runat="server" Text='<%# Eval("column1") %>' />
        <br />
        Organistation_Number:
        <asp:Label ID="Organistation_NumberLabel" runat="server" 
            Text='<%# Eval("Organistation_Number") %>' />
        <br />
        Contact:
        <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
        <br />
        column2:
        <asp:Label ID="column2Label" runat="server" Text='<%# Eval("column2") %>' />
        <br />
        Street_Address:
        <asp:Label ID="Street_AddressLabel" runat="server" 
            Text='<%# Eval("Street_Address") %>' />
        <br />
        Country:
        <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
        <br />
        City:
        <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
        <br />
        Postal_Code:
        <asp:Label ID="Postal_CodeLabel" runat="server" 
            Text='<%# Eval("Postal_Code") %>' />
        <br />
        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
            Text="Delete" />
<br /><br /></span>
    </ItemTemplate>
    <LayoutTemplate>
        <div ID="itemPlaceholderContainer" runat="server" style="">
            <span runat="server" id="itemPlaceholder" />
        </div>
        <div style="">
            <asp:DataPager ID="DataPager1" PageSize="3" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                        ShowLastPageButton="True" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <span style="">Customer_ID:
        <asp:Label ID="Customer_IDLabel" runat="server" 
            Text='<%# Eval("Customer_ID") %>' />
        <br />
        Email:
        <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
        <br />
        column1:
        <asp:Label ID="column1Label" runat="server" Text='<%# Eval("column1") %>' />
        <br />
        Organistation_Number:
        <asp:Label ID="Organistation_NumberLabel" runat="server" 
            Text='<%# Eval("Organistation_Number") %>' />
        <br />
        Contact:
        <asp:Label ID="ContactLabel" runat="server" Text='<%# Eval("Contact") %>' />
        <br />
        column2:
        <asp:Label ID="column2Label" runat="server" Text='<%# Eval("column2") %>' />
        <br />
        Street_Address:
        <asp:Label ID="Street_AddressLabel" runat="server" 
            Text='<%# Eval("Street_Address") %>' />
        <br />
        Country:
        <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
        <br />
        City:
        <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
        <br />
        Postal_Code:
        <asp:Label ID="Postal_CodeLabel" runat="server" 
            Text='<%# Eval("Postal_Code") %>' />
        <br />
        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
            Text="Delete" />
<br /><br /></span>
    </SelectedItemTemplate>
</asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_OnlineShopConnectionString %>" 
        DeleteCommand="DELETE FROM [tbl_Customer] WHERE [Customer ID] = @Customer_ID" 
        InsertCommand="INSERT INTO [tbl_Customer] ([Email], [Company/Name], [Organistation Number], [Contact], [C/O], [Street Address], [Country], [City], [Postal Code]) VALUES (@Email, @column1, @Organistation_Number, @Contact, @column2, @Street_Address, @Country, @City, @Postal_Code)" 
        SelectCommand="SELECT [Customer ID] AS Customer_ID, [Email], [Company/Name] AS column1, [Organistation Number] AS Organistation_Number, [Contact], [C/O] AS column2, [Street Address] AS Street_Address, [Country], [City], [Postal Code] AS Postal_Code FROM [tbl_Customer]" 
        UpdateCommand="UPDATE [tbl_Customer] SET [Email] = @Email, [Company/Name] = @column1, [Organistation Number] = @Organistation_Number, [Contact] = @Contact, [C/O] = @column2, [Street Address] = @Street_Address, [Country] = @Country, [City] = @City, [Postal Code] = @Postal_Code WHERE [Customer ID] = @Customer_ID">
        <DeleteParameters>
            <asp:Parameter Name="Customer_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="column1" Type="String" />
            <asp:Parameter Name="Organistation_Number" Type="String" />
            <asp:Parameter Name="Contact" Type="String" />
            <asp:Parameter Name="column2" Type="String" />
            <asp:Parameter Name="Street_Address" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Postal_Code" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="column1" Type="String" />
            <asp:Parameter Name="Organistation_Number" Type="String" />
            <asp:Parameter Name="Contact" Type="String" />
            <asp:Parameter Name="column2" Type="String" />
            <asp:Parameter Name="Street_Address" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Postal_Code" Type="String" />
            <asp:Parameter Name="Customer_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

