using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace website
{
    public partial class master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.Now.AddDays(-1));
            Response.Cache.SetNoStore();
            if (Session["loginid"] == null)
            {
                Response.Redirect("login.aspx");
            }

        }
        protected void logout(object sender, EventArgs e)
        {
            Session["loginid"] = null;
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            HttpContext.Current.Response.AddHeader("Cache-Control", "no-cache,no-store,must-revalidate");
            HttpContext.Current.Response.AddHeader("Pragma", "no-cache");
            HttpContext.Current.Response.AddHeader("Expires","0");
            Response.CacheControl = "no-cache";
            if (Session["loginid"] == null) { 
            Response.Redirect("login.aspx"); }
        }
    }
}