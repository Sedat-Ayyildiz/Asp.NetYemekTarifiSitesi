using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yemekler : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel5.Visible = false;

        if (Page.IsPostBack == false)//Sayfada işlem yapınca ilk sayfa load olunca kullanılan id kalmasın değişsin diye yapıyoruz !
        {
            islem = Request.QueryString["islem"];
            id = Request.QueryString["Yemekid"];

            //KATEGORİ LİSTESİ(Dropdown İçine EKleme)
            SqlCommand komutKategoriListesi = new SqlCommand("select * from Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komutKategoriListesi.ExecuteReader();
            DropDownList1.DataTextField = "KategoriAd";//Dropdownlist içinde gözükecek isim.
            DropDownList1.DataValueField = "Kategoriid";//Arkaplanda çalışacak değer.
            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
        }

        //YEMEK LİSTESİ
        SqlCommand komutYemekGetir = new SqlCommand("select * from Tbl_Yemekler", bgl.baglanti());
        SqlDataReader dr = komutYemekGetir.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        if (islem == "sil")
        {
            SqlCommand komutSil = new SqlCommand("delete from Tbl_Yemekler where Yemekid=@p1",bgl.baglanti());
            komutSil.Parameters.AddWithValue("@p1", id);
            komutSil.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
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

    protected void BtnYemekEkle_Click(object sender, EventArgs e)
    {
        //YEMEK EKLE
        SqlCommand komutYemekEkle = new SqlCommand("insert into Tbl_Yemekler(YemekAd,YemekMalzeme,YemekTarif,Kategoriid) " +
            "values(@p1,@p2,@p3,@p4)",bgl.baglanti());
        komutYemekEkle.Parameters.AddWithValue("@p1", TxtYemekAd.Text);
        komutYemekEkle.Parameters.AddWithValue("@p2", TxtMalzeme.Text);
        komutYemekEkle.Parameters.AddWithValue("@p3", TxtTarif.Text);
        komutYemekEkle.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komutYemekEkle.ExecuteNonQuery();
        bgl.baglanti().Close();

        //KATEGORİLERDE Kİ YEMEĞE 1 YEMEK EKLEYİNCE ADET SAYISINI ARTTIRMA
        SqlCommand komutKategoriArttır = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where " +
                                                        "Kategoriid=@p1", bgl.baglanti());
        komutKategoriArttır.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        komutKategoriArttır.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}