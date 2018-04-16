using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Customer_Database_final
{
    public partial class Login : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            LblErrorMessage.Visible = false;

        }

        protected void Login_click(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection(connectionString: @"Data Source=.\sqlexpress;Initial Catalog=CustomerDB_Admins;Integrated Security=True;"))
            {
                con.Open();
                string query = "SELECT COUNT(1) FROM Admin_table WHERE username=@username AND password=@password";
                SqlCommand sqlCmnd = new SqlCommand(query, con);
                sqlCmnd.Parameters.AddWithValue("@username", UsernameTextBox.Text.Trim());
                sqlCmnd.Parameters.AddWithValue("@password", passwordTextBox.Text.Trim());
                int count = Convert.ToInt32(sqlCmnd.ExecuteScalar());

            

                if (count == 1)
                {
                    Session["username"] = UsernameTextBox.Text.Trim();
                    Response.Redirect("Default.aspx");
                }

                else
                {
                    LblErrorMessage.Visible = true;
                }
            }

        }
    }

}