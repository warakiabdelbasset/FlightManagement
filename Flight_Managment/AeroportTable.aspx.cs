using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Flight_Managment
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=DESKTOP-06GMMPB\SQLEXPRESS;Initial Catalog=gest_aero1;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                CountClient();
                CountReservation();
                CountVols();
                CountPilote();
            }
        }

        void CountPilote()
        {
            SqlConnection sqlCon = new SqlConnection(connectionString);

            sqlCon.Open();
            string sSQL = "select count(*) from pilote";
            SqlCommand tCommand = new SqlCommand(sSQL, sqlCon);
            SqlDataReader tDataReader = tCommand.ExecuteReader();
            if (tDataReader.HasRows)
            {
                tDataReader.Read();
                Label10.Text = tDataReader.GetInt32(0).ToString();
            }
        }
        void CountVols()
        {
            SqlConnection sqlCon = new SqlConnection(connectionString);

            sqlCon.Open();
            string strDate = DateTime.Now.ToString();
            string sSQL = "select count(*) from vol where date_a <'" + strDate + "'";
            SqlCommand tCommand = new SqlCommand(sSQL, sqlCon);
            SqlDataReader tDataReader = tCommand.ExecuteReader();
            if (tDataReader.HasRows)
            {
                tDataReader.Read();
                Label9.Text = tDataReader.GetInt32(0).ToString();
            }
        }
        void CountReservation()
        {
            SqlConnection sqlCon = new SqlConnection(connectionString);

            sqlCon.Open();
            string sSQL = "select count(*) from reservation";
            SqlCommand tCommand = new SqlCommand(sSQL, sqlCon);
            SqlDataReader tDataReader = tCommand.ExecuteReader();
            if (tDataReader.HasRows)
            {
                tDataReader.Read();
                Label8.Text = tDataReader.GetInt32(0).ToString();
            }
        }
        void CountClient()
        {
            SqlConnection sqlCon = new SqlConnection(connectionString);

            sqlCon.Open();
            string sSQL = "select count(*) from utilisateur where role_user='" + "client" + "'";
            SqlCommand tCommand = new SqlCommand(sSQL, sqlCon);
            SqlDataReader tDataReader = tCommand.ExecuteReader();
            if (tDataReader.HasRows)
            {
                tDataReader.Read();
                Label2.Text = tDataReader.GetInt32(0).ToString();
            }
        }
    }
}