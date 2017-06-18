using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DepositMoney : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    int TransactionTypeId = 1;
    protected void submitButton_Click(object sender, EventArgs e)
    {
        ATMDataContext db = new ATMDataContext();
        Transaction transact = new Transaction();
        //transact.PersonId = int.Parse(personIdTextBox.Text);
        transact.PersonId = Convert.ToInt32(Session["username"].ToString());
        transact.TransactionTypeId = TransactionTypeId;
        transact.AmountTransferred = decimal.Parse(amountTextBox.Text);
        transact.DateOfTransaction = DateTime.Now;

        db.Transactions.InsertOnSubmit(transact);
        db.SubmitChanges();
        
        this.mess.Text = "Money Deposited! ";
    }
}