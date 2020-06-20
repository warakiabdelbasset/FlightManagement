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
    public partial class Login : System.Web.UI.Page
    {
        gest_aeroEntities db = new gest_aeroEntities();
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

            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "signin()", true);
            }


            else { 
                var lp = db.utilisateurs.Any(p => p.email_user == TextBox1.Text && p.mdp_user == Encrypt(TextBox2.Text.Trim()) && p.role_user == "admin");
                if (lp)
                {
                    var r = db.utilisateurs.Single(c => c.email_user == TextBox1.Text && c.mdp_user == Encrypt(TextBox2.Text.Trim()) && c.role_user == "admin");
                    Session["role"] = "admin";
                    Session["nom"] = r.email_user;
                    Session["id"] = r.num_user;
                    Response.Redirect("Admin.aspx");

                }
                else
                {
                    var r = db.utilisateurs.Single(c => c.email_user == TextBox1.Text && c.mdp_user == Encrypt(TextBox2.Text.Trim()) && c.role_user == "client");
                    Session["role"] = "client";
                    Session["nom"] = r.email_user;
                    Session["id"] = r.num_user;
                    Response.Redirect("Client.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sign Up.aspx");
        }
    }
}