using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessLayer;

public partial class CreateProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCreateProductType_Click(object sender, EventArgs e)
    {
        CreateProductType Create = new CreateProductType();
        if (Create.CreateProductCategory(txtProductType.Text.Trim()))
        {
            lblProductTypeMsg.Visible = true;
        }
        else {
            
            lblProductTypeMsg.Text = " Duplicate product type cannot be added";
            lblProductTypeMsg.Visible = true;
        }
       
    }
}