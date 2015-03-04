using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ProductDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ProductID"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        string str = Convert.ToString(ConfigurationManager.ConnectionStrings["con"]);
        SqlConnection conn = new SqlConnection(str);
        SqlCommand com = new SqlCommand("SELECT * FROM tbl_Product WHERE [Product ID]='" + Session["ProductID"].ToString() + "'", conn);
        conn.Open();
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            lblhead.Text = dr[3].ToString();
            imageProduct.ImageUrl = dr[7].ToString();
            Product_IDLabel.Text = dr[0].ToString();
            Product_Type_IDLabel.Text = dr[1].ToString();
            Brand_IDLabel.Text = dr[2].ToString();
            
            Product_InfoLabel.Text = dr[4].ToString();
            Product_CostLabel.Text = dr[5].ToString();
            Seller_IDLabel.Text = dr[6].ToString();
            Product_Offer_AvailableLabel.Text = dr[8].ToString();
            Product_Offer_DetailLabel.Text = dr[9].ToString();
            Product_Replacement_Garentee_availableLabel.Text = dr[10].ToString();
            Cash_on_Delivery_AvailableLabel.Text = dr[11].ToString();
        }
        conn.Close();
        com.Dispose();
        dr.Close();
    }
}