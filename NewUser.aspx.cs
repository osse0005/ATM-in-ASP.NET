using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submitButton_Click(object sender, EventArgs e)
    {
      
        ATMDataContext db = new ATMDataContext();
        People person = new People();        
        person.FirstName = this.fNameTextBox.Text;
        person.LastName = this.lNameTextBox.Text;
        person.EmailAddress = this.emailTextBox.Text;
        person.Password = this.passwordTextBox.Text;
        person.SocialInsuranceNumber = this.socialTextBox.Text;
        person.DateAccountCreated = DateTime.Now;
        person.LastLoginDateTime = DateTime.Now;
        
        db.Peoples.InsertOnSubmit(person);
        db.SubmitChanges();
        
        Response.Redirect("~/Overview.aspx");
    }
}