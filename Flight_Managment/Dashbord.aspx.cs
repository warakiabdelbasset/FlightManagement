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
    public partial class WebForm1 : System.Web.UI.Page
    {
        public double toMod = 5;
        public double b = 5;
        public double c = 5;
        public DataTable dt = new DataTable();

        string connectionString = @"Data Source=DESKTOP-06GMMPB\SQLEXPRESS;Initial Catalog=gest_aero1;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateGridview();
                CountClient();
                CountReservation();
                CountVols();
                CountPilote();
              //  Countclientwhere();
                toMod = 5;
                b = 5;
                c = 5;
                
            }

        }
         /*  void Countclientwhere()
          {


            SqlConnection sqlCon = new SqlConnection(connectionString);

            string sSQL = "select 1,COUNT(*) from utilisateur WHERE  role_user='client'  and  YEAR(DateInserted) = '2020' and month(DateInserted) = 1 union select 2,COUNT(*) from utilisateur WHERE  role_user = 'client'  and YEAR(DateInserted) = '2020' and month(DateInserted) = 2 union select 3,COUNT(*) from utilisateur WHERE  role_user = 'client'  and YEAR(DateInserted) = '2020' and month(DateInserted) = 3 union select 4,COUNT(*) from utilisateur WHERE  role_user = 'client'  and YEAR(DateInserted) = '2020' and month(DateInserted) = 4 union select 5,COUNT(*) from utilisateur WHERE  role_user = 'client'  and YEAR(DateInserted) = '2020' and month(DateInserted) = 5 union select 6,COUNT(*) from utilisateur WHERE  role_user = 'client'  and YEAR(DateInserted) = '2020' and month(DateInserted) = 6 union select 7,COUNT(*) from utilisateur WHERE  role_user = 'client'  and YEAR(DateInserted) = '2020' and month(DateInserted) = 7 union select 8,COUNT(*) from utilisateur WHERE  role_user = 'client'  and YEAR(DateInserted) = '2020' and month(DateInserted) = 8 union select 9,COUNT(*) from utilisateur WHERE  role_user = 'client'  and YEAR(DateInserted) = '2020' and month(DateInserted) = 9 union select 10,COUNT(*) from utilisateur WHERE  role_user = 'client'  and YEAR(DateInserted) = '2020' and month(DateInserted) = 10 union select '11,COUNT(*) from utilisateur WHERE  role_user = 'client'  and YEAR(DateInserted) = '2020' and month(DateInserted) = 11 union select 12,COUNT(*) from utilisateur WHERE  role_user = 'client'  and YEAR(DateInserted) = '2020' and month(DateInserted) = 12";
            SqlDataAdapter sda = new SqlDataAdapter(sSQL, sqlCon);
            sda.Fill(dt);
         var x =   dt.Rows.Count;
          //  afficher x;

        }*/
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
string sSQL = "select count(*) from passager";
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
string sSQL = "select count(*) from utilisateur where role_user='client'";
SqlCommand tCommand = new SqlCommand(sSQL, sqlCon);
SqlDataReader tDataReader = tCommand.ExecuteReader();
if (tDataReader.HasRows)
{
tDataReader.Read();
Label2.Text = tDataReader.GetInt32(0).ToString();
}
}

void PopulateGridview()
{
DataTable dtbl = new DataTable();
using (SqlConnection sqlCon = new SqlConnection(connectionString))
{
sqlCon.Open();
SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM utilisateur", sqlCon);
sqlDa.Fill(dtbl);
}
if (dtbl.Rows.Count > 0)
{
GridView1.DataSource = dtbl;
gvPhoneBook.DataSource = dtbl;
GridView2.DataSource = dtbl;
GridView2.DataBind();
gvPhoneBook.DataBind();
GridView1.DataBind();
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

GridView1.DataSource = dtbl;
GridView1.DataBind();
GridView1.Rows[0].Cells.Clear();
GridView1.Rows[0].Cells.Add(new TableCell());
GridView1.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
GridView1.Rows[0].Cells[0].Text = "No Data Found ..!";
GridView1.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;

GridView2.DataSource = dtbl;
GridView2.DataBind();
GridView2.Rows[0].Cells.Clear();
GridView2.Rows[0].Cells.Add(new TableCell());
GridView2.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
GridView2.Rows[0].Cells[0].Text = "No Data Found ..!";
GridView2.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;


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
   (gvPhoneBook.FooterRow.FindControl("role_user1") as TextBox).Text.Trim() == "")
{
   ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "addnew()", true);

}
else
{
   sqlCon.Open();
   string query = "INSERT INTO utilisateur (nom_user,prenom_user,tel_user,email_user,role_user) VALUES (@nom_user,@prenom_user,@tel_user,@email_user,@role_user)";
   SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
   sqlCmd.Parameters.AddWithValue("@nom_user", (gvPhoneBook.FooterRow.FindControl("txtFirstNameFooter") as TextBox).Text.Trim());
   sqlCmd.Parameters.AddWithValue("@prenom_user", (gvPhoneBook.FooterRow.FindControl("txtLastNameFooter") as TextBox).Text.Trim());
   sqlCmd.Parameters.AddWithValue("@tel_user", (gvPhoneBook.FooterRow.FindControl("txtContactFooter") as TextBox).Text.Trim());
   sqlCmd.Parameters.AddWithValue("@email_user", (gvPhoneBook.FooterRow.FindControl("txtEmailFooter") as TextBox).Text.Trim());
   sqlCmd.Parameters.AddWithValue("@role_user", (gvPhoneBook.FooterRow.FindControl("role_user1") as TextBox).Text.Trim());



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
GridView1.EditIndex = e.NewEditIndex;

PopulateGridview();
}

protected void gvPhoneBook_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
{
gvPhoneBook.EditIndex = -1;
GridView1.EditIndex = -1;
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
lblSuccessMessage.Text = "";
lblErrorMessage.Text = ex.Message;
}
}
protected void Gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
{

try
{
using (SqlConnection sqlCon = new SqlConnection(connectionString))
{

sqlCon.Open();
string query = "DELETE FROM utilisateur WHERE num_user = @num_user";
SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
sqlCmd.Parameters.AddWithValue("@num_user", Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));
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


protected void Button1_Click(object sender, EventArgs e)
{

}



protected void ListView3_SelectedIndexChanged(object sender, EventArgs e)
{

}

protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
{

}
protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
{

}

protected void EntityDataSource1_Selecting(object sender, EntityDataSourceSelectingEventArgs e)
{
}

protected void EntityDataSource1_Deleted(object sender, EntityDataSourceChangedEventArgs e)
{
}

protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
{


}

protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
{

}

protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
{

}

protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
{

}

protected void EntityDataSource1_Updating(object sender, EntityDataSourceChangingEventArgs e)
{

}

}
}
 