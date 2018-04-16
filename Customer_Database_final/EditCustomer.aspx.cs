using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Customer_Database_final
{
    public partial class EditCustomer : System.Web.UI.Page
    {
        DataClassesDataContext db = new DataClassesDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            usernameLabel.Text = "    username: " + Session["username"];

            if (!Page.IsPostBack)
            {
                var results = db.Customers;

                DDLCustomers.Items.Add(new ListItem("Pick a customer", "0"));

                foreach (var item in results)
                {

                    DDLCustomers.Items.Add(new ListItem(item.FistName + " " + item.LastName, item.CustomerID.ToString()));

                }

              //  Request.QueryString
              //  DDLCustomers.Items.FindByValue("4").Selected = true;
            }
        }

        protected void DDLCustomers_SelectedIndexChanged(object sender, EventArgs e)
        {
            Customer customer = db.Customers.Single(x => x.CustomerID == Convert.ToInt32(DDLCustomers.SelectedValue));
            divData.Visible = true;

            TextBoXMail.Text = customer.Email;
            TextBoxPhone.Text = customer.PhoneNumber;
            TextBoxAddress.Text = customer.Address;
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            Customer customer = db.Customers.Single(x => x.CustomerID == Convert.ToInt32(DDLCustomers.SelectedValue));
            customer.Email = TextBoXMail.Text;
            customer.PhoneNumber = TextBoxPhone.Text;
            customer.Address = TextBoxAddress.Text;
            db.SubmitChanges();
            LblMessage.Text = "Changes have been saved";


        }

        protected void logout_btn(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}