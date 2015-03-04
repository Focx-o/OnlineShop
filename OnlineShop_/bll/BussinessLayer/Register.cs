using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataAccessLayer;

namespace BussinessLayer
{
    public class Register : BussinessLayerBase
    {
        public bool registration(string email, string password, string NameOrCompany, string OrganisationNumber, string contact, string attendence, string address, string postalCode, string city,string country) {
            tbl_Customer obj = new tbl_Customer();
            obj.Email = email;
            obj.Password = password;
            obj.Company_Name = NameOrCompany;
            obj.Organistation_Number = OrganisationNumber;
            obj.Contact = contact;
            obj.C_O = attendence;
            obj.Street_Address = address;
            obj.City = city;
            obj.Country = country;
            obj.Postal_Code = postalCode;

            return customer.registration(obj);
        }
    }
}
