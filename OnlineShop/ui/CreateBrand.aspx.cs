using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessLayer;

public partial class CreateBrand : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         
    
    }
    protected void btnCreateBrand_Click(object sender, EventArgs e)
    {

        BussinessLayer.CreateBrand Create = new BussinessLayer.CreateBrand();

        if (Create.CreateNewBrand(txtProductBrand.Text.Trim()))
        {
            lblBrandMsg.Visible = true;
        }
        else
        {

            lblBrandMsg.Text = " Duplicate Brand cannot be added";
            lblBrandMsg.Visible = true;
        }
       
    }
}