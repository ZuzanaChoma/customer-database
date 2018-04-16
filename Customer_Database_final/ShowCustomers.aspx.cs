using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Customer_Database_final
{
    public partial class ShowCustomers : System.Web.UI.Page
    {
        DataClassesDataContext db = new DataClassesDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            usernameLabel.Text = "    username: " + Session["username"];
            RepCustomers.DataSource = db.Customers;
            RepCustomers.DataBind(); // try to connect the page with edit customer and search customer
        }

        public string ClipString(object value, int length, bool addDots)
        {
            string dots = "";

            if (addDots)
            {
                dots = "...";
            }

            if (value.ToString().Length > length)
            {
                return value.ToString().Substring(0, length) + dots;
            }

            return value.ToString() + dots;


        }


        public string FormatData(object date)
        {
            DateTime dt = (DateTime)date;
            return dt.ToShortDateString();

        }

        protected void logout_btn(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

    }
}