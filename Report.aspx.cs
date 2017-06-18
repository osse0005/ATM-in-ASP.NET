using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Report : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ATMDataContext db = new ATMDataContext();

            GridView1.DataSource = (from p in db.Transactions where p.PersonId == Convert.ToInt32(Session["username"].ToString()) select p).Take(10);
            GridView1.DataBind();

           
        }

    }
}