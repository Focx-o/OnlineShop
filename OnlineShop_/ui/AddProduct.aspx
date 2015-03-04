<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .resize
        {
            resize: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="box" style="padding-left: 5%">
        <asp:Panel ID="AddProductPanel" runat="server" Visible="True">
            <div class="box">
                <br />
                <table width="704" style="margin-left: 5%;">
                    <tr>
                        <td style="width: 200px">
                            Product Type/Category:
                        </td>
                        <td style="width: 254px">
                            <asp:DropDownList ID="ddlProductType" Width="98%" CssClass="field" ValidationGroup="AddProduct"
                                runat="server" DataSourceID="EntityDataSource1" DataTextField="Product_Type"
                                DataValueField="Product_Type_ID">
                            </asp:DropDownList>
                            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=db_OnlineShopEntities"
                                DefaultContainerName="db_OnlineShopEntities" EnableFlattening="False" EntitySetName="tbl_ProductType">
                            </asp:EntityDataSource>
                        </td>
                        <td style="width: 250px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 200px">
                            Product Brand:
                        </td>
                        <td style="width: 254px">
                            <asp:DropDownList ID="ddlProductBrand" Width="98%" CssClass="field" ValidationGroup="AddProduct"
                                runat="server" DataSourceID="EntityDataSource2" DataTextField="Brand" DataValueField="Brand_ID" />
                            <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=db_OnlineShopEntities"
                                DefaultContainerName="db_OnlineShopEntities" EnableFlattening="False" EntitySetName="tbl_Brand">
                            </asp:EntityDataSource>
                        </td>
                        <td style="width: 250px">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 200px">
                            Product Name:
                        </td>
                        <td style="width: 254px">
                            <asp:TextBox CssClass="field" ID="txtProductName" ValidationGroup="AddProduct" runat="server"
                                Width="95%"></asp:TextBox>
                        </td>
                        <td style="width: 250px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtProductName"
                                runat="server" Display="Dynamic" ErrorMessage="Product name required" ValidationGroup="AddProduct"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 200px">
                            Product Info:
                        </td>
                        <td style="width: 254px">
                            <asp:TextBox ID="txtProductInfo" TextMode="MultiLine" Height="100px" ValidationGroup="AddProduct"
                                CssClass="field resize" runat="server" Width="95%"></asp:TextBox>
                        </td>
                        <td style="width: 250px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtProductInfo"
                                runat="server" Display="Dynamic" ErrorMessage="Product info required" ValidationGroup="AddProduct"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 200px">
                            Product Cost:
                        </td>
                        <td style="width: 254px">
                            <asp:TextBox ID="txtProductCost" CssClass="field" runat="server" Width="95%"></asp:TextBox>
                        </td>
                        <td style="width: 250px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtProductCost"
                                runat="server" Display="Dynamic" ErrorMessage="Product cost required" ValidationGroup="AddProduct"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="AddProduct"
                                ControlToValidate="txtProductCost" ErrorMessage="price of the product required"
                                Display="Dynamic" ValidationExpression="^(\d{1,3}(\d{3})*|(\d+))(\.\d{2})?$"
                                ForeColor="Red"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 200px">
                            Product sold by:
                        </td>
                        <td style="width: 254px">
                            <asp:DropDownList ID="ddlseller" Width="98%" CssClass="field" runat="server" DataSourceID="EntityDataSource3"
                                DataTextField="Name" DataValueField="Seller_ID" />
                            <asp:EntityDataSource ID="EntityDataSource3" runat="server" ConnectionString="name=db_OnlineShopEntities"
                                DefaultContainerName="db_OnlineShopEntities" EnableFlattening="False" EntitySetName="tbl_Seller"
                                Select="it.[Seller_ID], it.[Name]">
                            </asp:EntityDataSource>
                        </td>
                        <td style="width: 250px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 200px">
                            Product Image:
                        </td>
                        <td style="width: 254px">
                            <asp:FileUpload runat="server" ID="fileld" />
                        </td>
                        <td style="width: 250px">
                            <asp:RegularExpressionValidator ID="RequiredFieldValidator5" ControlToValidate="fileld"
                                runat="server" Display="Dynamic" ValidationExpression="^.*\.(jpg|JPG|gif|GIF|jpeg|JPEG|PNG|png)$"
                                ErrorMessage="Only .jpg, .png, .gif, .bitmap image are allowed" ValidationGroup="AddProduct"
                                ForeColor="Red" SetFocusOnError="true"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Display="Dynamic" ControlToValidate="fileld"
                                ValidationGroup="AddProduct" ForeColor="Red" runat="server" ErrorMessage="Product image required"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <table>
                                        <tr>
                                            <td style="width: 188px;">
                                                <br />
                                                <asp:CheckBox ID="cbProductAvail" runat="server" Text=" Product Offer available"
                                                    TextAlign="Right" AutoPostBack="true" OnCheckedChanged="cbProductAvail_CheckedChanged" />
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 188px">
                                                <asp:Label runat="server" Visible="false" ID="lblProductOffer" Text="Product Offer Detail:"></asp:Label>
                                            </td>
                                            <td style="width: 254px">
                                                <asp:TextBox ID="txtProductOfferDetail" ValidationGroup="checkPartial" Visible="false"
                                                    runat="server" Width="114%" TextMode="MultiLine" Height="100px" CssClass="field resize"></asp:TextBox>
                                            </td>
                                            <td style="width: 250px">
                                            </td>
                                        </tr>
                                    </table>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:CheckBox ID="cbGarantee" TextAlign="Right" Text=" Product Replacement Garantee available"
                                runat="server" AutoPostBack="false" />
                        </td>
                        <td style="width: 254px">
                        </td>
                        <td style="width: 250px">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:CheckBox ID="cbDelivery" Text=" Cash On Delivery available" TextAlign="Right"
                                runat="server" AutoPostBack="false" />
                        </td>
                        <td style="width: 254px">
                        </td>
                        <td style="width: 250px">
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
                            <asp:Button ID="btnAddProduct" ValidationGroup="AddProduct" runat="server" CssClass="search-submit"
                                Width="200px" Text="Add Product" OnClick="btnAddProduct_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </asp:Panel>
    </div>
</asp:Content>
