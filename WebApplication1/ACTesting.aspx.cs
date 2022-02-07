using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ACTesting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod(EnableSession = true)]
        [System.Web.Script.Services.ScriptMethod(ResponseFormat = System.Web.Script.Services.ResponseFormat.Json, UseHttpGet = false)]
        //public static string AddNewStudentDetail(Data ArgUser)
        public static string AddNewStudentDetail(string Name, string Emailid, string ContactNo, string Login, string Password)
        {
            //ArgUser data = new ArgUser();       // Method to call using object (defining properties...)
            using (SqlConnection con = new SqlConnection("server=.;database=StudentDetails;uid=sa;pwd=Passw0rd@123"))
            {
                string command = "INSERT INTO StudentDetails (FullName, EmailID, ContactNo, Login, Password) VALUES ('" + Name + "','" + Emailid + "','" + ContactNo + "','" + Login + "','" + Password + "')";
                ////string command = "INSERT INTO StudentDetails (FullName, EmailID, ContactNo, Login, Password) VALUES ('" + data.Name + "','" + data.EmailId + "','" + data.ContactNo + "','" + data.Login + "','" + data.Password + "')";
                SqlCommand cmd = new SqlCommand(command, con);
                con.Open();
                cmd.ExecuteNonQuery();
            }
            return "sucess";
        }

    }
}