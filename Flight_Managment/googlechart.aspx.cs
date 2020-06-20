using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Services;
using System.Web.Services;


namespace Flight_Managment
{
    public partial class googlechart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetChartData();
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static object[] GetChartData()
        {
            List<utilisateur> data = new List<utilisateur>();
            //Here MyDatabaseEntities  is our dbContext
            using (gest_aeroEntities dc = new gest_aeroEntities())
            {
                data = dc.utilisateurs.ToList();
            }

            var chartData = new object[data.Count + 1];
            chartData[0] = new object[]{
                "Year",
                "Electronics",
                "Books & Media",
                "Home & Kitchen",
                "Average"
            };

            int j = 0;
            foreach (var i in data)
            {
                j++;
                chartData[j] = new object[] {i.nom_user.ToString(), i.prenom_user,
                    (i.num_user + i.num_user + i.num_user)/3};
            }
            return chartData;
        }

    }
}