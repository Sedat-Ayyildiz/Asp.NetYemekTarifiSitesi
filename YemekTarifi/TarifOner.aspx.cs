using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifOner : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    SqlSinif bgl = new SqlSinif();
    protected void BtnTarifOner_Click(object sender, EventArgs e)
    {
        SqlCommand komutTarifOner = new SqlCommand("insert into Tbl_Tarifler(TarifAd,TarifMalzeme,TarifYapilis,TarifResim," +
                                                   "TarifSahip,TarifSahipMail) values(@t1,@t2,@t3,@t4,@t5,@t6)",bgl.baglanti());
        komutTarifOner.Parameters.AddWithValue("@t1", TxtTarifAd.Text);
        komutTarifOner.Parameters.AddWithValue("@t2", TxtMalzemeler.Text);
        komutTarifOner.Parameters.AddWithValue("@t3", TxtYapilis.Text);
        komutTarifOner.Parameters.AddWithValue("@t4", FileUpload1.FileName);
        komutTarifOner.Parameters.AddWithValue("@t5", TxtTarifOneren.Text);
        komutTarifOner.Parameters.AddWithValue("@t6", TxtMailAdresi.Text);
        komutTarifOner.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("TARİFİNİZ ALINMIŞTIR.");
    }
}