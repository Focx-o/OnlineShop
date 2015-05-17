using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class ShoppingCart : System.Web.UI.Page
{
    SqlConnection connection = new SqlConnection( Convert.ToString(ConfigurationManager.ConnectionStrings["con"]));

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Get_mail"] != null)
        {
            connection.Open();
            SqlCommand comand = new SqlCommand("select * from tbl_Product,tbl_Seller,tbl_Cart where tbl_Seller.[Seller ID]=tbl_Product.[Seller ID] and tbl_Product.[Product ID]=tbl_Cart.[Product ID] and [Email ID]='" + Session["Get_mail"].ToString() + "'", connection);
            SqlDataAdapter sdaProduct = new SqlDataAdapter(comand);
            DataSet dsProduct = new DataSet();
            sdaProduct.Fill(dsProduct);
            ListView1.DataSource = dsProduct;
            ListView1.DataBind();
            comand.Dispose();
            connection.Close();
        }

        else {

            connection.Open();

            SqlCommand comand1 = new SqlCommand("select * from tbl_Product,tbl_Seller,tbl_Guest where tbl_Seller.[Seller ID]=tbl_Product.[Seller ID] and tbl_Product.[Product ID]=tbl_Guest.[Product ID] and [Email ID]= 'Guest'", connection);
            SqlDataAdapter sdaProduct = new SqlDataAdapter(comand1);
            DataSet dsProduct = new DataSet();
            sdaProduct.Fill(dsProduct);
            ListView1.DataSource = dsProduct;
            ListView1.DataBind();
            comand1.Dispose();

            connection.Close();
        
        }

    }

    protected void ProductDetail_click(object sender, EventArgs e)
    {
        LinkButton productDetail = (LinkButton)sender;
        ListViewItem item = productDetail.NamingContainer as ListViewItem;

        Label ProductID = (Label)(item.FindControl("lblproductid"));

        Session["ProductID"] = ProductID.Text;
        Server.Transfer("ProductDetail.aspx");
    }

    protected void btnremove_click(object sender, EventArgs e) {

        if (Session["Get_mail"] != null)
        {

            Button productDetail = (Button)sender;
            ListViewItem item = productDetail.NamingContainer as ListViewItem;

            Label ProductID = (Label)(item.FindControl("lblproductid"));


            connection.Open();
            SqlCommand comand2 = new SqlCommand(" SELECT MAX([Cart ID]) FROM tbl_Cart where [Product ID]='" + ProductID.Text.Trim() + "'", connection);
            string delete = comand2.ExecuteScalar().ToString();

            connection.Close();
            comand2.Dispose();

            connection.Open();
            SqlCommand command3 = new SqlCommand("DELETE FROM tbl_Cart WHERE [Cart ID]='" + delete + "' ", connection);
            command3.ExecuteNonQuery();
            command3.Dispose();
            connection.Close();

            Response.Redirect("ShoppingCart.aspx");

        }

        else {

            Button productDetail = (Button)sender;
            ListViewItem item = productDetail.NamingContainer as ListViewItem;

            Label ProductID = (Label)(item.FindControl("lblproductid"));


            connection.Open();
            SqlCommand comand2 = new SqlCommand(" SELECT MAX([Cart]) FROM tbl_Guest where [Product ID]='" + ProductID.Text.Trim() + "'", connection);
            string delete = comand2.ExecuteScalar().ToString();

            connection.Close();
            comand2.Dispose();

            connection.Open();
            SqlCommand command3 = new SqlCommand("DELETE FROM tbl_Guest WHERE [Cart]='" + delete + "' ", connection);
            command3.ExecuteNonQuery();
            command3.Dispose();
            connection.Close();

            connection.Open();
            SqlCommand command4 = new SqlCommand("SELECT COUNT([Cart]) FROM tbl_Guest", connection);
            string max = command4.ExecuteScalar().ToString();
            connection.Close();
            command4.Dispose();


            if(max !=""){

                connection.Open();
                SqlCommand command5 = new SqlCommand("set @Count=(SELECT MAX([Cart]) from tbl_Guest);UPDATE tbl_Guest SET [Cart] = @count - [Cart] + 1", connection);
                command5.Parameters.AddWithValue("@Count",0);
                command5.ExecuteNonQuery();
                connection.Close();
                command5.Dispose();
            
            }

            Response.Redirect("ShoppingCart.aspx");
        }
        
    }
    protected void btnShop_Click(object sender, EventArgs e)
    {
        if (Session["Get_mail"] != null)
        {
            connection.Open();
            SqlCommand command6 = new SqlCommand("INSERT INTO tbl_OrderList ([Order ID],[Product ID]) SELECT [Email ID],[Product ID] FROM tbl_Cart where [Email ID]='" + Session["Get_mail"].ToString() + "'", connection);
            command6.ExecuteNonQuery();
            var orderid = Guid.NewGuid().ToString();
            SqlCommand command7 = new SqlCommand("UPDATE tbl_OrderList SET [Order ID]='" + orderid + "' WHERE [Order ID]='" + Session["Get_mail"].ToString() + "'", connection);
            command7.ExecuteNonQuery();
            
            connection.Close();
            command6.Dispose();
            command7.Dispose();

            connection.Open();
            SqlCommand command9 = new SqlCommand("SELECT SUM([Product Cost]) FROM tbl_Product,tbl_OrderList WHERE tbl_Product.[Product ID]= tbl_OrderList.[Product ID] AND tbl_OrderList.[Order ID]='"+orderid+"';", connection);
            string totalCost = command9.ExecuteScalar().ToString();
            connection.Close();
            command9.Dispose();

            connection.Open();
            SqlCommand com = new SqlCommand("SELECT MAX([ID]) FROM tbl_OrderList Where [Order ID]='"+orderid+"'",connection);
            string max = com.ExecuteScalar().ToString();
            SqlCommand command10 = new SqlCommand("INSERT INTO tbl_Order ([Order ID],[Customer ID]) SELECT [Order ID],[Customer ID] FROM tbl_OrderList, tbl_Customer WHERE tbl_OrderList.[Order ID]='" + orderid + "' AND tbl_OrderList.[ID]='"+max+"' AND tbl_Customer.[Email]='" + Session["Get_mail"].ToString() + "' ", connection);
            command10.ExecuteNonQuery();
            SqlCommand command11 = new SqlCommand("UPDATE tbl_Order SET [Total Amount]='"+totalCost+"' WHERE [Order ID]='"+orderid+"'",connection);
            command11.ExecuteNonQuery();
            connection.Close();
            command10.Dispose();
            command11.Dispose();

            Session["Order_id"] = orderid;

            Response.Redirect("OrderConfirm.aspx");
        }

        else {

            Server.Transfer("MyAccount.aspx");
        }

    }
}

