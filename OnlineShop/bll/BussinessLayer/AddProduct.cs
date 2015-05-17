using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccessLayer;

namespace BussinessLayer
{
    public class AddProduct :BussinessLayerBase
    {
        public bool OnlineProduct(int productType, int brand, string productName, string productInfo, int productCost,int Seller,string image,string productOfferAvail,string productOfferDetail, string Garentee, string cashOnDelivery) {

            tbl_Product obj = new tbl_Product();
            obj.Product_Type_ID = productType;
            obj.Brand_ID = brand;
            obj.Product_Name = productName;
            obj.Product_Info = productInfo;
            obj.Product_Cost = productCost;
            obj.Seller_ID = Seller;
            obj.Product_Image = image;
            obj.Product_Offer_Available = productOfferAvail;
            obj.Product_Offer_Detail = productOfferDetail;
            obj.Product_Replacement_Garentee_available = Garentee;
            obj.Cash_on_Delivery_Available = cashOnDelivery;


            return Product.OnlineProduct(obj);
        }
    }
}
