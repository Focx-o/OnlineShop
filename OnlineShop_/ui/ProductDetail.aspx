<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ProductDetail.aspx.cs" Inherits="ProductDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style2
        {
            width: 421px;
        }
        .style3
        {
            width: 209px;
        }
        .style4
        {
            height: 21px;
            width: 209px;
        }
        .style7
        {
            width: 5px;
        }
        .style9
        {
            width: 281px;
        }
        .style10
        {
            width: 219px;
        }
        .style11
        {
            height: 21px;
            width: 219px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="products-detail products box">
        <table style="width: 100%; border: 1px solid gray">
            <tr>
                <td>
                    &nbsp;
                </td>
                <td class="style9">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td valign="middle" class="style9">
                    <asp:Image runat="server" ID="imageProduct" Height="350px" Width="274px" ImageUrl='<%# Eval("Product Image") %>' />
                </td>
                <td valign="top" class="style2">
                    <table style="border: 1px solid gray">
                        <tr>
                            <td colspan="2" style="background-color: Gray; padding: 10px">
                                <h1 style="text-align: center">
                                    <asp:Label runat="server" Style="text-align: center; color: White; font-family: Times New Roman Baltic;"
                                        Text='<%# Eval("Product Name") %>' ID="lblhead"></asp:Label></h1>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" style="border: 1px solid gray; padding-left: 3px">
                                <asp:Label ID="Label4" runat="server" Text="Product ID"></asp:Label>
                            </td>
                            <td class="style11" style="border: 1px solid gray;padding-left:3px">
                                <asp:Label ID="Product_IDLabel" runat="server" Text='<%# Eval("Product Type ID") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" style="border: 1px solid gray; padding-left: 3px">
                                <asp:Label ID="Label15" runat="server" Text="Product Type"></asp:Label>
                            </td>
                            <td class="style11" style="border: 1px solid gray;padding-left:3px">
                             <asp:Label ID="Product_Type_IDLabel" runat="server" Text='<%# Eval("Product Type ID") %>' />
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" style="border: 1px solid gray; padding-left: 3px">
                                <asp:Label ID="Label7" runat="server" Text="Product Info"></asp:Label>
                            </td>
                            <td class="style11" style="border: 1px solid gray;padding-left:3px">
                                <asp:Label ID="Product_InfoLabel" runat="server" Text='<%# Eval("Product Info") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" style="border: 1px solid gray; padding-left: 3px">
                                <asp:Label ID="Label17" runat="server" Text="Brand"></asp:Label>
                            </td>
                            <td class="style11" style="border: 1px solid gray;padding-left:3px">
                                <asp:Label ID="Brand_IDLabel" runat="server" Text='<%# Eval("Brand ID") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="style3" style="border: 1px solid gray; padding-left: 3px">
                                <asp:Label ID="Label5" runat="server" Text="Seller"></asp:Label>
                            </td>
                            <td class="style10" style="border: 1px solid gray;padding-left:3px">
                                <asp:Label ID="Seller_IDLabel" runat="server" Text='<%# Eval("Seller ID") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="style3" style="border: 1px solid gray; padding-left: 3px">
                                <asp:Label ID="Label6" runat="server" Text="Price"></asp:Label>
                            </td>
                            <td class="style10 price" style="border: 1px solid gray;padding-left:3px">
                                Rs&nbsp;<asp:Label ID="Product_CostLabel" runat="server" Text='<%# Eval("Product Cost") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" style="border: 1px solid gray; padding-left: 3px">
                                <asp:Label ID="Label1" runat="server" Text="Product Offer Available"></asp:Label>
                            </td>
                            <td class="style11" style="border: 1px solid gray;padding-left:3px">
                                <asp:Label ID="Product_Offer_AvailableLabel" runat="server" Text='<%# Eval("Product Offer Available") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" style="border: 1px solid gray; padding-left: 3px">
                                <asp:Label ID="Label19" runat="server" Text="Product Offer Detail"></asp:Label>
                            </td>
                            <td class="style11" style="border: 1px solid gray;padding-left:3px">
                                <asp:Label ID="Product_Offer_DetailLabel" runat="server" Text='<%# Eval("Product Offer Detail") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" style="border: 1px solid gray; padding-left: 3px">
                                <asp:Label ID="Label3" runat="server" Text="Replacement Garentee available"></asp:Label>
                            </td>
                            <td class="style11" style="border: 1px solid gray;padding-left:3px">
                                <asp:Label ID="Product_Replacement_Garentee_availableLabel" runat="server" Text='<%# Eval("Product Replacement Garentee available") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" style="border: 1px solid gray; padding-left: 3px">
                                <asp:Label ID="Label13" runat="server" Text="Cash on delivery available"></asp:Label>
                            </td>
                            <td class="style11" style="border: 1px solid gray; padding-left: 3px">
                                <asp:Label ID="Cash_on_Delivery_AvailableLabel" runat="server" Text='<%# Eval("Cash on Delivery Available") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Button ID="btnBuyNow" CssClass="search-submit" runat="server" Text="Buy Now" />
                            </td>
                            <td align="left">
                                <asp:Button ID="btnAddToCart" CssClass="search-submit" runat="server" Text="Add to Cart" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td class="style9">
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
