using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataAccessLayer
{
    public class register
    {
        db_OnlineShopEntities customerRegistration = new db_OnlineShopEntities();

        public bool registration(tbl_Customer customer){
            customerRegistration.tbl_Customer.AddObject(customer);
            return customerRegistration.SaveChanges() > 0;
        }
    }
}
