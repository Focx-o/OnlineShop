using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connect = Convert.ToString(ConfigurationManager.ConnectionStrings["con"]);
        SqlConnection connection = new SqlConnection(connect);
        SqlCommand comand = new SqlCommand("select * from tbl_Product", connection);
        SqlDataAdapter sdaProduct = new SqlDataAdapter(comand);
        DataSet dsProduct = new DataSet();
        sdaProduct.Fill(dsProduct);
        ListView1.DataSource = dsProduct;
        ListView1.DataBind();
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