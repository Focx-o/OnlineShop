using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataAccessLayer
{
    public class createProductType
    {
        db_OnlineShopEntities create = new db_OnlineShopEntities();

        public bool CreateProductCategory(tbl_ProductType ProductType) {
            create.tbl_ProductType.AddObject(ProductType);
            return create.SaveChanges() > 0;
        }
    }
}
