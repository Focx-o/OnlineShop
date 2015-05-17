using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class OrderDetail : System.Web.UI.Page
{
    SqlConnection connection = new SqlConnection(Convert.ToString(ConfigurationManager.ConnectionStrings["con"]));

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["OrderDetail"] != null)
        {
            connection.Open();
            SqlCommand comand = new SqlCommand("select * from tbl_Product,tbl_Seller,tbl_OrderList where tbl_Seller.[Seller ID]=tbl_Product.[Seller ID] and tbl_Product.[Product ID]=tbl_OrderList.[Product ID] and tbl_OrderList.[Order ID]='" + Session["OrderDetail"].ToString() + "'", connection);
            SqlDataAdapter sdaProduct = new SqlDataAdapter(comand);
            DataSet dsProduct = new DataSet();
            sdaProduct.Fill(dsProduct);
            ListView1.DataSource = dsProduct;
            ListView1.DataBind();
            connection.Close();

            int count = 0;
            connection.Open();
            SqlDataReader dr = comand.ExecuteReader();
            while (dr.Read())
            {
                count   = count + Convert.ToInt32(dr[5].ToString());
                lbltotal.Text = count.ToString();
            }

            connection.Close();
            comand.Dispose();
            dr.Close();

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

}