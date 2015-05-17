using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class changepassword : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(Convert.ToString(ConfigurationManager.ConnectionStrings["con"]));

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cmdLogin_Click(object sender, EventArgs e)
    {

        conn.Open();
        SqlCommand cnt = new SqlCommand("select Password from tbl_Customer where Email ='" + Session["Get_mail"].ToString() + "'", conn);
        string Get_pass = cnt.ExecuteScalar().ToString();
        cnt.Dispose();
        conn.Close();

        if (currentPass.Text == Get_pass)
        {
            conn.Open();
            SqlCommand com3 = new SqlCommand("update tbl_Customer set [Password]='" + ConfirmPass.Text.Trim() + "' where [Email]='" + Session["Get_mail"].ToString() + "'", conn);
            com3.ExecuteNonQuery();
            com3.Dispose();
            conn.Close();
            lblmsg.Text = "Password changed successfully";
        }
    }
}