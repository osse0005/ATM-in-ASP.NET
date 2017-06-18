<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Theme="Standard" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <br />
    <br />
    <asp:Table ID="logintable" runat="server">
        <asp:TableRow>
            <asp:TableCell BorderWidth="1">Person ID:</asp:TableCell>
            <asp:TableCell BorderWidth="1"><asp:TextBox ID="personIdTextBox" runat="server"/></asp:TableCell>         
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell BorderWidth="1">Password:</asp:TableCell>
            <asp:TableCell BorderWidth="1"><asp:TextBox ID="passwordTextBox" runat="server"/></asp:TableCell>
        </asp:TableRow>
        
    </asp:Table>
    
    <asp:Button ID="submitButton" Text=" Login " OnClick="submitButton_Click" runat="server" />
    <br />
    <asp:Button ID="createButton" Text=" Create Account " OnClick="createButton_Click" runat="server" />
    <br />
    <!--        DID NOT WANT TO WORK
    <asp:Login ID="myLogin" runat="server"
        CreateUserText="Not registered yet? Create an account!"
        CreateUserUrl="~/NewUser.aspx"
        RememberMeSet="true"
        TitleText=""
        UserNameLabelText="PaeronId:">
    </asp:Login>
    -->
    <asp:Label ID="lblerror" color="red" runat="server" />

    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
        ControlToValidate="personIdTextBox"
        ErrorMessage="Please enter your person id"
        ForeColor="Red"
        runat="server">
    </asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
        ControlToValidate="passwordTextBox"
        ErrorMessage="Please enter your password"
        ForeColor="Red"
        runat="server">
    </asp:RequiredFieldValidator>

</asp:Content>

