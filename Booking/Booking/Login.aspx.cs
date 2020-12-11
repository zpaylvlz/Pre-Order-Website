using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Booking
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = (@"Data Source = 127.0.0.1,5566\SQLEXPRESS;initial catalog = " +
            "Order;User = sa;Password = zpay");
        }

        protected void BtnLog_Click(object sender, EventArgs e)
        {
            string result = "";

            //Response.Write("<script>alert('alert');</script>");
            try
            {
               // Response.Write("<script>alert('alert');</script>");
                cmd = new SqlCommand("Select * from Users where Account = @Account AND Password = @Password", conn);
                cmd.Parameters.AddWithValue("@Account", Acc.Text);
                cmd.Parameters.AddWithValue("@Password", Pass.Text);
                conn.Open();
                result = (string)cmd.ExecuteScalar();
               // Response.Write("<script>alert('" + result + "');</script>");
                conn.Close();
                if (result != Acc.Text)
                {
                    Response.Write("<script>alert('Account or Password Wrong');</script>");
                }
                else
                {
                    Session["Account"] = Acc.Text;
                    Response.Redirect("~/Main.aspx", true);
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('"+ ex.ToString() + "');</script>");
            }
        }

        protected void BtnReg_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Register.aspx");
        }

    }
}