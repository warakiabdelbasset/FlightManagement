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
    public partial class loginnormal : System.Web.UI.Page
    {
        string connectionString = @"Data Source=DESKTOP-06GMMPB\SQLEXPRESS;Initial Catalog=gest_aero;Integrated Security=True";
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();

                string query = "select * from utilisateur where email_user='" + TextBox1.Text + "' and mdp_user='" + Encrypt(TextBox2.Text.Trim()) + "' and role_user='" + "admin" + "'";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                SqlDataReader sdr = sqlCmd.ExecuteReader();

                if (sdr.Read())
                {

                    Session["role"] = "admin";
                    Session["nom"] = sdr["nom_user"].ToString();
                    Session["id"] = sdr["num_user"].ToString();
                    Response.Redirect("Admin.aspx");
                   
                    
                }

                sdr.Close();
                string query1 = "select * from utilisateur where email_user='" + TextBox1.Text + "' and mdp_user='" + Encrypt(TextBox2.Text.Trim()) + "' and role_user='" + "client" + "'";
                SqlCommand sqlCmd1 = new SqlCommand(query1, sqlCon);
                SqlDataReader sdr1 = sqlCmd1.ExecuteReader();

                if (sdr1.Read())
                {

                    Session["role"] = "client";
                    Session["nom"] = sdr1["nom_user"].ToString();
                    Session["id"] = sdr1["num_user"].ToString();
                    Response.Redirect("Client.aspx");
                    


                }
                sdr1.Close();
            }
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SigninNormal");
        }
    }
    }
