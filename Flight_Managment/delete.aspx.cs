using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Security.Cryptography;
using System.IO;
using System.Configuration;

namespace Flight_Managment
{
    public partial class delete : System.Web.UI.Page
    {
        string connectionString = @"Data Source=DESKTOP-06GMMPB\SQLEXPRESS;Initial Catalog=gest_aero1;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateGridview();
            }

        }

        void PopulateGridview()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM utilisateur where role_user='" + "client" + "'", sqlCon);
                sqlDa.Fill(dtbl);
            }
            if (dtbl.Rows.Count > 0)
            {
                gvPhoneBook.DataSource = dtbl;
                gvPhoneBook.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                gvPhoneBook.DataSource = dtbl;
                gvPhoneBook.DataBind();
                gvPhoneBook.Rows[0].Cells.Clear();
                gvPhoneBook.Rows[0].Cells.Add(new TableCell());
                gvPhoneBook.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                gvPhoneBook.Rows[0].Cells[0].Text = "No Data Found ..!";
                gvPhoneBook.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }

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

        protected void gvPhoneBook_RowCommand(object sender, GridViewCommandEventArgs e)
        {


            try
            {
                if (e.CommandName.Equals("AddNew"))
                {

                    using (SqlConnection sqlCon = new SqlConnection(connectionString))
                    {
                        if ((gvPhoneBook.FooterRow.FindControl("txtFirstNameFooter") as TextBox).Text.Trim() == "" || (gvPhoneBook.FooterRow.FindControl("txtLastNameFooter") as TextBox).Text.Trim() == ""
                            || (gvPhoneBook.FooterRow.FindControl("txtContactFooter") as TextBox).Text.Trim() == "" || (gvPhoneBook.FooterRow.FindControl("txtEmailFooter") as TextBox).Text.Trim() == "" ||
                            (gvPhoneBook.FooterRow.FindControl("role_user1") as TextBox).Text.Trim() == "" || (gvPhoneBook.FooterRow.FindControl("mdp_user1") as TextBox).Text.Trim() == "")
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "addnew()", true);

                        }
                        else
                        {
                            sqlCon.Open();
                            string query = "INSERT INTO utilisateur (nom_user,prenom_user,tel_user,email_user,role_user,mdp_user) VALUES (@nom_user,@prenom_user,@tel_user,@email_user,@role_user,@mdp_user)";
                            SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                            sqlCmd.Parameters.AddWithValue("@nom_user", (gvPhoneBook.FooterRow.FindControl("txtFirstNameFooter") as TextBox).Text.Trim());
                            sqlCmd.Parameters.AddWithValue("@prenom_user", (gvPhoneBook.FooterRow.FindControl("txtLastNameFooter") as TextBox).Text.Trim());
                            sqlCmd.Parameters.AddWithValue("@tel_user", (gvPhoneBook.FooterRow.FindControl("txtContactFooter") as TextBox).Text.Trim());
                            sqlCmd.Parameters.AddWithValue("@email_user", (gvPhoneBook.FooterRow.FindControl("txtEmailFooter") as TextBox).Text.Trim());
                            sqlCmd.Parameters.AddWithValue("@role_user", (gvPhoneBook.FooterRow.FindControl("role_user1") as TextBox).Text.Trim());
                            sqlCmd.Parameters.AddWithValue("@mdp_user", Encrypt((gvPhoneBook.FooterRow.FindControl("mdp_user1") as TextBox).Text.Trim()));


                            sqlCmd.ExecuteNonQuery();
                            PopulateGridview();
                            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "good()", true);

                        }
                    }
                }
            }
            catch (Exception ex)
            {
                
            }



        }

        protected void gvPhoneBook_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvPhoneBook.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void gvPhoneBook_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvPhoneBook.EditIndex = -1;
            PopulateGridview();
        }

        protected void gvPhoneBook_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {


            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                if ((gvPhoneBook.Rows[e.RowIndex].FindControl("txtFirstName") as TextBox).Text.Trim() == "" || (gvPhoneBook.Rows[e.RowIndex].FindControl("txtLastName") as TextBox).Text.Trim() == ""
                           || (gvPhoneBook.Rows[e.RowIndex].FindControl("txtContact") as TextBox).Text.Trim() == "" || (gvPhoneBook.Rows[e.RowIndex].FindControl("txtEmail") as TextBox).Text.Trim() == "")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "addnew()", true);

                }
                else
                {
                    sqlCon.Open();
                    string query = "UPDATE utilisateur SET nom_user=@nom_user,prenom_user=@prenom_user,tel_user=@tel_user,email_user=@email_user, role_user=@role_user WHERE num_user = @num_user";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@nom_user", (gvPhoneBook.Rows[e.RowIndex].FindControl("txtFirstName") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@prenom_user", (gvPhoneBook.Rows[e.RowIndex].FindControl("txtLastName") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@tel_user", (gvPhoneBook.Rows[e.RowIndex].FindControl("txtContact") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@email_user", (gvPhoneBook.Rows[e.RowIndex].FindControl("txtEmail") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@num_user", Convert.ToInt32(gvPhoneBook.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.Parameters.AddWithValue("@role_user", (gvPhoneBook.Rows[e.RowIndex].FindControl("role_user") as TextBox).Text.Trim());
                    sqlCmd.ExecuteNonQuery();
                    gvPhoneBook.EditIndex = -1;
                    PopulateGridview();
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "upda()", true);
                }


            }
        }

        protected void gvPhoneBook_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            try
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {

                    sqlCon.Open();
                    string query = "DELETE FROM utilisateur WHERE num_user = @num_user";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@num_user", Convert.ToInt32(gvPhoneBook.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    PopulateGridview();
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "verif()", true);
                }
            }
            catch (Exception ex)
            {
               
            }
        }


        protected void gvPhoneBook_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    
}
}