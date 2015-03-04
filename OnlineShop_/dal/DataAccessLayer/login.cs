using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataAccessLayer
{
   public class login
    {
        db_OnlineShopEntities entities = new db_OnlineShopEntities();

        public bool ValidatedLogin(tbl_Customer login)
        {
            return entities.tbl_Customer.Count(l => l.Email == login.Email && l.Password == login.Password) > 0;

        }
    }
}
