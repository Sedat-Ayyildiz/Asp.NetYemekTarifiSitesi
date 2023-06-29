using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifOnerDetay : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Tarifid"];

        if (Page.IsPostBack == false)
        {
            SqlCommand komutTarifGetir = new SqlCommand("select * from Tbl_Tarifler where Tarifid=@p1", bgl.baglanti());
            komutTarifGetir.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komutTarifGetir.ExecuteReader();
            while (dr.Read())
            {
                TxtTarifAd.Text = dr[1].ToString();
                TxtMalzeme.Text = dr[2].ToString();
                TxtYapilis.Text = dr[3].ToString();
                TxtTarifOneren.Text = dr[5].ToString();
                TxtOnerenMail.Text = dr[6].ToString();
            }
            bgl.baglanti().Close();

            //KATEGORİ LİSTESİ(Dropdown İçine EKleme)
            SqlCommand komutKategoriListesi = new SqlCommand("select * from Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komutKategoriListesi.ExecuteReader();
            DropDownList1.DataTextField = "KategoriAd";//Dropdownlist içinde gözükecek isim.
            DropDownList1.DataValueField = "Kategoriid";//Arkaplanda çalışacak değer.
            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
        }        
    }

    protected void BtnYorumYap_Click(object sender, EventArgs e)
    {
        //GÜNCELLEME
        SqlCommand komutGuncelle = new SqlCommand("update Tbl_Tarifler set TarifDurum=1 where Tarifid=@p1", bgl.baglanti());
        komutGuncelle.Parameters.AddWithValue("@p1", id);
        komutGuncelle.ExecuteNonQuery();
        bgl.baglanti().Close();

        //YEMEĞİ ANA SAYFAYA EKLEME
        SqlCommand komutDurum = new SqlCommand("insert into Tbl_Yemekler(YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values(@p1,@p2,@p3,@p4)",bgl.baglanti());
        komutDurum.Parameters.AddWithValue("@p1", TxtTarifAd.Text);
        komutDurum.Parameters.AddWithValue("@p2", TxtMalzeme.Text);
        komutDurum.Parameters.AddWithValue("@p3", TxtYapilis.Text);
        komutDurum.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komutDurum.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}