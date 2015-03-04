using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;

public partial class AddProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void cbProductAvail_CheckedChanged(object sender, EventArgs e)
    {
        if (lblProductOffer.Visible == false)
        {
            lblProductOffer.Visible = true;
        }
        else
        {
            lblProductOffer.Visible = false;
        }

        if (txtProductOfferDetail.Visible == false)
        {
            txtProductOfferDetail.Visible = true;
            txtProductOfferDetail.ValidationGroup = "AddProduct";
        }
        else
        {
            txtProductOfferDetail.Visible = false;
            txtProductOfferDetail.ValidationGroup = null;
        }


    }

    
    protected void btnAddProduct_Click(object sender, EventArgs e)
    {

        fileld.PostedFile.SaveAs(Server.MapPath(".\\picture\\" + fileld.FileName.ToString()));

        BussinessLayer.AddProduct NewProduct = new BussinessLayer.AddProduct();
        var imageX = "~\\picture\\" + fileld.FileName.ToString();
        var productAvail = "";
        var garantee = "";
        var delivery = "";

        if (cbProductAvail.Checked)
        {
            productAvail = "YES";
        }
        else
        {
            productAvail = "NO";
        }

        if (cbGarantee.Checked)
        {
            garantee = "YES";
        }
        else
        {
            garantee = "NO";
        }


        if (cbDelivery.Checked)
        {
            delivery = "YES";
        }
        else
        {
            delivery = "NO";
        }


        if (NewProduct.OnlineProduct(Convert.ToInt32(ddlProductType.SelectedValue), Convert.ToInt32(ddlProductBrand.SelectedValue), txtProductName.Text.Trim(), txtProductInfo.Text.Trim(), Convert.ToInt32(txtProductCost.Text.Trim()), Convert.ToInt32(ddlseller.SelectedValue), imageX, productAvail, txtProductOfferDetail.Text.Trim(), garantee, delivery))
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "javascript", "alert('Product added successful');window.location='AddProduct.aspx';", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "javascript", "alert('unsuccessful to add product');window.location='AddSeller.aspx';", true);
        }
    }
}