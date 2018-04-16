using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Customer_Database_final
{
    public partial class SearchCustomer : System.Web.UI.Page
    {
        DataClassesDataContext db = new DataClassesDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            usernameLabel.Text = "    username: " + Session["username"];
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {


            var results = db.SearchCustomers(Firstname.Text, Lastname.Text);

            foreach (var item in results)
            {
                CustomerIdLbl.Text = item.CustomerID.ToString()+"  ";
                FirstnameLbl.Text = item.FistName+"  ";
                LastnameLbl.Text = item.LastName+ "  ";
                AddressLbl.Text = item.Address+ "  ";
                ZIPcodeLbl.Text = item.ZIPcode.ToString()+ "  ";
                CityLbl.Text = item.City+ "  ";
                EmailLbl.Text = item.Email+ "  ";
                PhNumberLbl.Text = item.PhoneNumber+ "  ";
                SubscriptionNameLbl.Text = item.SubscriptionName+ "  ";
                SubscriptionPeriodLbl.Text = item.SubscriptionPeriod+ "  ";
                DateJoinedLbl.Text = item.DateJoined.ToString()+ "  ";


                    if (item.Payed == true)
                {
                    PayedCheckBox.Checked = true;
                }
                else PayedCheckBox.Checked = false;

                if (item.Active == true)
                {
                    ActiveCheckBox.Checked = true;
                }
                else ActiveCheckBox.Checked = false;
            }


            ShowResults.Visible = true;



        }

        protected void logout_btn(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}