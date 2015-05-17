using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataAccessLayer
{
   public class addProduct
    {
       db_OnlineShopEntities Create = new db_OnlineShopEntities();
       public bool OnlineProduct(tbl_Product NewProduct){
       Create.tbl_Product.AddObject(NewProduct);
           return Create.SaveChanges() > 0 ;
       }
    }
}
