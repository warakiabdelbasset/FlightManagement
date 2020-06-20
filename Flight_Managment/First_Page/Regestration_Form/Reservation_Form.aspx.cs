using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Security.Cryptography;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Flight_Managment.First_Page.Regestration_Form
{
    public partial class Reservation_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String a = first_16.Value;
            input_17.Value = Session["email"].ToString();
            first_16.Value = Session["nom"].ToString();
            last_16.Value = Session["prenom"].ToString();


        }
      

        protected void Button1_Click(object sender, EventArgs e)
        {
            String id = Session["id"].ToString();
            String a;
            String b;
            String v;
            string connectionString = @"Data Source=DESKTOP-06GMMPB\SQLEXPRESS;Initial Catalog=gest_aero1;Integrated Security=True";
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {

                sqlCon.Open();
                string query1 = "select num_aero from aeroport where nom_aero='" + DropDownList2.SelectedValue + "'";
                SqlCommand sqlCmd1 = new SqlCommand(query1, sqlCon);
                SqlDataReader sdr = sqlCmd1.ExecuteReader();


                if (sdr.Read())
                {
                    a = sdr["num_aero"].ToString();


                    sdr.Close();
                    sqlCon.Close();


                    sqlCon.Open();
                    string query12 = "select num_aero from aeroport where nom_aero='" + DropDownList3.SelectedValue + "'";
                    SqlCommand sqlCmd12 = new SqlCommand(query12, sqlCon);
                    SqlDataReader sdr1 = sqlCmd12.ExecuteReader();

                    if (sdr1.Read())
                    {

                        b = sdr1["num_aero"].ToString();
                        sdr1.Close();
                        sqlCon.Close();

                        sqlCon.Open();
                        string query4 = "select num_v from vol where aeroport_a= " + a + " and aeroport_d= " + b + " ";
                        SqlCommand sqlCmd4 = new SqlCommand(query4, sqlCon);
                        SqlDataReader sdr4 = sqlCmd4.ExecuteReader();

                        if (sdr4.Read())
                        {
                            v = sdr4["num_v"].ToString();
                            Response.Write(v);

                            sdr4.Close();
                            sqlCon.Close();



                            sqlCon.Open();
                            String s = DateTime.Now.ToString();
                            string query3 = "INSERT INTO reservation(num_v,num_user,date_resa) VALUES ( " + v + "," + id + ",@date_res)";
                            SqlCommand sqlCmd3 = new SqlCommand(query3, sqlCon);
                            sqlCmd3.Parameters.AddWithValue("@date_res", year_.Value+"-"+ month_.Value+"-"+ day_.Value);
                            sqlCmd3.ExecuteNonQuery();
                            sqlCon.Close();

                        }
                    }
                }
                sqlCon.Close();
                sqlCon.Open();
                string query = "INSERT INTO passager(num_passport,nom_psg,prenom_psg) VALUES (@num_passport,@nom_psg,@prenom_psg)";

                SqlCommand sqlCmd33 = new SqlCommand(query, sqlCon);

                sqlCmd33.CommandType = CommandType.Text;
                sqlCmd33.Parameters.AddWithValue("@nom_psg", first_16.Value);
                sqlCmd33.Parameters.AddWithValue("@num_passport", pass.Value);
                sqlCmd33.Parameters.AddWithValue("@prenom_psg", last_16.Value);
                sqlCmd33.ExecuteNonQuery();
                sqlCon.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "good()", true);

                String k;

                sqlCon.Open();
                string query7 = "select num_resa from reservation where num_user='" + id + "'";
                SqlCommand sqlCmd7 = new SqlCommand(query7, sqlCon);
                SqlDataReader sdr7 = sqlCmd7.ExecuteReader();

                if (sdr7.Read())
                {


                    k = sdr7["num_resa"].ToString();
                    sdr7.Close();
                    sqlCon.Close();



                    sqlCon.Open();
                    string query6 = "INSERT INTO billet(classe_siege,num_passport,num_resa) VALUES (@classe_siege,@num_passport,@num_resa)";

                    SqlCommand sqlCmd6 = new SqlCommand(query6, sqlCon);

                    sqlCmd6.CommandType = CommandType.Text;
                    sqlCmd6.Parameters.AddWithValue("@classe_siege", input_6.Value);
                    sqlCmd6.Parameters.AddWithValue("@num_passport", pass.Value);
                    sqlCmd6.Parameters.AddWithValue("@num_resa", k);
                    sqlCmd6.ExecuteNonQuery();
                    sqlCon.Close();

                    
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "Export()", true);



                }
            }
        }
    }
}