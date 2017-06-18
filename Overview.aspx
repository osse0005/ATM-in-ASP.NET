<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageMenu.master" AutoEventWireup="true" CodeFile="Overview.aspx.cs" Inherits="Overview" Theme="Standard" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    OVERVIEW
    <br />
    <br />
   
    <asp:GridView ID="GridView2" runat="server" AllowPaging="true" AllowSorting="false" AutoGenerateColumns="false" OnRowDataBound="gridView2_RowDataBound">
        <Columns>
            <asp:BoundField DataField="TransactionId" HeaderText="Transaction Id" />
            <asp:BoundField DataField="PersonId" HeaderText="Person Id" />
            <asp:BoundField DataField="TransactionTypeId" HeaderText="Transaction Type" />
            <asp:BoundField DataField="AmountTransferred" HeaderText="Amount Transferred" DataFormatString="{0:c}" />
           
        </Columns>
    </asp:GridView>
    <br />
    <asp:Label ID="label1" Text="Account Balance: " runat="server" />
    <asp:Label ID="totalLabel" runat="server"/> 
    <br />
</asp:Content>

