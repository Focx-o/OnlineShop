<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageSeller.aspx.cs" Inherits="ManageSeller" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Seller_ID" 
        DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <span style="">Seller_ID:
            <asp:Label ID="Seller_IDLabel" runat="server" Text='<%# Eval("Seller_ID") %>' />
            <br />
            UserID:
            <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            BussinessName:
            <asp:Label ID="BussinessNameLabel" runat="server" 
                Text='<%# Eval("BussinessName") %>' />
            <br />
            GenderID:
            <asp:Label ID="GenderIDLabel" runat="server" Text='<%# Eval("GenderID") %>' />
            <br />
            DOB:
            <asp:Label ID="DOBLabel" runat="server" Text='<%# Eval("DOB") %>' />
            <br />
            BussinessTelephone:
            <asp:Label ID="BussinessTelephoneLabel" runat="server" 
                Text='<%# Eval("BussinessTelephone") %>' />
            <br />
            AdditionalInfo:
            <asp:Label ID="AdditionalInfoLabel" runat="server" 
                Text='<%# Eval("AdditionalInfo") %>' />
            <br />
            Website:
            <asp:Label ID="WebsiteLabel" runat="server" Text='<%# Eval("Website") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            <br />
            SkypeName:
            <asp:Label ID="SkypeNameLabel" runat="server" Text='<%# Eval("SkypeName") %>' />
            <br />
            Mobile:
            <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
            <br />
            Fax:
            <asp:Label ID="FaxLabel" runat="server" Text='<%# Eval("Fax") %>' />
            <br />
            HomeTelephone:
            <asp:Label ID="HomeTelephoneLabel" runat="server" 
                Text='<%# Eval("HomeTelephone") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                Text="Delete" />
            <br />
            <br />
            </span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="">Seller_ID:
            <asp:Label ID="Seller_IDLabel1" runat="server" 
                Text='<%# Eval("Seller_ID") %>' />
            <br />
            UserID:
            <asp:TextBox ID="UserIDTextBox" runat="server" Text='<%# Bind("UserID") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            BussinessName:
            <asp:TextBox ID="BussinessNameTextBox" runat="server" 
                Text='<%# Bind("BussinessName") %>' />
            <br />
            GenderID:
            <asp:TextBox ID="GenderIDTextBox" runat="server" 
                Text='<%# Bind("GenderID") %>' />
            <br />
            DOB:
            <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
            <br />
            BussinessTelephone:
            <asp:TextBox ID="BussinessTelephoneTextBox" runat="server" 
                Text='<%# Bind("BussinessTelephone") %>' />
            <br />
            AdditionalInfo:
            <asp:TextBox ID="AdditionalInfoTextBox" runat="server" 
                Text='<%# Bind("AdditionalInfo") %>' />
            <br />
            Website:
            <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            SkypeName:
            <asp:TextBox ID="SkypeNameTextBox" runat="server" 
                Text='<%# Bind("SkypeName") %>' />
            <br />
            Mobile:
            <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
            <br />
            Fax:
            <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>' />
            <br />
            HomeTelephone:
            <asp:TextBox ID="HomeTelephoneTextBox" runat="server" 
                Text='<%# Bind("HomeTelephone") %>' />
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
            <span style="">UserID:
            <asp:TextBox ID="UserIDTextBox" runat="server" Text='<%# Bind("UserID") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            BussinessName:
            <asp:TextBox ID="BussinessNameTextBox" runat="server" 
                Text='<%# Bind("BussinessName") %>' />
            <br />
            GenderID:
            <asp:TextBox ID="GenderIDTextBox" runat="server" 
                Text='<%# Bind("GenderID") %>' />
            <br />
            DOB:
            <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
            <br />
            BussinessTelephone:
            <asp:TextBox ID="BussinessTelephoneTextBox" runat="server" 
                Text='<%# Bind("BussinessTelephone") %>' />
            <br />
            AdditionalInfo:
            <asp:TextBox ID="AdditionalInfoTextBox" runat="server" 
                Text='<%# Bind("AdditionalInfo") %>' />
            <br />
            Website:
            <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            SkypeName:
            <asp:TextBox ID="SkypeNameTextBox" runat="server" 
                Text='<%# Bind("SkypeName") %>' />
            <br />
            Mobile:
            <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' />
            <br />
            Fax:
            <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>' />
            <br />
            HomeTelephone:
            <asp:TextBox ID="HomeTelephoneTextBox" runat="server" 
                Text='<%# Bind("HomeTelephone") %>' />
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
            <span style="">Seller_ID:
            <asp:Label ID="Seller_IDLabel" runat="server" Text='<%# Eval("Seller_ID") %>' />
            <br />
            UserID:
            <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            BussinessName:
            <asp:Label ID="BussinessNameLabel" runat="server" 
                Text='<%# Eval("BussinessName") %>' />
            <br />
            GenderID:
            <asp:Label ID="GenderIDLabel" runat="server" Text='<%# Eval("GenderID") %>' />
            <br />
            DOB:
            <asp:Label ID="DOBLabel" runat="server" Text='<%# Eval("DOB") %>' />
            <br />
            BussinessTelephone:
            <asp:Label ID="BussinessTelephoneLabel" runat="server" 
                Text='<%# Eval("BussinessTelephone") %>' />
            <br />
            AdditionalInfo:
            <asp:Label ID="AdditionalInfoLabel" runat="server" 
                Text='<%# Eval("AdditionalInfo") %>' />
            <br />
            Website:
            <asp:Label ID="WebsiteLabel" runat="server" Text='<%# Eval("Website") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            <br />
            SkypeName:
            <asp:Label ID="SkypeNameLabel" runat="server" Text='<%# Eval("SkypeName") %>' />
            <br />
            Mobile:
            <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
            <br />
            Fax:
            <asp:Label ID="FaxLabel" runat="server" Text='<%# Eval("Fax") %>' />
            <br />
            HomeTelephone:
            <asp:Label ID="HomeTelephoneLabel" runat="server" 
                Text='<%# Eval("HomeTelephone") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                Text="Delete" />
            <br />
            <br />
            </span>
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
            <span style="">Seller_ID:
            <asp:Label ID="Seller_IDLabel" runat="server" Text='<%# Eval("Seller_ID") %>' />
            <br />
            UserID:
            <asp:Label ID="UserIDLabel" runat="server" Text='<%# Eval("UserID") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            BussinessName:
            <asp:Label ID="BussinessNameLabel" runat="server" 
                Text='<%# Eval("BussinessName") %>' />
            <br />
            GenderID:
            <asp:Label ID="GenderIDLabel" runat="server" Text='<%# Eval("GenderID") %>' />
            <br />
            DOB:
            <asp:Label ID="DOBLabel" runat="server" Text='<%# Eval("DOB") %>' />
            <br />
            BussinessTelephone:
            <asp:Label ID="BussinessTelephoneLabel" runat="server" 
                Text='<%# Eval("BussinessTelephone") %>' />
            <br />
            AdditionalInfo:
            <asp:Label ID="AdditionalInfoLabel" runat="server" 
                Text='<%# Eval("AdditionalInfo") %>' />
            <br />
            Website:
            <asp:Label ID="WebsiteLabel" runat="server" Text='<%# Eval("Website") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            <br />
            SkypeName:
            <asp:Label ID="SkypeNameLabel" runat="server" Text='<%# Eval("SkypeName") %>' />
            <br />
            Mobile:
            <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
            <br />
            Fax:
            <asp:Label ID="FaxLabel" runat="server" Text='<%# Eval("Fax") %>' />
            <br />
            HomeTelephone:
            <asp:Label ID="HomeTelephoneLabel" runat="server" 
                Text='<%# Eval("HomeTelephone") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" 
                Text="Delete" />
            <br />
            <br />
            </span>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_OnlineShopConnectionString %>" 
        DeleteCommand="DELETE FROM [tbl_Seller] WHERE [Seller ID] = @Seller_ID" 
        InsertCommand="INSERT INTO [tbl_Seller] ([UserID], [Name], [BussinessName], [GenderID], [DOB], [BussinessTelephone], [AdditionalInfo], [Website], [Email], [SkypeName], [Mobile], [Fax], [HomeTelephone]) VALUES (@UserID, @Name, @BussinessName, @GenderID, @DOB, @BussinessTelephone, @AdditionalInfo, @Website, @Email, @SkypeName, @Mobile, @Fax, @HomeTelephone)" 
        SelectCommand="SELECT [Seller ID] AS Seller_ID, [UserID], [Name], [BussinessName], [GenderID], [DOB], [BussinessTelephone], [AdditionalInfo], [Website], [Email], [SkypeName], [Mobile], [Fax], [HomeTelephone] FROM [tbl_Seller]" 
        UpdateCommand="UPDATE [tbl_Seller] SET [UserID] = @UserID, [Name] = @Name, [BussinessName] = @BussinessName, [GenderID] = @GenderID, [DOB] = @DOB, [BussinessTelephone] = @BussinessTelephone, [AdditionalInfo] = @AdditionalInfo, [Website] = @Website, [Email] = @Email, [SkypeName] = @SkypeName, [Mobile] = @Mobile, [Fax] = @Fax, [HomeTelephone] = @HomeTelephone WHERE [Seller ID] = @Seller_ID">
        <DeleteParameters>
            <asp:Parameter Name="Seller_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserID" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="BussinessName" Type="String" />
            <asp:Parameter Name="GenderID" Type="Int32" />
            <asp:Parameter DbType="Date" Name="DOB" />
            <asp:Parameter Name="BussinessTelephone" Type="String" />
            <asp:Parameter Name="AdditionalInfo" Type="String" />
            <asp:Parameter Name="Website" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="SkypeName" Type="String" />
            <asp:Parameter Name="Mobile" Type="String" />
            <asp:Parameter Name="Fax" Type="String" />
            <asp:Parameter Name="HomeTelephone" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserID" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="BussinessName" Type="String" />
            <asp:Parameter Name="GenderID" Type="Int32" />
            <asp:Parameter DbType="Date" Name="DOB" />
            <asp:Parameter Name="BussinessTelephone" Type="String" />
            <asp:Parameter Name="AdditionalInfo" Type="String" />
            <asp:Parameter Name="Website" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="SkypeName" Type="String" />
            <asp:Parameter Name="Mobile" Type="String" />
            <asp:Parameter Name="Fax" Type="String" />
            <asp:Parameter Name="HomeTelephone" Type="String" />
            <asp:Parameter Name="Seller_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

