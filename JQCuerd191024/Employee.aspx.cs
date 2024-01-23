using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.Services;

namespace JQCuerd191024
{
    public partial class Employee : System.Web.UI.Page
    {
    static SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abc"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static void Insertdata(string A,int B,string C)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name",A);
            cmd.Parameters.AddWithValue("@age",B);
            cmd.Parameters.AddWithValue("@address",C);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}