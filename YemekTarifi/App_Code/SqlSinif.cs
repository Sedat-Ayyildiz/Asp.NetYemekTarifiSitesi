using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


public class SqlSinif
{
    public SqlConnection baglanti()
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=SEDAT-AYYILDIZ\SQLEXPRESS;initial catalog=YemekTarifi;integrated security=True");
        baglan.Open();
        return baglan;
    }
}