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
    SqlConnection conn = new SqlConnection(Convert.ToString(ConfigurationManager.ConnectionStrings["con"]));
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ProductID"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        string str = Convert.ToString(ConfigurationManager.ConnectionStrings["con"]);
        SqlConnection conn = new SqlConnection(str);
        SqlCommand com = new SqlCommand("SELECT * FROM tbl_Product, tbl_ProductType,tbl_Brand,tbl_Seller WHERE tbl_Product.[Product Type ID] = tbl_ProductType.[Product Type ID] and tbl_Brand.[Brand ID]=tbl_Product.[Brand ID] and tbl_Seller.[Seller ID]=tbl_Product.[Seller ID] and [Product ID]='" + Session["ProductID"].ToString() + "'", conn);
        conn.Open();
        SqlDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            lblhead.Text = dr[3].ToString();
            imageProduct.ImageUrl = dr[7].ToString();
            Product_IDLabel.Text = dr[0].ToString();
            Product_Type_IDLabel.Text = dr[13].ToString();
            Brand_IDLabel.Text = dr[15].ToString();

            Product_InfoLabel.Text = dr[4].ToString();
            Product_CostLabel.Text = dr[5].ToString();
            Seller_IDLabel.Text = dr[20].ToString();
            Product_Offer_AvailableLabel.Text = dr[8].ToString();
            Product_Offer_DetailLabel.Text = dr[9].ToString();
            Product_Replacement_Garentee_availableLabel.Text = dr[10].ToString();
            Cash_on_Delivery_AvailableLabel.Text = dr[11].ToString();
        }
        conn.Close();
        com.Dispose();
        dr.Close();
    }


    protected void btnAddToCart_Click(object sender, EventArgs e)
    {
        int n;
        conn.Open();
        SqlCommand com1 = new SqlCommand("SELECT MAX(Cart) FROM tbl_Guest", conn);
        string a = com1.ExecuteScalar().ToString();

        if (a == "")
        {
            n = 0;
        }
        else
        {
            n = Convert.ToInt32(a);
        }
        n = n + 1;
        com1.Dispose();
        conn.Close();


        conn.Open();
        SqlCommand coma = new SqlCommand("insert into tbl_Guest values('" + n + "','" + Product_IDLabel.Text.ToString() + "')", conn);
        coma.ExecuteNonQuery();
        coma.Dispose();
        conn.Close();


        ScriptManager.RegisterStartupScript(this, GetType(), "javascript", "document.getElementById('lblarticles').innerHTML=" + n + "", true);
    }
}