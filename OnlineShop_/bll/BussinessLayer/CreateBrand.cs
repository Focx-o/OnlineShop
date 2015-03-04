using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccessLayer;

namespace BussinessLayer
{
    public class CreateBrand : BussinessLayerBase
    {
        public bool CreateNewBrand(string Brand)
        {
            tbl_Brand obj = new tbl_Brand();
            obj.Brand = Brand;
            return BrandName.CreateNewBrand(obj);

        }
    }
}
