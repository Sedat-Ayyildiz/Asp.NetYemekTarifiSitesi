using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yorumlar : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel4.Visible = false;

        //ONAYLI YORUMLAR LİSTESİ
        SqlCommand komutYorumGoster = new SqlCommand("select * from Tbl_Yorumlar where YorumOnay=1", bgl.baglanti());
        SqlDataReader dr = komutYorumGoster.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        //ONAYSIZ YORUMLAR LİSTESİ
        SqlCommand komutYorumGoster2 = new SqlCommand("select * from Tbl_Yorumlar where YorumOnay=0", bgl.baglanti());
        SqlDataReader dr2 = komutYorumGoster2.ExecuteReader();
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

    protected void BtnEkle1_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void BtnCikar1_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }
}