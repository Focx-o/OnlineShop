<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Online Shopping India - Shop Online for Books, Mobile Phones, Digital Cameras,
        Watches & More</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Content Slider -->
    <div id="slider" class="box">
        <div id="slider-holder">
            <ul>
                <li><a href="#">
                    <img src="css/images/slide1.jpg" alt="" /></a></li>
                <li><a href="#">
                    <img src="css/images/slide1.jpg" alt="" /></a></li>
                <li><a href="#">
                    <img src="css/images/slide1.jpg" alt="" /></a></li>
                <li><a href="#">
                    <img src="css/images/slide1.jpg" alt="" /></a></li>
            </ul>
        </div>
        <div id="slider-nav">
            <a href="#" class="active">1</a> <a href="#">2</a> <a href="#">3</a> <a href="#">4</a>
        </div>
    </div>
    <!-- End Content Slider -->
    <!-- Products -->
    <div class="products">
        <div class="cl">
            &nbsp;</div>
        <ul>
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
                    <li style="margin: 3px">
                        <asp:LinkButton runat="server" ID="lbtnProductDetail" OnClick="ProductDetail_click">
                            <asp:Image ID="ImageProduct" runat="server" Width="231" Height="383" ImageUrl='<%#Eval("[Product Image]","{0}") %>' /></asp:LinkButton>
                        <div class="product-info">
                            <h3>
                                <%#Eval("[Product Name]")%>
                            </h3>
                            <div class="product-desc">
                            <asp:Label runat="server" ID="lblproductid" Visible="false" Text='<%#Eval("[Product ID]")%>'></asp:Label>
                                <h4>
                                    <%#Eval("[Product Type ID]")%>
                                </h4>
                                <p>
                                    <%#Eval("[Product Info]")%>
                                </p>
                                <strong class="price">$<%#Eval("[Product Cost]")%></strong>
                            </div>
                        </div>
                    </li>
                </ItemTemplate>
            </asp:ListView>
        </ul>
        <div class="cl">
            &nbsp;</div>
    </div>
    <!-- End Products -->
</asp:Content>
