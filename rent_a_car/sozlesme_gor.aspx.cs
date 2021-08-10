using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace rent_a_car
{
    public partial class sozlesme_gor : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS; Initial Catalog = rentacar; Integrated Security = true;");
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select tcNo, ad, soyad, cinsiyet, kiralamaTarih, kiraBitis, kiraUcreti, plaka from sozlesme", conn);
            SqlDataReader rdr;
            try
            {
                //Bağlantımı açıyorum, dataReader nesnemi çalıştırıyorum ve GridView kontrolüme DataBind işlemi yapıyorum.
                rdr = cmd.ExecuteReader();
                GridView1.DataSource = rdr;
                GridView1.DataBind();
                //Reader nesnemi kapatıyorum
                rdr.Close();
            }
            //hata olursa vereceğim mesaj
            catch (SqlException ex)
            {
                this.Label1.Text = (ex.ToString());
            }
            finally
            {
                conn.Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("secenek.aspx");
        }
    }
}