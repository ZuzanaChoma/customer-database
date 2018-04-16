using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Customer_Database_final
{
    public partial class AddCustomer : System.Web.UI.Page
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
                var results = db.Cities;

                DDLZipCodes.Items.Add(new ListItem("Pick a Zipcode", "0"));

                foreach (var item in results)
                {

                    DDLZipCodes.Items.Add(new ListItem(item.ZIPcode.ToString(), item.ZIPcode.ToString()));




                }
            }
        }

        protected void DDLZipcode_SelectedIndexChanged(object sender, EventArgs e)
        {
            City city = db.Cities.Single(x => x.ZIPcode == Convert.ToInt32(DDLZipCodes.SelectedValue));

            CityLBL.Visible = true;
            CityLBL.Text = city.City1.ToString();
        }


        protected void Add_Customer(object sender, EventArgs e)
        {
            Customer customer = new Customer();
            {
                customer.FistName = FirstnameTextBox.Text;
                customer.LastName = LastnameTextBox.Text;
                customer.Address = AddressTextBox.Text;
                customer.ZIPcode = Convert.ToInt32(DDLZipCodes.Text);
                customer.PhoneNumber = PhNumberTextBox.Text;
                customer.Email = EmailTextBox.Text;
                customer.SubscriptionID = Convert.ToInt32(SubsIDTextBox.Text);
                customer.DateJoined = Convert.ToDateTime(DateJoinedTextBox.Text);

                if (ActiveCheckBox.Checked == true)
                {
                    customer.Active = true;
                }
                else customer.Active = false;

                if (PayedCheckBox.Checked == true)
                {
                    customer.Payed = true;
                }
                else customer.Payed = false;
            }

            db.Customers.InsertOnSubmit(customer);

            db.SubmitChanges();
            LblMessage.Text = "New customer added";


        }

        protected void logout_btn(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }

    }
}