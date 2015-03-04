using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessLayer;

public partial class MyAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_panel"] == "customerRegister")
        {
            registerPanel.Visible = true;
            loginPanel_page.Visible = false;
            Session["user_panel"] = "";
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
            Response.Redirect("test.aspx");
        }
        else
        {

            ScriptManager.RegisterStartupScript(this, GetType(), "javascript", "alert('Customer Login failed');window.location='MyAccount.aspx';", true);

        }
    }
}