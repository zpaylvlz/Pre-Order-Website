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
    public partial class Main : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source = 127.0.0.1,5566\SQLEXPRESS;initial catalog = " +
            "Order;User = sa;Password = zpay");
        SqlCommand cmd = new SqlCommand();
        SqlDataReader read;
        DataTable tab = new DataTable();
        Label[] Food;
        Label[] Price;
        TextBox[] nums;
        Button[] BtnMinus;
        Button[] BtnPlus;

        void Gen_Cons()
        {
            Food = new Label[tab.Rows.Count];
            Price = new Label[tab.Rows.Count];
            nums = new TextBox[tab.Rows.Count];
            BtnMinus = new Button[tab.Rows.Count];
            BtnPlus = new Button[tab.Rows.Count];

            for (int i = 0; i < tab.Rows.Count / 3 + 1; i++)
            {
                TableRow TR = new TableRow();
                for (int j = 0; j < 3; j++)
                {
                    int count = i * 3 + j;
                    if (count < tab.Rows.Count)
                    {
                        Food[count] = new Label();
                        Price[count] = new Label();
                        nums[count] = new TextBox();
                        BtnMinus[count] = new Button();
                        BtnPlus[count] = new Button();

                        BtnMinus[count].Width = 20;
                        BtnMinus[count].Click += Minus_E;
                        BtnPlus[count].Width = 20;
                        BtnPlus[count].Click += Plus_E;
                        nums[count].Width = 30;
                        nums[count].Enabled = false;

                        Food[count].Text = tab.Rows[count]["Food"].ToString();
                        Price[count].Text = "價格： " + tab.Rows[count]["Price"].ToString() + "元";
                        nums[count].Text = "0";
                        BtnMinus[count].Text = "-";
                        BtnPlus[count].Text = "+";

                        TableCell TCell = new TableCell();
                        TCell.Controls.Add(Food[count]);
                        TCell.Controls.Add(new LiteralControl("<br/>"));
                        TCell.Controls.Add(Price[count]);
                        TCell.Controls.Add(new LiteralControl("<br/>"));
                        TCell.Controls.Add(BtnMinus[count]);
                        TCell.Controls.Add(nums[count]);
                        TCell.Controls.Add(BtnPlus[count]);
                        TR.Cells.Add(TCell);
                    }
                }
                MenuTable.Rows.Add(TR);
            }
        }

        void Minus_E(object sender, EventArgs e)
        {
            int index = Array.IndexOf(BtnMinus,(Button)sender);
            if ((Int32.Parse(nums[index].Text) > 0))
            {
                nums[index].Text = (Int32.Parse(nums[index].Text) - 1).ToString();
            }
        }

        void Plus_E(object sender, EventArgs e)
        {
            int index = Array.IndexOf(BtnPlus, (Button)sender);
            nums[index].Text = (Int32.Parse(nums[index].Text) + 1).ToString();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["Account"] = "zpay";
            UserID.Text = "目前登入使用者：" + Session["Account"].ToString();
            SqlCommand cmd = new SqlCommand("Select * from Menu", conn);
            try
            {
                conn.Open();
                read = cmd.ExecuteReader();
                tab.Load(read);
                conn.Close();
                Gen_Cons();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.ToString() + "')</script>");
            }

            if (IsPostBack)
            {
                for (int i = 0; i < tab.Rows.Count; i++)
                {
                    nums[i].Attributes.Add("value", nums[i].Text);
                }
            }

        }

        protected void BtnSend_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("Insert into PreOrder Values(@O_User,@list,@Price,@State,@Note)", conn);
            cmd.Parameters.AddWithValue("@O_User", Session["Account"].ToString());
            cmd.Parameters.AddWithValue("@list", Session["PassOrder"].ToString());
            cmd.Parameters.AddWithValue("@Price", Session["Price"].ToString());
            cmd.Parameters.AddWithValue("@State", "已提交");
            if (TxtNote.Text != "")
            {
                cmd.Parameters.AddWithValue("@Note", TxtNote.Text);
            }
            else
            {
                cmd.Parameters.AddWithValue("@Note", string.Empty);
            }
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert(" + ex.ToString() + ")</script>");
            }
            Response.Write("<script>alert('成功點單  頁面即將導向等待列表');window.location.replace('../CheckOrder.aspx')</script>");
        }

        protected void BtnTotal_Click(object sender, EventArgs e)
        {
            int total = 0;
            string passValue = "";
            for (int i = 0; i < tab.Rows.Count; i++)
            {
                passValue += nums[i].Text;
                if (nums[i].Text != "0")
                {
                    Panel1.Controls.Add(new LiteralControl("<p>"+ Food[i].Text +
                        " " + nums[i].Text + "份</p>"));
                    total += (int)tab.Rows[i]["Price"] * Int32.Parse(nums[i].Text);
                }
            }
            //Response.Write("<script>alert(" + passValue + ")</script>");
            Session["PassOrder"] = passValue;
            Session["Price"] = total;
            Panel1.Controls.Add(new LiteralControl("<p>總計：" + total.ToString() + "</p>"));
        }

        protected void BtnCh_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CheckOrder.aspx");
        }
            
    }
}