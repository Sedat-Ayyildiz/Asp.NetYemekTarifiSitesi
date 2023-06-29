using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Iletisim : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnGonder_Click(object sender, EventArgs e)
    {
        SqlCommand komutMesaj = new SqlCommand("insert into Tbl_Mesajlar(MesajGonderen,MesajBaslik,MesajMail,MesajIcerik) " +
                                               "values(@p1,@p2,@p3,@p4)",bgl.baglanti());
        komutMesaj.Parameters.AddWithValue("@p1", TxtAdSoyad.Text);
        komutMesaj.Parameters.AddWithValue("@p2", TxtKonu.Text);
        komutMesaj.Parameters.AddWithValue("@p3", TxtMailAdresi.Text);
        komutMesaj.Parameters.AddWithValue("@p4", TxtMesaj.Text);
        komutMesaj.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}