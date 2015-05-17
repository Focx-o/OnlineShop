using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ListOfOrder : System.Web.UI.Page
{
    SqlConnection connection = new SqlConnection(Convert.ToString(ConfigurationManager.ConnectionStrings["con"]));
  
    protected void Page_Load(object sender, EventArgs e)
    {
        connection.Open();
        SqlCommand command3 = new SqlCommand("select MAX([Order ID]) from tbl_Order where [Customer Approval]='No'",connection);
        string del = command3.ExecuteScalar().ToString();
        command3.Dispose();
        SqlCommand command = new SqlCommand("DELETE FROM tbl_Order WHERE [Customer Approval]='No'", connection);
        command.ExecuteNonQuery();
        command.Dispose();
        connection.Close();

        if (Session["Order_id"] != null)
        {
            if(del != ""){
            connection.Open();
            SqlCommand command1 = new SqlCommand("DELETE FROM tbl_OrderList WHERE [Order ID]='" + del + "'", connection);
            command.ExecuteNonQuery();
            command1.Dispose();
            connection.Close();
           
            connection.Open();
            SqlCommand command4 = new SqlCommand("DELETE FROM tbl_OrderList WHERE [Order ID]='" + del + "'", connection);
            command4.ExecuteNonQuery();
            command4.Dispose();
            connection.Close();
            }

        }

        if (Session["Get_mail"] != null)
        {
            
                connection.Open();
                SqlCommand comand = new SqlCommand("select * from tbl_Order,tbl_Customer where tbl_Order.[Customer ID]=tbl_Customer.[Customer ID] and tbl_Customer.[Email]='" + Session["Get_mail"].ToString() + "'", connection);
                SqlDataAdapter sdaProduct = new SqlDataAdapter(comand);
                DataSet dsProduct = new DataSet();
                sdaProduct.Fill(dsProduct);
                ListView1.DataSource = dsProduct;
                ListView1.DataBind();
                comand.Dispose();
                connection.Close();

        }

        Session["Order_id"] = null;
    }

    protected void btnDetail_Click(object sender, EventArgs e){

        Button productDetail = (Button)sender;
        ListViewItem item = productDetail.NamingContainer as ListViewItem;

        Label OrderID = (Label)(item.FindControl("lblorderid"));

        Session["OrderDetail"] = OrderID.Text;

        Response.Redirect("OrderDetail.aspx");
    
    }
}