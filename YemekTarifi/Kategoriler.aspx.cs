using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Kategoriler : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["Kategoriid"];
            islem = Request.QueryString["islem"];
        }
        SqlCommand komutKategori = new SqlCommand("select * from Tbl_Kategoriler",bgl.baglanti());
        SqlDataReader dr = komutKategori.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        //KATEGORİ SİLME İŞLEMİ
        if (islem == "sil")
        {
            SqlCommand komutSil = new SqlCommand("delete from Tbl_Kategoriler where Kategoriid=@p1",bgl.baglanti());
            komutSil.Parameters.AddWithValue("@p1", id);
            komutSil.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        Panel2.Visible = false;
        Panel5.Visible = false;
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
        Panel5.Visible = true;
    }

    protected void BtnCikar1_Click(object sender, EventArgs e)
    {
        Panel5.Visible = false;
    }

    protected void BtnKategori_Click(object sender, EventArgs e)
    {
        SqlCommand komutEkle = new SqlCommand("insert into Tbl_Kategoriler(KategoriAd) values(@p1)",bgl.baglanti());
        komutEkle.Parameters.AddWithValue("@p1", TxtKategoriAd.Text);
        komutEkle.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}