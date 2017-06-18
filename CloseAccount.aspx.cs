using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CloseAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void deleteButton_Click(object sender, EventArgs e)
    {
        int userName = Convert.ToInt32(personIdTextBox.Text);
        string passWord = this.passwordTextBox.Text;
        ATMDataContext db = new ATMDataContext();
        
        if (IsvalidUser(userName, passWord))
        {
            var deletePerson =
                from peoples in db.Peoples
                where peoples.PersonId == Convert.ToInt32(this.personIdTextBox.Text)
                select peoples;

            foreach (var person in deletePerson)
            {
                db.Peoples.DeleteOnSubmit(person);
            }
            try
            {
                db.SubmitChanges();
                this.mess.Text = "Account Closed";
            }
            catch (Exception a)
            {
                this.mess.Text = "INVALID CREDENTIALS";
                Console.WriteLine(a);
            }
            
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
}