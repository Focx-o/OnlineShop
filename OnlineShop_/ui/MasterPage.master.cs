using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlConnection conn = new SqlConnection(Convert.ToString(ConfigurationManager.ConnectionStrings["con"]));

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            conn.Open();
            SqlCommand cnt = new SqlCommand("truncate table tbl_Guest", conn);
            cnt.ExecuteNonQuery();
            cnt.Dispose();
            conn.Close();
        }
        Session["user"] = "public";
        adminPanel.Visible = false;
        sellerPanel.Visible = false;
        customerPanel.Visible = false;

        conn.Open();
        SqlCommand com1 = new SqlCommand("SELECT MAX(Cart) FROM tbl_Guest", conn);
        string count = com1.ExecuteScalar().ToString();

        if (count == "")
        {
            lblarticles.Text = "0";
            lblcost.Text = "0";
        }
        else
        {
            lblarticles.Text = count;
        }
        conn.Close();
    }





    protected void ShowRegisterForm(object sender, EventArgs e)
    {
        Session["user_panel"] = "customerRegister";
        Response.Redirect("MyAccount.aspx");
    }

    protected void cmdLogin_Click(object sender, EventArgs e)
    {
        BussinessLayer.Login CustomerLogin = new BussinessLayer.Login();
        if (CustomerLogin.ValidatedLogin(LoginUserName.Text.Trim(), LoginUserPass.Text.Trim()))
        {
            conn.Open();
            SqlCommand com2 = new SqlCommand("INSERT INTO tbl_Cart ([Product ID]) SELECT [Product ID] FROM tbl_Guest", conn);
            com2.ExecuteNonQuery();
            com2.Dispose();
            conn.Close();
        }
        else
        {

            ScriptManager.RegisterStartupScript(this, GetType(), "javascript", "alert('Customer Login failed');window.location='Default.aspx';", true);

        }
    }
}
