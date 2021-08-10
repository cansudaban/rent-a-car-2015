using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace rent_a_car
{
    public partial class arac_sil : System.Web.UI.Page
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
                    DropDownList1.Items.Add(dr["plaka"].ToString());
                }

            }
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            string cmd = "delete from araclar where plaka='" + DropDownList1.SelectedItem.Text + "'";
            SqlCommand komutSatiri = new SqlCommand(cmd, conn);
            komutSatiri.ExecuteNonQuery();
            this.Label1.Text = "Silme İşlemi Başarıyla Gerçekleşti";
            DropDownList1.Items.Remove(DropDownList1.SelectedItem.Text);
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("secenek.aspx");

        }
    }
}