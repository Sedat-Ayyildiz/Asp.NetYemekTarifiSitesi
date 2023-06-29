using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MesajDetay : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Mesajid"];
        SqlCommand komutMesajDetay = new SqlCommand("select * from Tbl_Mesajlar where Mesajid=@p1",bgl.baglanti());
        komutMesajDetay.Parameters.AddWithValue("@p1", id);
        SqlDataReader dr = komutMesajDetay.ExecuteReader();
        while (dr.Read())
        {
            TxtMsjGonderen.Text = dr[1].ToString();
            TxtBaslik.Text = dr[2].ToString();
            TxtMailAdresi.Text = dr[3].ToString();
            TxtMesajIcerik.Text = dr[4].ToString();
        }
        bgl.baglanti().Close();
    }
}