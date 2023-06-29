using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDetay : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    string yemekid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        yemekid = Request.QueryString["yemekid"];

        SqlCommand komut = new SqlCommand("select YemekAd from Tbl_Yemekler where yemekid=@p1",bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", yemekid);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            Label3.Text = dr[0].ToString();
        }
        bgl.baglanti().Close();

        //YORUMLARI LİSTELEME
        SqlCommand komutYorum = new SqlCommand("select * from Tbl_Yorumlar where yemekid=@p2",bgl.baglanti());
        komutYorum.Parameters.AddWithValue("@p2", yemekid);
        SqlDataReader dr2 = komutYorum.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komutYorumyAP = new SqlCommand("insert into Tbl_Yorumlar(YorumAdSoyad,YorumMail,YorumIcerik,Yemekid) values(@p1,@p2,@p3,@p4)",bgl.baglanti());
        komutYorumyAP.Parameters.AddWithValue("@p1", TxtAdSoyad.Text);
        komutYorumyAP.Parameters.AddWithValue("@p2", TxtMailAdresi.Text);
        komutYorumyAP.Parameters.AddWithValue("@p3", TxtYorum.Text);
        komutYorumyAP.Parameters.AddWithValue("@p4", yemekid);
        komutYorumyAP.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}