<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ListOfOrder.aspx.cs" Inherits="ListOfOrder" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="ProductOrdered">
        <table width="100%">
            <tr>
                <td colspan="4" class="box">
                    <h2 style="text-align: center; font-family: Times New Roman Baltic; font-weight: 800">
                        My Order
                    </h2>
                </td>
            </tr>
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td class="box" width="65%">
                            <h2>
                                Order ID :
                                <%# Eval("Order ID") %></h2>
                        </td>
                        <td class="box" width="15%">
                            <h2>
                                Total Amount</h2>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <table>
                                <tr> 
                                    <td>
                                        <table>
                                            <tr>
                                                <td>
                                                    Customer ID :
                                                    <%# Eval("[Customer ID]") %>
                                                    <asp:Label runat="server" ID="lblorderid" Visible="false" Text='<%# Eval("Order ID") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Delivery Address :
                                                    <%# Eval("[Delivery Address]")%>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Payment Mode :
                                                    <%# Eval("[Payment Mode]") %>
                                                </td>
                                            </tr>
                                            <tr>
                                            <tr>
                                                <td>
                                                    Delivery Status :
                                                    <%# Eval("[Delivery Status]")%>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Order Date :
                                                    <%# Eval("[Order Date]")%>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Delivery Date :
                                                    <%# Eval("[Delivery Date]")%>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Delivery Notice :
                                                    <%# Eval("[Delivery Notice]")%>
                                                </td>
                                            </tr>
                                        </table>
                                        <asp:Button ID="btnDetail" OnClick="btnDetail_Click" CssClass="search-submit" runat="server" Text="Detail" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td valign="middle" align="center">
                            Rs
                            <%# Eval("[Total Amount]") %>
                        </td>
                        <td>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:ListView>
        </table>
    </div>
</asp:Content>
