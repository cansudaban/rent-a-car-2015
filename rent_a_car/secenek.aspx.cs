using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace rent_a_car
{
    public partial class secenek : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("listele.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("arac_ekle.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("kirala.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("arac_sil.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("sozlesme_gor.aspx");
        }
    }
}