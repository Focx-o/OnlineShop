<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="OrderConfirm.aspx.cs" Inherits="OrderConfirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="orderConfirm">
        <table>
            <tr>
                <td class="box box-content">
                    Delivery Address
                </td>
                <td class="box box-content" width="100px" align="center">
                    Payment Mode
                </td>
                <td class="box box-content">
                    Order Date
                </td>
                <td class="box box-content" width="80px" align="center">
                    Total Amount
                </td>
            </tr>
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td align="center" class="box box-content">
                            <%# Eval("[Delivery Address]") %>
                        </td>
                        <td align="center" class="box box-content">
                            <%# Eval("[Payment Mode]") %>
                        </td>
                        <td align="center" class="box box-content">
                            <%# Eval("[Order Date]") %>
                        </td>
                        <td align="center" class="box box-content">
                            Rs
                            <%# Eval("[Total Amount]") %>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </table>
    </div>
    <br />
    <br />
    <div id="updateOrder" align="center">
        <table>
            <tr>
                <td valign="top">
                    <h2>
                        <asp:Label runat="server" Text="Shipping/Delivery Address:"></asp:Label></h2>
                </td>
                <td>
                    <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" Width="298px" Height="100px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" runat="server"
                        ForeColor="Red" ErrorMessage="Please enter Your shipping address" ControlToValidate="txtaddress"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <h2>
                        <asp:Label ID="Label1" runat="server" Text="Payment Mode"></asp:Label></h2>
                </td>
                <td>
                    <asp:ListBox runat="server" ID="lbpayment" Width="300px" ForeColor="Gray">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem Value="Cash On Delivery" Text="Cash On Delivery"></asp:ListItem>
                        <asp:ListItem Value="Credit Cart" Text="Credit Cart"></asp:ListItem>
                    </asp:ListBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator Display="Dynamic" ForeColor="Red" ID="RequiredFieldValidator2"
                        runat="server" ErrorMessage="Please select your payment mode" ControlToValidate="lbpayment"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <asp:Button runat="server" ID="btnUpdateOrder" CssClass="search-submit" Text="Update Order"
                        Width="100px" OnClick="btnUpdateOrder_Click" />
                </td>
                <td>
                    <asp:Button runat="server" ID="btnOrderConfirm" CssClass="search-submit" Text="Confirm Order"
                        Width="100px" OnClick="btnOrderConfirm_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
