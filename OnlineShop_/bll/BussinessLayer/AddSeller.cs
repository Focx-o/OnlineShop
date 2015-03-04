using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccessLayer;
namespace BussinessLayer
{
    public class AddSeller : BussinessLayerBase
    {
        public bool RegisterSeller(string userid, string password, string name, string bussinessname, int gender, DateTime dob, string bussinesstelephone, string hometelephone, string fax, string mobile, string skypename, string email, string website, string additionalinfo) {
            tbl_Seller obj = new tbl_Seller();

            obj.UserID = userid;
            obj.Name = name;
            obj.Password = password;
            obj.BussinessName = bussinessname;
            obj.GenderID = gender;
            obj.DOB = dob;
            obj.BussinessTelephone = bussinesstelephone;
            obj.HomeTelephone = hometelephone;
            obj.Mobile = mobile;
            obj.Fax = fax;
            obj.SkypeName = skypename;
            obj.Email = email;
            obj.Website = website;
            obj.AdditionalInfo = additionalinfo;
            
            return Seller.RegisterSeller(obj);
        }
    }
}
