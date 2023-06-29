using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDuzenle : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yemekid"];
        if (Page.IsPostBack == false)//Burayı yapmamızın sebebi bu işlemi bir kere yap ve üstüne daha da başka bir işlem ekleme demek !!!
        {
            SqlCommand komutGuncelle = new SqlCommand("select * from Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
            komutGuncelle.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komutGuncelle.ExecuteReader();
            while (dr.Read())
            {
                TxtYemekAd.Text = dr[1].ToString();
                TxtMalzeme.Text = dr[2].ToString();
                TxtTarif.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();

            if (Page.IsPostBack == false)//Sayfada işlem yapınca ilk sayfa load olunca kullanılan id kalmasın değişsin diye yapıyoruz !
            {
                //KATEGORİ LİSTESİ(Dropdown İçine EKleme)
                SqlCommand komutKategoriListesi = new SqlCommand("select * from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komutKategoriListesi.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";//Dropdownlist içinde gözükecek isim.
                DropDownList1.DataValueField = "Kategoriid";//Arkaplanda çalışacak değer.
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }
    }

    protected void BtnGuncelle_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/YemekResimleri/"+FileUpload1.FileName));//FileupLoad'a Yemek Resimlerini Çektik !!!
        SqlCommand komutGuncelle = new SqlCommand("update Tbl_Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3," +
                                                  "Kategoriid=@p4,YemekResim=@p6 where Yemekid=@p5", bgl.baglanti());
        komutGuncelle.Parameters.AddWithValue("@p1", TxtYemekAd.Text);
        komutGuncelle.Parameters.AddWithValue("@p2", TxtMalzeme.Text);
        komutGuncelle.Parameters.AddWithValue("@p3", TxtTarif.Text);
        komutGuncelle.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komutGuncelle.Parameters.AddWithValue("@p6", "~/YemekResimleri/" + FileUpload1.FileName);//Resimlerin Dosya Yolunu Belirtmeyi Unutmayın !
        komutGuncelle.Parameters.AddWithValue("@p5", id);
        komutGuncelle.ExecuteNonQuery();
        bgl.baglanti().Close();
    }

    protected void BtnGununYemegiSec_Click(object sender, EventArgs e)
    {
        //TÜM YEMEKLERİN DURUMUNU FALSE YAPTIK !
        SqlCommand komutGununYemegiSec = new SqlCommand("update Tbl_Yemekler set Durum=0",bgl.baglanti());
        komutGununYemegiSec.ExecuteNonQuery();
        bgl.baglanti().Close();

        //GÜNÜN YEMEĞİ İÇİN İD'ye GÖRE DURUMU TRUE YAPTIK
        SqlCommand komutGunuYemegi = new SqlCommand("update Tbl_Yemekler set Durum=1 where Yemekid=@p1", bgl.baglanti());
        komutGunuYemegi.Parameters.AddWithValue("@p1", id);
        komutGunuYemegi.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}