using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
           
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
            Response.Redirect("test.aspx");
        }
        else
        {

            ScriptManager.RegisterStartupScript(this, GetType(), "javascript", "alert('Customer Login failed');window.location='Default.aspx';", true);

        }
    }
}
