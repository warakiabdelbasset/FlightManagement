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
    public partial class Sign_Up : System.Web.UI.Page
    {
        //gest_aeroEntities db = new gest_aeroEntities();
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
            
            
            
            gest_aeroEntities db = new gest_aeroEntities();

           
                if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "signup()", true);
                }
               else {
                    utilisateur util = new utilisateur();
                    String fname = null;
                    String lname = null;
                    String tel = null;
                    String email = null;
                    String pwd = null;
                    fname = TextBox3.Text;
                    lname = TextBox4.Text;
                    tel = TextBox5.Text;
                    email = TextBox1.Text;
                    pwd = (Encrypt(TextBox2.Text.Trim()));
                util.nom_user = fname;
                    util.prenom_user = lname;
                    util.tel_user = tel;
                    util.email_user = email;
                    util.mdp_user=pwd;
                    util.role_user = "client";
                    db.utilisateurs.Add(util);
                    db.SaveChanges();
                   
                    Response.Redirect("Login.aspx");
                }
        }
    }
}