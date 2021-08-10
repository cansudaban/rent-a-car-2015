using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace rent_a_car
{
    public partial class arac_ekle : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS; Initial Catalog = rentacar; Integrated Security = true;");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((TextBox1.Text != "") && (TextBox2.Text != "") && (TextBox3.Text != "") && (TextBox4.Text != "") && (TextBox5.Text != "") && (TextBox6.Text != "") && (TextBox7.Text != ""))
            {
                conn.Open();
                try
                {
                    string cmd = "insert into araclar(plaka, marka, model, renk, gunlukUcret, haftalikUcret, aylikUcret) values('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + TextBox5.Text + "', '" + TextBox6.Text + "', '" + TextBox7.Text + "')";
                    SqlCommand komutSatiri = new SqlCommand(cmd, conn);
                    komutSatiri.ExecuteNonQuery();
                    this.Label1.Text = "Kayıt Başarıyla Gerçekleşti";
                    temizle();
                    conn.Close();

                }
                catch (SqlException ex)
                {
                    this.Label1.Text = (ex.ToString());
                }

            }
            else
            {
                this.Label1.Text = "Lütfen Tüm Alanları Doldurunuz";
            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("secenek.aspx");

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