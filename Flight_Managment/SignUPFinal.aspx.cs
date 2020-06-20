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

namespace Flight_Managment
{
    public partial class SignUPFinal : System.Web.UI.Page
    {
        string connectionString = @"Data Source=DESKTOP-06GMMPB\SQLEXPRESS;Initial Catalog=gest_aero1;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private string Encrypt(string clearText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    clearText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return clearText;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "signup()", true);
            }
            else
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    string query1 = "select * from utilisateur where email_user='" + TextBox3.Text+"'";
                    SqlCommand sqlCmd1 = new SqlCommand(query1, sqlCon);
                    SqlDataReader sdr = sqlCmd1.ExecuteReader();

                    if (sdr.Read())
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "exist()", true);


                    }
                    else
                    {
                        sqlCon.Close();
                        sdr.Close();

                        sqlCon.Open();
                        string query = "INSERT INTO utilisateur(nom_user,prenom_user,tel_user,email_user,mdp_user,role_user) VALUES (@nom_user,@prenom_user,@tel_user,@email_user,@mdp_user,@role_user)";

                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);

                        sqlCmd.CommandType = CommandType.Text;
                        sqlCmd.Parameters.AddWithValue("@nom_user", TextBox1.Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@prenom_user", TextBox2.Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@tel_user", TextBox5.Text.Trim() + "-" + TextBox6.Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@email_user", TextBox3.Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@mdp_user", Encrypt(TextBox4.Text.Trim()));
                        sqlCmd.Parameters.AddWithValue("@role_user", "client");


                        sqlCmd.ExecuteNonQuery();
                        sqlCon.Close();
                        Response.Redirect("log.aspx");
                    }
                }
            }
        }
    }
}