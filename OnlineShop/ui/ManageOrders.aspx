<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageOrders.aspx.cs" Inherits="ManageOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:ListView ID="ListView1" runat="server" 
        DataKeyNames="ID,Order_ID,Customer_ID,Delivery_Status,Order_Date" 
        DataSourceID="EntityDataSource1">
        <AlternatingItemTemplate>
            <span style="">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Order_ID:
            <asp:Label ID="Order_IDLabel" runat="server" Text='<%# Eval("Order_ID") %>' />
            <br />
            Customer_ID:
            <asp:Label ID="Customer_IDLabel" runat="server" 
                Text='<%# Eval("Customer_ID") %>' />
            <br />
            Total_Amount:
            <asp:Label ID="Total_AmountLabel" runat="server" 
                Text='<%# Eval("Total_Amount") %>' />
            <br />
            Delivery_Address:
            <asp:Label ID="Delivery_AddressLabel" runat="server" 
                Text='<%# Eval("Delivery_Address") %>' />
            <br />
            Payment_Mode:
            <asp:Label ID="Payment_ModeLabel" runat="server" 
                Text='<%# Eval("Payment_Mode") %>' />
            <br />
            Delivery_Status:
            <asp:Label ID="Delivery_StatusLabel" runat="server" 
                Text='<%# Eval("Delivery_Status") %>' />
            <br />
            Order_Date:
            <asp:Label ID="Order_DateLabel" runat="server" 
                Text='<%# Eval("Order_Date") %>' />
            <br />
            Delivery_Date:
            <asp:Label ID="Delivery_DateLabel" runat="server" 
                Text='<%# Eval("Delivery_Date") %>' />
            <br />
            Delivery_Notice:
            <asp:Label ID="Delivery_NoticeLabel" runat="server" 
                Text='<%# Eval("Delivery_Notice") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
<br /><br /></span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="">ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Order_ID:
            <asp:Label ID="Order_IDLabel1" runat="server" Text='<%# Eval("Order_ID") %>' />
            <br />
            Customer_ID:
            <asp:Label ID="Customer_IDLabel1" runat="server" 
                Text='<%# Eval("Customer_ID") %>' />
            <br />
            Total_Amount:
            <asp:TextBox ID="Total_AmountTextBox" runat="server" 
                Text='<%# Bind("Total_Amount") %>' />
            <br />
            Delivery_Address:
            <asp:TextBox ID="Delivery_AddressTextBox" runat="server" 
                Text='<%# Bind("Delivery_Address") %>' />
            <br />
            Payment_Mode:
            <asp:TextBox ID="Payment_ModeTextBox" runat="server" 
                Text='<%# Bind("Payment_Mode") %>' />
            <br />
            Delivery_Status:
            <asp:Label ID="Delivery_StatusLabel1" runat="server" 
                Text='<%# Eval("Delivery_Status") %>' />
            <br />
            Order_Date:
            <asp:Label ID="Order_DateLabel1" runat="server" 
                Text='<%# Eval("Order_Date") %>' />
            <br />
            Delivery_Date:
            <asp:TextBox ID="Delivery_DateTextBox" runat="server" 
                Text='<%# Bind("Delivery_Date") %>' />
            <br />
            Delivery_Notice:
            <asp:TextBox ID="Delivery_NoticeTextBox" runat="server" 
                Text='<%# Bind("Delivery_Notice") %>' />
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
            <span style="">ID:
            <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
            <br />Order_ID:
            <asp:TextBox ID="Order_IDTextBox" runat="server" 
                Text='<%# Bind("Order_ID") %>' />
            <br />Customer_ID:
            <asp:TextBox ID="Customer_IDTextBox" runat="server" 
                Text='<%# Bind("Customer_ID") %>' />
            <br />Total_Amount:
            <asp:TextBox ID="Total_AmountTextBox" runat="server" 
                Text='<%# Bind("Total_Amount") %>' />
            <br />Delivery_Address:
            <asp:TextBox ID="Delivery_AddressTextBox" runat="server" 
                Text='<%# Bind("Delivery_Address") %>' />
            <br />Payment_Mode:
            <asp:TextBox ID="Payment_ModeTextBox" runat="server" 
                Text='<%# Bind("Payment_Mode") %>' />
            <br />Delivery_Status:
            <asp:TextBox ID="Delivery_StatusTextBox" runat="server" 
                Text='<%# Bind("Delivery_Status") %>' />
            <br />Order_Date:
            <asp:TextBox ID="Order_DateTextBox" runat="server" 
                Text='<%# Bind("Order_Date") %>' />
            <br />Delivery_Date:
            <asp:TextBox ID="Delivery_DateTextBox" runat="server" 
                Text='<%# Bind("Delivery_Date") %>' />
            <br />Delivery_Notice:
            <asp:TextBox ID="Delivery_NoticeTextBox" runat="server" 
                Text='<%# Bind("Delivery_Notice") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Clear" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Order_ID:
            <asp:Label ID="Order_IDLabel" runat="server" Text='<%# Eval("Order_ID") %>' />
            <br />
            Customer_ID:
            <asp:Label ID="Customer_IDLabel" runat="server" 
                Text='<%# Eval("Customer_ID") %>' />
            <br />
            Total_Amount:
            <asp:Label ID="Total_AmountLabel" runat="server" 
                Text='<%# Eval("Total_Amount") %>' />
            <br />
            Delivery_Address:
            <asp:Label ID="Delivery_AddressLabel" runat="server" 
                Text='<%# Eval("Delivery_Address") %>' />
            <br />
            Payment_Mode:
            <asp:Label ID="Payment_ModeLabel" runat="server" 
                Text='<%# Eval("Payment_Mode") %>' />
            <br />
            Delivery_Status:
            <asp:Label ID="Delivery_StatusLabel" runat="server" 
                Text='<%# Eval("Delivery_Status") %>' />
            <br />
            Order_Date:
            <asp:Label ID="Order_DateLabel" runat="server" 
                Text='<%# Eval("Order_Date") %>' />
            <br />
            Delivery_Date:
            <asp:Label ID="Delivery_DateLabel" runat="server" 
                Text='<%# Eval("Delivery_Date") %>' />
            <br />
            Delivery_Notice:
            <asp:Label ID="Delivery_NoticeLabel" runat="server" 
                Text='<%# Eval("Delivery_Notice") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
<br /><br /></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
                <asp:DataPager ID="DataPager1" pagesize="3" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                            ShowLastPageButton="True" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Order_ID:
            <asp:Label ID="Order_IDLabel" runat="server" Text='<%# Eval("Order_ID") %>' />
            <br />
            Customer_ID:
            <asp:Label ID="Customer_IDLabel" runat="server" 
                Text='<%# Eval("Customer_ID") %>' />
            <br />
            Total_Amount:
            <asp:Label ID="Total_AmountLabel" runat="server" 
                Text='<%# Eval("Total_Amount") %>' />
            <br />
            Delivery_Address:
            <asp:Label ID="Delivery_AddressLabel" runat="server" 
                Text='<%# Eval("Delivery_Address") %>' />
            <br />
            Payment_Mode:
            <asp:Label ID="Payment_ModeLabel" runat="server" 
                Text='<%# Eval("Payment_Mode") %>' />
            <br />
            Delivery_Status:
            <asp:Label ID="Delivery_StatusLabel" runat="server" 
                Text='<%# Eval("Delivery_Status") %>' />
            <br />
            Order_Date:
            <asp:Label ID="Order_DateLabel" runat="server" 
                Text='<%# Eval("Order_Date") %>' />
            <br />
            Delivery_Date:
            <asp:Label ID="Delivery_DateLabel" runat="server" 
                Text='<%# Eval("Delivery_Date") %>' />
            <br />
            Delivery_Notice:
            <asp:Label ID="Delivery_NoticeLabel" runat="server" 
                Text='<%# Eval("Delivery_Notice") %>' />
            <br />
            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
<br /><br /></span>
        </SelectedItemTemplate>
    </asp:ListView>
    
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
        ConnectionString="name=db_OnlineShopEntities" 
        DefaultContainerName="db_OnlineShopEntities" EnableDelete="True" 
        EnableFlattening="False" EnableUpdate="True" EntitySetName="tbl_Order">
    </asp:EntityDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_OnlineShopConnectionString %>" 
        SelectCommand="SELECT * FROM [tbl_Order]"></asp:SqlDataSource>
    
</asp:Content>

