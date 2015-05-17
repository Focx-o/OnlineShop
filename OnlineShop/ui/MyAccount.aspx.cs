using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessLayer;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MyAccount : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(Convert.ToString(ConfigurationManager.ConnectionStrings["con"]));

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_panel"] == "customerRegister")
        {
            registerPanel.Visible = true;
            loginPanel_page.Visible = false;
            Session["user_panel"] = "";
        }

        if (Session["Get_mail"] != null)
        {
            Response.Redirect("CustomerAccount.aspx");
        }

        if (Session["login"] == "admin") {

            Response.Redirect("AdminAccount.aspx");
        }

    }

    protected void ShowRegisterForm(object sender, EventArgs e)
    {

        registerPanel.Visible = true;
        loginPanel_page.Visible = false;
    }

    protected void showLoginForm(object sender, EventArgs e)
    {

        loginPanel_page.Visible = true;
        registerPanel.Visible = false;
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        Register register = new Register();
        if (register.registration(txtUserName.Text.Trim(), txtPassword.Text.Trim(), txtCompanyName.Text.Trim(), txtOrganisationNumber.Text.Trim(), txtContact.Text.Trim(), txtAttention.Text.Trim(), txtAdress.Text.Trim(), txtPostalCode.Text.Trim(), txtCity.Text.Trim(), txtCountry.Text.Trim()))
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "javascript", "alert('Customer Registered successful');window.location='MyAccount.aspx';", true);
        }
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
            Session["Get_mail"] = LoginUserName.Text.Trim();
            
            
            Response.Redirect("ShoppingCart.aspx");


        }
        else
        {

            ScriptManager.RegisterStartupScript(this, GetType(), "javascript", "alert('Customer Login failed');window.location='MyAccount.aspx';", true);

        }
    }
}