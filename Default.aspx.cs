using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;


using System.Collections;
using System.Configuration;
using System.Data;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;



public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void submitButton_Click(object sender, EventArgs e)
    {
        /* For Login element that does not work???
        int userName = Convert.ToInt32(myLogin.UserName);
        string passWord = myLogin.Password;
        */
        int userName = Convert.ToInt32(personIdTextBox.Text);
        string passWord = this.passwordTextBox.Text;

        if (IsvalidUser(userName, passWord))
        {
            Session["username"] = personIdTextBox.Text;
            Session["password"] = passwordTextBox.Text;
            //Update last login
            ATMDataContext db = new ATMDataContext();
           
            var query = from p in db.Peoples
                        where p.PersonId == Convert.ToInt32(Session["username"].ToString())
                        select p;
            foreach(People p in query){
                p.LastLoginDateTime = DateTime.Now;
            }
            try
            {
                db.SubmitChanges();
            }
            catch(Exception z)
            {
                Console.WriteLine(z);
            }

            Response.Redirect("~/Overview.aspx");           
        }
        else
        {
            lblerror.Text = "INVALID CREDENTIALS";
        }
    }

    private bool IsvalidUser(int userName, string passWord)
    {
        ATMDataContext db = new ATMDataContext();

        var userResults = from p in db.Peoples
                          where p.PersonId == userName
                              && p.Password.Equals(passWord)
                          select p;

        if (userResults.Any())
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    protected void createButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/NewUser.aspx");
    }
}