using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YorumDetay : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yorumid"];

        if (Page.IsPostBack == false)
        {
            SqlCommand komutYorum = new SqlCommand("select YorumAdSoyad,YorumMail,YorumIcerik,YemekAd from Tbl_Yorumlar inner join " +
            "Tbl_Yemekler on Tbl_Yorumlar.Yemekid=Tbl_Yemekler.Yemekid where Yorumid=@p1", bgl.baglanti());
            komutYorum.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komutYorum.ExecuteReader();
            while (dr.Read())
            {
                TxtAdSoyad.Text = dr[0].ToString();
                TxtMail.Text = dr[1].ToString();
                TxtIcerik.Text = dr[2].ToString();
                TxtYemek.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();
        }        
    }

    protected void BtnOnayla_Click(object sender, EventArgs e)
    {
        SqlCommand komutOnayla = new SqlCommand("update Tbl_Yorumlar set YorumIcerik=@p1,YorumOnay=@p2 where Yorumid=@p3",bgl.baglanti());
        komutOnayla.Parameters.AddWithValue("@p1", TxtIcerik.Text);
        komutOnayla.Parameters.AddWithValue("@p2", "True");
        komutOnayla.Parameters.AddWithValue("@p3", id);
        komutOnayla.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}