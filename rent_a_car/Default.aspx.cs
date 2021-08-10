using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace rent_a_car
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS; Initial Catalog = rentacar; Integrated Security = true;");
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from kullanici where kullaniciadi='" + TextBox1.Text + "' and sifre='" + TextBox2.Text + "' ", conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("secenek.aspx");
            }
            else
            {
                this.Label1.Text = "Kullanıcı Adı veya Şifre Yanlış";
            }
            conn.Close();
        }
        public void temizle()
        {
            foreach (Control t in this.Page.Form.Controls)
            {
                if (t is TextBox)
                {
                    ((TextBox)t).Text = string.Empty;
                }
            }
        }
    }
}