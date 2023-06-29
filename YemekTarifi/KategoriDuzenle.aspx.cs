using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KategoriAdminDetay : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Kategoriid"];
        if (Page.IsPostBack == false)//Burayı yapmamızın sebebi bu işlmei bir kere yap ve üstüne daha da başka bir işlme eklemek demek !!!
        {            
            SqlCommand komutKategori = new SqlCommand("select * from Tbl_Kategoriler where Kategoriid=@p1", bgl.baglanti());
            komutKategori.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komutKategori.ExecuteReader();
            while (dr.Read())
            {
                TxtKategoriAd.Text = dr[1].ToString();
                TxtAdet.Text = dr[2].ToString();                
            }
            bgl.baglanti().Close();
        }        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komutGuncelle = new SqlCommand("update Tbl_Kategoriler set Kategoriad=@p2,KategoriAdet=@p3 where Kategoriid=@p4",bgl.baglanti());
        komutGuncelle.Parameters.AddWithValue("@p2", TxtKategoriAd.Text);
        komutGuncelle.Parameters.AddWithValue("@p3", TxtAdet.Text);
        komutGuncelle.Parameters.AddWithValue("@p4", id);
        komutGuncelle.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}