<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ShoppingCart.aspx.cs" Inherits="ShoppingCart" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="CartProducts">
        <table width="100%">
            <tr>
                <td colspan="4" class="box">
                    <h2 style="text-align: center; font-family: Times New Roman Baltic; font-weight: 800">
                        YOUR SHOPPING CART</h2>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
                <td class="box" width="65%">
                    <h2>
                        ITEM</h2>
                </td>
                <td class="box" width="15%">
                    <h2>
                        PRICE</h2>
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <!---cart items----->
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <table>
                                <tr>
                                    <td>
                                        <asp:LinkButton runat="server" ID="lbtnProductDetail" OnClick="ProductDetail_click">
                                            <asp:Image runat="server" ID="imageProduct" Height="150px" Width="174px" ImageUrl='<%# Eval("Product Image") %>' /></asp:LinkButton>
                                    </td>
                                    <td>
                                        <table>
                                            <tr>
                                                <td>
                                                    Product Name :
                                                    <%# Eval("[Product Name]") %>
                                                    <asp:Label runat="server" ID="lblproductid" Visible="false" Text='<%#Eval("[Product ID]")%>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Seller :
                                                    <%# Eval("[BussinessName]")%>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Product Info :
                                                    <%# Eval("[Product Info]") %>
                                                </td>
                                            </tr>
                                        </table>
                                        <asp:Button ID="btnremove" CssClass="search-submit" OnClick="btnremove_click" runat="server"
                                            Text="Remove" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td valign="middle" align="center">
                            Rs
                            <%# Eval("[Product Cost]") %>
                        </td>
                        <td>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
            <tr>
                <td>
                </td>
                <td align="right">
                  <h2>Estimated Total :</h2>  
                </td>
            </tr>
        </table>
        <div align="right" style="padding-right: 70px">
            <asp:Button Text="PLACE ORDER" CssClass="search-submit" Width="100px" runat="server"
                ID="btnShop" OnClick="btnShop_Click" />
        </div>
    </div>
</asp:Content>
