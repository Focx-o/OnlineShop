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

        if (Session["login"] == "customer")
        {
            customerPanel.Visible = true;
            loginPanel.Visible = false;

        }

        if (Session["login"] == "admin")
        {
            loginPanel.Visible = false;
            adminPanel.Visible = true;
        }

        if (Session["Get_mail"] == null)
        {
            conn.Open();
            SqlCommand com1 = new SqlCommand("SELECT MAX(Cart) FROM tbl_Guest", conn);
            string count = com1.ExecuteScalar().ToString();
            SqlCommand com2 = new SqlCommand("SELECT SUM([Product Cost]) FROM tbl_Product,tbl_Guest WHERE tbl_Product.[Product ID]= tbl_Guest.[Product ID] AND tbl_Guest.[Email ID]='Guest'",conn);
            string totalcost = com2.ExecuteScalar().ToString();
            if (count == "")
            {
                lblarticles.Text = "0";
                lblcost.Text = "0";
            }
            else
            {
                lblarticles.Text = count;
                lblcost.Text = totalcost;
            }
            conn.Close();
            com1.Dispose();
            com2.Dispose();

        }
        else {
            conn.Open();
            SqlCommand com1 = new SqlCommand("SELECT count([Product ID]) from tbl_Cart where [Email ID]='"+Session["Get_mail"].ToString()+"'", conn);
            string count = com1.ExecuteScalar().ToString();
            SqlCommand com3 = new SqlCommand("SELECT SUM([Product Cost]) FROM tbl_Product,tbl_Cart WHERE tbl_Product.[Product ID]= tbl_Cart.[Product ID] AND tbl_Cart.[Email ID]='" + Session["Get_mail"].ToString()+ "'", conn);
            string totalcost = com3.ExecuteScalar().ToString();

            if (count == "0")
            {
                lblarticles.Text = "0";
                lblcost.Text = "0";
            }
            else
            {
                lblarticles.Text = count;
                lblcost.Text = totalcost;
            }
            conn.Close();
            com1.Dispose();
            conn.Open();
            SqlCommand com2 = new SqlCommand("select [Company/Name] from tbl_Customer where Email='"+Session["Get_mail"].ToString()+"'",conn);
            CustomerName.InnerText = "Welcome,"+" "+com2.ExecuteScalar().ToString();
            com2.Dispose();
            com3.Dispose();
            conn.Close();
        }

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
            SqlCommand com2 = new SqlCommand("INSERT INTO tbl_Cart ([Email ID],[Product ID]) SELECT [Email ID], [Product ID] FROM tbl_Guest", conn);
            com2.ExecuteNonQuery();
            com2.Dispose();
            conn.Close();

            conn.Open();
            SqlCommand com3 = new SqlCommand("update tbl_Cart set [Email ID]='" + LoginUserName.Text.Trim() + "' where [Email ID]='Guest'", conn);
            com3.ExecuteNonQuery();
            com3.Dispose();
            conn.Close();

            Session["login"] = "customer";
            loginPanel.Visible = false;
            customerPanel.Visible = true;

            Session["Get_mail"] = LoginUserName.Text.Trim();

            Response.Redirect("ShoppingCart.aspx");

        }
        else
        {

            ScriptManager.RegisterStartupScript(this, GetType(), "javascript", "alert('Customer Login failed');window.location='Default.aspx';", true);

        }
    }
}
