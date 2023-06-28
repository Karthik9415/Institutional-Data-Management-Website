using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Collections;

using System.Configuration;

using System.Data;

using System.Web.Security;


using System.Web.UI.HtmlControls;


using System.Web.UI.WebControls.WebParts;

using System.Xml.Linq;

using MySql.Data.MySqlClient;



namespace website
{
    public partial class login : System.Web.UI.Page
    {
        MySqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loginid"] != null)
            {
                Response.Redirect("home.aspx", true);
            }

            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.Now.AddDays(-1));
            Response.Cache.SetNoStore();
            con = new MySqlConnection("Data Source=localhost;Database=erp;User ID=root;Password= ");
            con.Open();
        }

        protected void loginbutton_Click(object sender, EventArgs e)
        {

            string query = "select * from login where email=@loginid and password=@passwordid";
            MySqlCommand sqlCmd = new MySqlCommand(query, con);
            sqlCmd.Parameters.AddWithValue("@loginid",loginid.Text.Trim());
            sqlCmd.Parameters.AddWithValue("@passwordid", passwordid.Text.Trim());
            int count = Convert.ToInt32(sqlCmd.ExecuteScalar());

            if (count == 1)
            {               
                Session["loginid"] = loginid.Text.Trim();
                if (Session["loginid"] != null)
                {
                    Response.Redirect("home.aspx", true);
                }
                else
                {                                                          
                   ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('SORRY','LOGIN FAILED','error')", true);
                }
            }
            else {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('SORRY','LOGIN FAILED','error')", true);
            }
            con.Close();
        }

    }
}