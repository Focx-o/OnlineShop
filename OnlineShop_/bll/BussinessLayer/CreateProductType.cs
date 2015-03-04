using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccessLayer;

namespace BussinessLayer
{
   public class CreateProductType : BussinessLayerBase
    {
        public bool CreateProductCategory(string ProductType) {

            tbl_ProductType obj = new tbl_ProductType();
            obj.Product_Type = ProductType;
            
            return TypeofProduct.CreateProductCategory(obj);
        }
    }
}
