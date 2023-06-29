using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KategoriDetay : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    string kategoriid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        kategoriid = Request.QueryString["Kategoriid"];
        SqlCommand komutGetir = new SqlCommand("select * from Tbl_Yemekler where Kategoriid=@p1",bgl.baglanti());
        komutGetir.Parameters.AddWithValue("@p1", kategoriid);
        SqlDataReader dr = komutGetir.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();
    }
}