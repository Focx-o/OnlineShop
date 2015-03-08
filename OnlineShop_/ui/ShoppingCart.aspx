<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ShoppingCart.aspx.cs" Inherits="ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%">
        <tr>
            <td colspan="6" class="box">
                <h2>
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
            <td class="box" width="5%">
                <h2>
                    QTY</h2>
            </td>
            <td class="box" width="15%">
                <h2>
                    PRICE</h2>
            </td>
            <td class="box" width="15%">
                <h2>
                    SUBTOTAL</h2>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <!---cart items----->
        <tr>
            <td>
            </td>
            <td>
                item
            </td>
            <td>
                qty
            </td>
            <td>
                price
            </td>
            <td>
                subtotal
            </td>
            <td>
            </td>
        </tr>
    </table>
    <div align="right" style=" padding-right:70px">
        <asp:Button Text="PLACE ORDER" CssClass="search-submit" Width="100px" runat="server"
            ID="btnShop" />
    </div>
</asp:Content>
