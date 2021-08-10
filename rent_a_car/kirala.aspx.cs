using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace rent_a_car
{
    public partial class kirala : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS; Initial Catalog = rentacar; Integrated Security = true;");
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select plaka from araclar", conn);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (!Page.IsPostBack)
                {
                    DropDownList2.Items.Add(dr["plaka"].ToString());
                }

            }
            conn.Close();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((TextBox1.Text != "") && (TextBox2.Text != "") && (TextBox3.Text != "") && (DropDownList1.Text != "") && (TextBox5.Text != "") && (TextBox6.Text != "") && (TextBox7.Text != "") && (TextBox8.Text != "") && (TextBox9.Text != "") && (TextBox10.Text != "") && (TextBox11.Text != "") && (TextBox12.Text != ""))
            {
                conn.Open();
                try
                {
                    string cmd = "insert into sozlesme(tcNo, ad, soyad, cinsiyet, dtarihi, dyeri, telefon, email, adres, ehliyetno, ehliyettarih,ehliyetverilenyer, kiralamaTarih,kiraBitis,kiraUcreti,plaka) values('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + DropDownList1.Text + "', '" + TextBox11.Text + "', '" + TextBox6.Text + "', '" + TextBox7.Text + "','" + TextBox8.Text + "', '" + TextBox9.Text + "', '" + TextBox10.Text + "', '" + TextBox5.Text + "', '" + TextBox12.Text + "', '" + TextBox4.Text + "', '" + TextBox13.Text + "', '" + DropDownList3.Text + "','" + DropDownList2.Text + "')";
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

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string plk = DropDownList2.SelectedItem.Text;
            DropDownList3.Items.Clear();
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from araclar where plaka='" + plk + "'", conn);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                DropDownList3.Items.Add("Günlük:"+dr["gunlukUcret"].ToString());
                DropDownList3.Items.Add("Haftalık:" + dr["haftalikUcret"].ToString());
                DropDownList3.Items.Add("Aylık:" + dr["aylikUcret"].ToString());

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