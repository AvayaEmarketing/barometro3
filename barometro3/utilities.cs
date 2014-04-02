using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.IO;

namespace barometro3
{
    public class utilities
    {
        public string putExcelData(string fullPath, string fileName, string VirtualCoffeeId)
        {
            string result;
            int VirtualCoffeIdOri;
            var connectionString = "";
            string e = Path.GetExtension(fullPath).ToUpper();
            if (e == ".XLS")
            {
                connectionString = string.Format("Provider=Microsoft.Jet.OLEDB.4.0; data source=" + fullPath + "; Extended Properties=Excel 8.0;", fileName);

            }
            else if (e == ".XLSX")
            {
                connectionString = string.Format("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + fullPath + "; Extended Properties=Excel 12.0;", fileName);
            }

            OleDbConnection dbConnection = new OleDbConnection(connectionString);

            dbConnection.Open();

            GuestClass guest = new GuestClass();

            try
            {
                OleDbCommand dbCommand = new OleDbCommand("SELECT * FROM [Data$]", dbConnection);
                OleDbDataReader dbReader = dbCommand.ExecuteReader();

                int name = dbReader.GetOrdinal("name");
                int lastname = dbReader.GetOrdinal("lastname");
                int company = dbReader.GetOrdinal("company");
                int emails = dbReader.GetOrdinal("email");
                guest.validaAttendee();
                VirtualCoffeIdOri = Convert.ToInt32(VirtualCoffeeId);

                while (dbReader.Read())
                {
                    string name_val = dbReader.GetValue(name).ToString();
                    string lastname_val = dbReader.GetValue(lastname).ToString();
                    string company_val = dbReader.GetValue(company).ToString();
                    string emails_val = dbReader.GetValue(emails).ToString();
                    guest.putAttendees(name_val, lastname_val, emails_val, company_val, VirtualCoffeIdOri, "I", "Y");

                }
                result = "ok";
            }
            catch (Exception ex)
            {
                result = "fail" + ex;
            }
            finally
            {
                dbConnection.Close();
            }
            return result;

        }
    }
}