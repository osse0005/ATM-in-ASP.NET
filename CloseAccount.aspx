<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageMenu.master" AutoEventWireup="true" CodeFile="CloseAccount.aspx.cs" Inherits="CloseAccount" Theme="Standard" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    CLOSE ACCOUNT
    <asp:Table ID="table1" runat="server">
        <asp:TableRow>
            <asp:TableCell BorderWidth="1">Person ID</asp:TableCell>
            <asp:TableCell BorderWidth="1"><asp:TextBox ID="personIdTextBox" runat="server"/></asp:TableCell>
        </asp:TableRow>
        
        <asp:TableRow>
            <asp:TableCell  BorderWidth="1">Password</asp:TableCell>
            <asp:TableCell  BorderWidth="1"><asp:TextBox ID="passwordTextBox" runat="server"/></asp:TableCell>
        </asp:TableRow>
        
    </asp:Table>
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
        runat="server"
        ErrorMessage="Please enter your person id." 
        ControlToValidate="personIdTextBox" 
        ForeColor="Red">
    </asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
        runat="server"
        ErrorMessage="Please enter the amount to deposit." 
        ControlToValidate="passwordTextBox" 
        ForeColor="Red">
    </asp:RequiredFieldValidator>
    
    <br />
    <br />
    <asp:Button ID="deleteButton" Text="Delete Account" OnClick="deleteButton_Click"  runat="server" />
    <br />
    <asp:Label ID="mess" runat="server" ForeColor="Red"></asp:Label>
    <br />
</asp:Content>

