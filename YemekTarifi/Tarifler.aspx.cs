using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Tarifler : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel4.Visible = false;

        //ONAYSIZ YORUMLAR
        SqlCommand komutTarifler = new SqlCommand("select * from Tbl_Tarifler where TarifDurum=0",bgl.baglanti());
        SqlDataReader dr = komutTarifler.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        //ONAYLI YORUMLAR
        SqlCommand komutTarifler2 = new SqlCommand("select * from Tbl_Tarifler where TarifDurum=1", bgl.baglanti());
        SqlDataReader dr2 = komutTarifler2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();
    }

    protected void BtnEkle_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void BtnCikar_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }
}