using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class OrderConfirm : System.Web.UI.Page
{
    SqlConnection connection = new SqlConnection(Convert.ToString(ConfigurationManager.ConnectionStrings["con"]));
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Order_id"] != null)
        {
            connection.Open();

            SqlCommand comand1 = new SqlCommand("SELECT [Total Amount], [Payment Mode], [Delivery Address], [Order Date] FROM tbl_Order WHERE [Order ID]='" + Session["Order_id"].ToString() + "'", connection);
            SqlDataAdapter sdaProduct = new SqlDataAdapter(comand1);
            DataSet dsProduct = new DataSet();
            sdaProduct.Fill(dsProduct);
            ListView1.DataSource = dsProduct;
            ListView1.DataBind();
            comand1.Dispose();

            connection.Close();

        }
        else {

            Response.Redirect("Default.aspx");
        }
    }


    protected void btnOrderConfirm_Click(object sender, EventArgs e)
    {

        connection.Open();
        SqlCommand command8 = new SqlCommand("Delete from tbl_Cart where [Email ID]='" + Session["Get_mail"].ToString() + "'", connection);
        command8.ExecuteNonQuery();
        connection.Close();
        command8.Dispose();

        connection.Open();
        SqlCommand command2 = new SqlCommand("UPDATE tbl_Order SET [Customer Approval]=@approve WHERE [Order ID]='" + Session["Order_id"].ToString() + "'", connection);
        command2.Parameters.AddWithValue("@approve","Yes");
        command2.ExecuteNonQuery();
        command2.Dispose();
        connection.Close();

        Response.Redirect("ListOfOrder.aspx");
    }


    protected void btnUpdateOrder_Click(object sender, EventArgs e)
    {
        connection.Open();
        SqlCommand command2 = new SqlCommand("UPDATE tbl_Order SET [Payment Mode]=@paymode, [Delivery Address]=@address WHERE [Order ID]='" + Session["Order_id"].ToString() + "'", connection);
        command2.Parameters.AddWithValue("@paymode", lbpayment.SelectedValue);
        command2.Parameters.AddWithValue("@address", txtaddress.Text.Trim());
        command2.ExecuteNonQuery();
        command2.Dispose();
        connection.Close();

        connection.Open();

        SqlCommand comand1 = new SqlCommand("SELECT [Total Amount], [Payment Mode], [Delivery Address], [Order Date] FROM tbl_Order WHERE [Order ID]='" + Session["Order_id"].ToString() + "'", connection);
        SqlDataAdapter sdaProduct = new SqlDataAdapter(comand1);
        DataSet dsProduct = new DataSet();
        sdaProduct.Fill(dsProduct);
        ListView1.DataSource = dsProduct;
        ListView1.DataBind();
        comand1.Dispose();

        connection.Close();

    }
}