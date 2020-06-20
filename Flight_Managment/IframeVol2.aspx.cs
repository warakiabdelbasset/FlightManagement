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
    public partial class IframeVol2 : System.Web.UI.Page
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
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM vol", sqlCon);
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
                            || (gvPhoneBook.FooterRow.FindControl("txtContactFooter") as TextBox).Text.Trim() == "" || (gvPhoneBook.FooterRow.FindControl("txtEmailFooter") as TextBox).Text.Trim() == "" ||
                            (gvPhoneBook.FooterRow.FindControl("date_d1") as TextBox).Text.Trim() == "" || (gvPhoneBook.FooterRow.FindControl("date_a1") as TextBox).Text.Trim() == "")
                        {
                            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "addnew()", true);

                        }
                        else
                        {
                            sqlCon.Open();
                            string query = "INSERT INTO vol (aeroport_d,aeroport_a,num_pil,num_av,date_d,date_a) VALUES (@aeroport_d,@aeroport_a,@num_pil,@num_av,@date_d,@date_a)";
                            SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                            sqlCmd.Parameters.AddWithValue("@aeroport_d", (gvPhoneBook.FooterRow.FindControl("txtFirstNameFooter") as TextBox).Text.Trim());
                            sqlCmd.Parameters.AddWithValue("@aeroport_a", (gvPhoneBook.FooterRow.FindControl("txtLastNameFooter") as TextBox).Text.Trim());
                            sqlCmd.Parameters.AddWithValue("@num_pil", (gvPhoneBook.FooterRow.FindControl("txtContactFooter") as TextBox).Text.Trim());
                            sqlCmd.Parameters.AddWithValue("@num_av", (gvPhoneBook.FooterRow.FindControl("txtEmailFooter") as TextBox).Text.Trim());
                            sqlCmd.Parameters.AddWithValue("@date_d", (gvPhoneBook.FooterRow.FindControl("date_d1") as TextBox).Text.Trim());
                            sqlCmd.Parameters.AddWithValue("@date_a", (gvPhoneBook.FooterRow.FindControl("date_a1") as TextBox).Text.Trim());


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
                           || (gvPhoneBook.Rows[e.RowIndex].FindControl("txtContact") as TextBox).Text.Trim() == "" || (gvPhoneBook.Rows[e.RowIndex].FindControl("txtEmail") as TextBox).Text.Trim() == "")
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "addnew()", true);

                }
                else
                {
                    sqlCon.Open();
                    string query = "UPDATE vol SET aeroport_d=@aeroport_d,aeroport_a=@aeroport_a,num_pil=@num_pil,num_av=@num_av, date_d=@date_d, date_a=@date_a WHERE num_v = @num_v";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@aeroport_d", (gvPhoneBook.Rows[e.RowIndex].FindControl("txtFirstName") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@aeroport_a", (gvPhoneBook.Rows[e.RowIndex].FindControl("txtLastName") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@num_pil", (gvPhoneBook.Rows[e.RowIndex].FindControl("txtContact") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@num_av", (gvPhoneBook.Rows[e.RowIndex].FindControl("txtEmail") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@date_a", (gvPhoneBook.Rows[e.RowIndex].FindControl("date_a") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@date_d", (gvPhoneBook.Rows[e.RowIndex].FindControl("date_d") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@num_v", Convert.ToInt32(gvPhoneBook.DataKeys[e.RowIndex].Value.ToString()));

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
                    string query = "DELETE FROM vol WHERE num_v= @num_v";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@num_v", Convert.ToInt32(gvPhoneBook.DataKeys[e.RowIndex].Value.ToString()));
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