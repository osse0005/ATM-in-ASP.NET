using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageMenu : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void overview_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Overview.aspx");
    }
    protected void deposit_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/DepositMoney.aspx");
    }
    protected void withdraw_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/WithdrawMoney.aspx");
    }
    protected void report_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Report.aspx");
    }
    protected void close_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/CloseAccount.aspx");
    }
}
