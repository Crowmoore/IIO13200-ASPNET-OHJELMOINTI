using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JAMK.IT
{
    public static class DBDemoxOy
    {
        public static DataTable GetDataFromSQL()
        {

            try
            {
                string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["Clients"].ConnectionString;
                string sql = "";
                sql = "SELECT astunnus, asnimi, yhteyshlo, postitmp FROM asiakas";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {

                    connection.Open();

                    using (SqlCommand cmd = new SqlCommand(sql, connection))
                    {
                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataSet ds = new DataSet();
                        da.Fill(ds, "asiakas");
                        return ds.Tables["asiakas"];
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}
