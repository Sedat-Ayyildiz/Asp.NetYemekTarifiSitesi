using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Mesajlar : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;

        SqlCommand komutMesaj = new SqlCommand("select * from Tbl_Mesajlar",bgl.baglanti());
        SqlDataReader dr = komutMesaj.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
    }

    protected void BtnEkle_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void BtnCikar_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }
}