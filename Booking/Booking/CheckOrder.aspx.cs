using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Booking
{

    public partial class CheckOrder : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source = 127.0.0.1,5566\SQLEXPRESS;initial catalog = " +
            "Order;User = sa;Password = zpay");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader read;
        DataTable tab = new DataTable();
        Panel pTemp;
        void GetData()
        {
            pTemp = new Panel();
            try
            {
                cmd = new SqlCommand("Select * from PreOrder where O_User = @O_User AND State != '已結帳'", conn);
                cmd.Parameters.AddWithValue("@O_User", Session["Account"].ToString());

                conn.Open();
                read = cmd.ExecuteReader();
                tab.Load(read);
                conn.Close();

                DataTable menu = new DataTable();
                cmd = new SqlCommand("Select Food From Menu", conn);
                conn.Open();
                read = cmd.ExecuteReader();
                menu.Load(read);
                conn.Close();

                for (int i = 0; i < tab.Rows.Count; i++)
                {
                    string list = tab.Rows[i][2].ToString();
                    pTemp.Controls.Add(new LiteralControl("<p>訂單編號:" + tab.Rows[i][0].ToString() + " " +
                                "</p>"));
                    for (int j = 0; j < list.Length; j++)
                    {
                        if (list[j] != '0')
                        {
                            pTemp.Controls.Add(new LiteralControl("<p>" + menu.Rows[j][0].ToString() + " "
                                + list[j] + "個" + "</p>"));
                        }
                    }
                    pTemp.Controls.Add(new LiteralControl("<p>狀態： "+ tab.Rows[i][4].ToString() + "</p>"));
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.ToString() + "')</script>");
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            GetData();
            PH1.Controls.Remove(pTemp);
            PH1.Controls.Add(pTemp);
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            GetData();
        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Main.aspx");
        }


    }
}