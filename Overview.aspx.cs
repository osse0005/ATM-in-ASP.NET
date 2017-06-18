using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Overview : System.Web.UI.Page
{
    double total = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack){

            ATMDataContext db = new ATMDataContext();

            /* List of last three transactions*/
            //GridView2.DataSource = (from p in db.Transactions select p).Take(3);
            GridView2.DataSource = (from p in db.Transactions where p.PersonId == Convert.ToInt32(Session["username"].ToString()) select p);
            GridView2.DataBind();
            totalLabel.Text = string.Format("{0:C2}",total);
        }
    }
    /*TO-DO: sum all transactions*/
    /*Amount in account*/
    protected void gridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "TransactionTypeId")) == 1)
            {
                total += Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "AmountTransferred"));
            }
            if (Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "TransactionTypeId")) == 2)
            {
                total -= Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "AmountTransferred"));
            }
        }

        
        
    }
}