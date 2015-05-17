using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void cmdLogin_Click(object sender, EventArgs e)
    {

        if (LoginUserName.Text.Trim() == "admin" && LoginUserPass.Text.Trim() == "admin")
        {

            Session["login"] = "admin";
            Response.Redirect("AdminAccount.aspx");
        }
        else {

            ScriptManager.RegisterStartupScript(this, GetType(), "javascript", "alert('Admin Login Failed')", true);

        }

    }
}