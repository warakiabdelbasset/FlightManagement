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
    public partial class IframeAirePlane : System.Web.UI.Page
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
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM avion", sqlCon);
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
       

        protected void gvPhoneBook_RowCommand(object sender, GridViewCommandEventArgs e)
        {


            try
            {
                if (e.CommandName.Equals("AddNew"))
                {

                    using (SqlConnection sqlCon = new SqlConnection(connectionString))
                    {
                        if ((gvPhoneBook.FooterRow.FindControl("txtFirstNameFooter") as TextBox).Text.Trim() == "" || (gvPhoneBook.FooterRow.FindControl("txtLastNameFooter") as TextBox).Text.Trim() == ""
                            || (gvPhoneBook.FooterRow.FindControl("txtContactFooter") as TextBox).Text.Trim() == "")
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "addnew()", true);

                        }
                        else
                        {
                            sqlCon.Open();
                            string query = "INSERT INTO avion (modele_av,capacite_av,nbr_h_travail) VALUES (@modele_av,@capacite_av,@nbr_h_travail)";
                            SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                            sqlCmd.Parameters.AddWithValue("@modele_av", (gvPhoneBook.FooterRow.FindControl("txtFirstNameFooter") as TextBox).Text.Trim());
                            sqlCmd.Parameters.AddWithValue("@capacite_av", (gvPhoneBook.FooterRow.FindControl("txtLastNameFooter") as TextBox).Text.Trim());
                            sqlCmd.Parameters.AddWithValue("@nbr_h_travail", (gvPhoneBook.FooterRow.FindControl("txtContactFooter") as TextBox).Text.Trim());

                           // sqlCmd.Parameters.AddWithValue("@nbr_h_travail", Convert.ToInt32(gvPhoneBook.FooterRow.FindControl("txtContactFooter") as TextBox).ToString());



                            sqlCmd.ExecuteNonQuery();
                            PopulateGridview();
                            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "good()", true);

                            lblErrorMessage.Text = "";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
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
                           || (gvPhoneBook.Rows[e.RowIndex].FindControl("txtContact") as TextBox).Text.Trim() == "")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "addnew()", true);

                }
                else
                {
                    sqlCon.Open();
                    string query = "UPDATE avion SET modele_av=@modele_av,capacite_av=@capacite_av,nbr_h_travail=@nbr_h_travail WHERE num_av = @num_av";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@modele_av", (gvPhoneBook.Rows[e.RowIndex].FindControl("txtFirstName") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@capacite_av", (gvPhoneBook.Rows[e.RowIndex].FindControl("txtLastName") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@nbr_h_travail", (gvPhoneBook.Rows[e.RowIndex].FindControl("txtContact") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@num_av", Convert.ToInt32(gvPhoneBook.DataKeys[e.RowIndex].Value.ToString()));


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
                    string query = "DELETE FROM avion WHERE num_av = @num_av";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@num_av", Convert.ToInt32(gvPhoneBook.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    PopulateGridview();
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "verif()", true);
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }


        protected void gvPhoneBook_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}