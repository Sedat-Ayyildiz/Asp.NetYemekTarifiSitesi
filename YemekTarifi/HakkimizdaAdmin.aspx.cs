using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class HakkimizdaAdmin : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;

        if (Page.IsPostBack == false)//Hakkımızda bölümünün güncellenmesi için bu şekilde tanımlamamız lazım !
        {
            SqlCommand komutHakkinda = new SqlCommand("select * from Tbl_Hakkimizda", bgl.baglanti());
            SqlDataReader dr = komutHakkinda.ExecuteReader();
            while (dr.Read())
            {
                TxtHakkimizda.Text = dr[0].ToString();
            }
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komutGuncelle = new SqlCommand("update Tbl_Hakkimizda set Metin=@p1",bgl.baglanti());
        komutGuncelle.Parameters.AddWithValue("@p1", TxtHakkimizda.Text);
        komutGuncelle.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}