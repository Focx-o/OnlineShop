using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataAccessLayer
{
    public class addSeller
    {
        db_OnlineShopEntities create = new db_OnlineShopEntities();

        public bool RegisterSeller(tbl_Seller NewSeller)
        {

            create.tbl_Seller.AddObject(NewSeller);
            return create.SaveChanges() > 0;
        }

    }

}
