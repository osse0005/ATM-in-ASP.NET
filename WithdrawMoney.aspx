<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageMenu.master" AutoEventWireup="true" CodeFile="WithdrawMoney.aspx.cs" Inherits="WithdrawMoney" Theme="Standard" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    WITHDRAW MONEY
    <asp:Table ID="table1" runat="server">
        
        <asp:TableRow>
            <asp:TableCell  BorderWidth="1">Amount to Withdraw</asp:TableCell>
            <asp:TableCell  BorderWidth="1"><asp:TextBox ID="amountTextBox" runat="server"/></asp:TableCell>
        </asp:TableRow>
        
    </asp:Table>
   
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
        runat="server"
        ErrorMessage="Please enter the amount to withdraw." 
        ControlToValidate="amountTextBox" 
        ForeColor="Red">
    </asp:RequiredFieldValidator>
    
    <br />
    <br />
    <asp:Button ID="submitButton" Text="Withdraw" OnClick="submitButton_Click" runat="server" />
    <br />
    <asp:Label ID="mess" runat="server" ForeColor="Red"></asp:Label>
</asp:Content>

