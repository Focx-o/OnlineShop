<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="CustomerAccount.aspx.cs" Inherits="CustomerAccount" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div align="center">
        <asp:DetailsView ID="DetailsView1" runat="server" Height="100px" Width="50%" AutoGenerateRows="False"
            DataKeyNames="Customer_ID" DataSourceID="SqlDataSource1" CellPadding="3" BorderStyle="None"
            CellSpacing="10">
            <Fields>
                <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" InsertVisible="False"
                    ReadOnly="True" SortExpression="Customer_ID">
                    <ItemStyle CssClass="box box-content" Width="90%" />
                     <HeaderStyle CssClass="box box-content" />
                </asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email">
                    <ItemStyle CssClass="box box-content" Width="90%" />
                    <ControlStyle Width="100%" />
                    <HeaderStyle CssClass="box box-content" />
                </asp:BoundField>
                <asp:BoundField DataField="column1" HeaderText="Company/Your Name" SortExpression="column1">
                    <ItemStyle CssClass="box box-content" Width="90%" />
                    <ControlStyle Width="100%" />
                     <HeaderStyle CssClass="box box-content" />
                </asp:BoundField>
                <asp:BoundField DataField="Organistation_Number" HeaderText="Organistation Number (Optional)"
                    SortExpression="Organistation_Number">
                    <ItemStyle CssClass="box box-content" Width="90%" />
                    <ControlStyle Width="100%" />
                     <HeaderStyle CssClass="box box-content" />
                </asp:BoundField>
                <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact">
                    <ItemStyle CssClass="box box-content" Width="90%" />
                    <ControlStyle Width="100%" />
                    <ControlStyle Width="100%" />
                     <HeaderStyle CssClass="box box-content" />
                </asp:BoundField>
                <asp:BoundField DataField="column2" HeaderText="C/O (Optional)" SortExpression="column2">
                    <ItemStyle CssClass="box box-content" Width="90%" />
                    <ControlStyle Width="100%" />
                     <HeaderStyle CssClass="box box-content" />
                </asp:BoundField>
                <asp:BoundField DataField="Street_Address" HeaderText="Street_Address" SortExpression="Street_Address">
                    <ItemStyle CssClass="box box-content" Width="90%" />
                    <ControlStyle Width="100%" />
                     <HeaderStyle CssClass="box box-content" />
                </asp:BoundField>
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country">
                    <ItemStyle CssClass="box box-content" Width="90%" />
                    <ControlStyle Width="100%" />
                     <HeaderStyle CssClass="box box-content" />
                </asp:BoundField>
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City">
                    <ItemStyle CssClass="box box-content" Width="200px" />
                    <ControlStyle Width="100%" />
                     <HeaderStyle CssClass="box box-content" />
                </asp:BoundField>
                <asp:BoundField DataField="Postal_Code" HeaderText="Postal_Code" SortExpression="Postal_Code">
                    <ItemStyle CssClass="box box-content" Width="90%" />
                    <ControlStyle Width="100%" />
                     <HeaderStyle CssClass="box box-content" />
                </asp:BoundField>
                <asp:CommandField ShowEditButton="True">
                    <ItemStyle HorizontalAlign="Center" CssClass="box box-content" VerticalAlign="Middle" />
                </asp:CommandField>
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=ART-ATTACK-PC\ANKAN;Initial Catalog=db_OnlineShop;Integrated Security=True;MultipleActiveResultSets=True"
            DeleteCommand="DELETE FROM [tbl_Customer] WHERE [Customer ID] = @Customer_ID"
            InsertCommand="INSERT INTO [tbl_Customer] ([Email], [Company/Name], [Organistation Number], [Contact], [C/O], [Street Address], [Country], [City], [Postal Code]) VALUES (@Email, @column1, @Organistation_Number, @Contact, @column2, @Street_Address, @Country, @City, @Postal_Code)"
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Customer ID] AS Customer_ID, [Email], [Company/Name] AS column1, [Organistation Number] AS Organistation_Number, [Contact], [C/O] AS column2, [Street Address] AS Street_Address, [Country], [City], [Postal Code] AS Postal_Code FROM [tbl_Customer] WHERE ([Email] = @Email)"
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
            <SelectParameters>
                <asp:SessionParameter Name="Email" SessionField="Get_mail" Type="String" />
            </SelectParameters>
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
    </div>
</asp:Content>
