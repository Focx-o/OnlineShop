using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccessLayer;
namespace BussinessLayer
{
    public class Login: BussinessLayerBase
    {
        public bool ValidatedLogin(string UserName, string Password)
        {
            return loginDataAccess.ValidatedLogin(new tbl_Customer { Email = UserName, Password = Password });
        }
    }
}
