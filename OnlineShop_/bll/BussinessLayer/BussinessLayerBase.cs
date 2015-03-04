using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccessLayer;

namespace BussinessLayer
{
    public class BussinessLayerBase
    {
        protected createProductType TypeofProduct = new createProductType();
        protected create_Brand BrandName = new create_Brand();
        protected addSeller Seller = new addSeller();
        protected addProduct Product = new addProduct();
        protected register customer = new register();
        protected login loginDataAccess = new login();
    }
}
