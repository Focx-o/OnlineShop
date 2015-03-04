using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataAccessLayer
{
    public class create_Brand
    {
        db_OnlineShopEntities create = new db_OnlineShopEntities();
        public bool CreateNewBrand(tbl_Brand Brand)
        {
            create.tbl_Brand.AddObject(Brand);
            return create.SaveChanges() > 0;

        }
    }
}
