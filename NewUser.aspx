<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewUser.aspx.cs" Inherits="NewUser" Theme="Standard" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    NEW USER
    <asp:Table ID="table1" runat="server">
        <asp:TableRow>
            <asp:TableCell BorderWidth="1">First Name</asp:TableCell>
            <asp:TableCell BorderWidth="1"><asp:TextBox ID="fNameTextBox" runat="server"/></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell  BorderWidth="1">Last Name</asp:TableCell>
            <asp:TableCell  BorderWidth="1"><asp:TextBox ID="lNameTextBox" runat="server"/></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell  BorderWidth="1">E-Mail Address</asp:TableCell>
            <asp:TableCell  BorderWidth="1"><asp:TextBox ID="emailTextBox" runat="server"/></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell  BorderWidth="1">Password</asp:TableCell>
            <asp:TableCell  BorderWidth="1"><asp:TextBox ID="passwordTextBox" runat="server"/></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell  BorderWidth="1">Social Insurance Number</asp:TableCell>
            <asp:TableCell  BorderWidth="1"><asp:TextBox ID="socialTextBox" runat="server" /></asp:TableCell>
        </asp:TableRow>
        
    </asp:Table>
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
        runat="server"
        ErrorMessage="Please enter first name." 
        ControlToValidate="fNameTextBox" 
        ForeColor="Red">
    </asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
        runat="server"
        ErrorMessage="Please enter last name." 
        ControlToValidate="lNameTextBox" 
        ForeColor="Red">
    </asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
        runat="server"
        ErrorMessage="Please enter E-Mail address name." 
        ControlToValidate="emailTextBox" 
        ForeColor="Red">
    </asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
        runat="server"
        ErrorMessage="Please enter password name." 
        ControlToValidate="passwordTextBox" 
        ForeColor="Red">
    </asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
        runat="server"
        ErrorMessage="Please enter your social insurance number." 
        ControlToValidate="socialTextBox" 
        ForeColor="Red">
    </asp:RequiredFieldValidator> 
    <br />
    <br />
    <asp:Button ID="submitButton" Text="Submit" OnClick="submitButton_Click" runat="server" />
    <br />
</asp:Content>

