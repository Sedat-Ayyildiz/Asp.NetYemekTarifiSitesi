using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Hakkimizda : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komutHakkimizda = new SqlCommand("select * from Tbl_Hakkimizda",bgl.baglanti());
        SqlDataReader dr = komutHakkimizda.ExecuteReader();
        DataList3.DataSource = dr;
        DataList3.DataBind();
    }
}