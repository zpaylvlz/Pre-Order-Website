using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Web.SessionState;
using System.Web.Services;
namespace Booking
{
    
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = (@"Data Source = 127.0.0.1,5566\SQLEXPRESS;initial catalog = " +
            "Order;User = sa;Password = zpay");

            if (IsPostBack)
            {
                txtPass.Attributes.Add("Value", txtPass.Text);
                txtComf.Attributes.Add("Value", txtComf.Text);
            }

            if (!IsPostBack)
            {
                Session["isExist"] = false;
                Session["isPWComfirm"] = false;
                Session["Vcode"] = "";
            }

            if ((bool)Session["isExist"] && (bool)Session["isPWComfirm"] && txtMail.Text != "")
            {
                BtnCre.Enabled = true;
            }
        }

        protected void txtAcc_TextChanged(object sender, EventArgs e)
        {
            string result = "";
            try
            {
                cmd = new SqlCommand("Select * from Users where Account = @Account", conn);
                cmd.Parameters.AddWithValue("@Account", txtAcc.Text);
                try
                {
                    conn.Open();
                    result = (string)cmd.ExecuteScalar();
                    conn.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.ToString() + "')</script>");
                }
                
                if (result == txtAcc.Text)
                {
                    AccSign.Text = "該帳號已存在";
                    Session["isExist"] = false;
                }
                else
                {
                    AccSign.Text = "";
                    Session["isExist"] = true;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.ToString() + "');</script>");
            }
        }

        protected void txtComf_TextChanged(object sender, EventArgs e)
        {
            if (txtPass.Text != txtComf.Text)
            {
                 PassSign.Text = "密碼比對不符合";
                 Session["isPWComfirm"] = false;
            }
            else
            {
                PassSign.Text = "";
                Session["isPWComfirm"] = true;
            }
        }

        protected void BtnCre_Click(object sender, EventArgs e)
        {
            string ReciptAdd = txtMail.Text;
            Session["Vcode"] = "";
            Random Rnd = new Random();
            for (int i = 0; i < 6; i++)
            {
                Session["Vcode"] = (string)Session["Vcode"] + (char)((int)'A' + Rnd.Next(0, 26));
            }

            MailMessage msg = new System.Net.Mail.MailMessage();
            msg.To.Add(ReciptAdd);
            msg.From = new MailAddress("wasdlins@gmail.com", "渣男翔翔", System.Text.Encoding.UTF8);
            msg.Subject = "請確認你的認證碼";
            msg.SubjectEncoding = System.Text.Encoding.UTF8;
            msg.Body = "你的驗證碼是：　" + Session["Vcode"]; 
            msg.BodyEncoding = System.Text.Encoding.UTF8;
            msg.IsBodyHtml = true;

            SmtpClient client = new SmtpClient();
            client.Credentials = new System.Net.NetworkCredential("wasdlins@gmail.com", "xl3y7cl3gj94");
            client.Host = "smtp.gmail.com"; 
            client.Port = 25; 
            client.EnableSsl = true; 
            client.Send(msg);
            BtnVeri.Enabled = true;
            Response.Write("<script>alert('已寄送驗證碼至信箱')</script>");
        }

        protected void BtnVeri_Click(object sender, EventArgs e)
        {
            if (txtVeri.Text == (string)Session["Vcode"])
            {
                cmd = new SqlCommand("Insert into Users Values(@Account , @Password, @Email)",conn);
                cmd.Parameters.AddWithValue("@Account", txtAcc.Text);
                cmd.Parameters.AddWithValue("@Password", txtPass.Text);
                cmd.Parameters.AddWithValue("@EMail", txtMail.Text);
                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.ToString() + "')</script>");
                }

                Response.Write("<script>alert('註冊成功 將前往登錄頁面');window.location.replace('../Login.aspx')</script>");
            }
            else
            {
                Response.Write("<script>alert('驗證碼錯誤 請確認是否正確輸入')</script>");
            }

        }
    }
}   