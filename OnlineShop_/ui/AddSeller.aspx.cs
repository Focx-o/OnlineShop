using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessLayer;

public partial class AddSeller : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 1; i <= 31; i++)
        {

            ddldate.Items.Add(new ListItem { Text = i.ToString(), Value = i.ToString() });
        }


        int presentYear = DateTime.Now.Year;
        for (int i = 1940; i <= presentYear; i++)
        {
            ddlyear.Items.Add(new ListItem { Text = i.ToString(), Value = i.ToString() });
        }


    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        BussinessLayer.AddSeller Register = new BussinessLayer.AddSeller();

        if (Register.RegisterSeller(txtuserid.Text.Trim(), txtpassword.Text.Trim(), string.Format("{0} {1} {2}", Txtfirstname.Text.Trim(), txtmiddleName.Text.Trim(), txtlastName.Text.Trim()), txtbusinessName.Text.Trim(), Convert.ToInt32(string.Format("{0}", rblgender.SelectedValue)), Convert.ToDateTime(string.Format("{0} {1} {2}", ddldate.SelectedValue, ddlmonth.SelectedValue, ddlyear.SelectedValue)), txtBussinessTelephone.Text.Trim(), txthomeTelephone.Text.Trim(), txtfax.Text.Trim(), Txtmobile.Text.Trim(), txtSkypeName.Text.Trim(), txtemail.Text.Trim(), txtwebsite.Text.Trim(), txtaddInfo.Text))
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "javascript", "alert('Seller Registered successful');window.location='AddSeller.aspx';", true);
            
        }
        else
        {

            ScriptManager.RegisterStartupScript(this, GetType(), "javascript", "alert('Seller Registration successful')", true);
        }


        

    }
}