<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageMenu.master" AutoEventWireup="true" CodeFile="DepositMoney.aspx.cs" Inherits="DepositMoney" Theme="Standard" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    DEPOSIT MONEY
    <asp:Table ID="table1" runat="server">

        <asp:TableRow>
            <asp:TableCell  BorderWidth="1">Amount to Deposit</asp:TableCell>
            <asp:TableCell  BorderWidth="1"><asp:TextBox ID="amountTextBox" runat="server"/></asp:TableCell>
        </asp:TableRow>
        
    </asp:Table>
    <!--
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
        runat="server"
        ErrorMessage="Please enter the amount to deposit." 
        ControlToValidate="amountTextBox" 
        ForeColor="Red">
    </asp:RequiredFieldValidator>

        ValidationExpression="\d{3}.\d{2} "
    -->
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
        controlToValidate="amountTextBox"
        ValidationExpression="^\$?([0-9]{1,3},([0-9]{3},)*[0-9]{3}|[0-9]+)(.[0-9][0-9])?$"
        EnableClientScript="false"
        ErrorMessage="The amount entered is invalid"
        runat="server" />
    
    <br />
    <br />
    <asp:Button ID="submitButton" Text="Deposit" OnClick="submitButton_Click" runat="server" />
    <br />
    <asp:Label ID="mess" runat="server" ForeColor="Red"></asp:Label>
</asp:Content>

