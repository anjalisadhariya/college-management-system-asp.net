<%@ Page Title="" Language="C#" MasterPageFile="~/principal/principalMasterPage.master" AutoEventWireup="true" CodeFile="admission.aspx.cs" Inherits="principal_Department" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPH_Data" Runat="Server">
    <form runat="server" id="f1"><center><table border="2" cellpadding="10" style="font-size:18px; width:70%" >
     <tr><th>Search By Name:</th>
     <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
     <td><asp:Button ID="btnsearch" Text="Search" runat="server" 
             onclick="btnsearch_Click" /></td>
     <th colspan="5">&nbsp;</th>
     
     <th>Search By Course:</th>
     <td><asp:DropDownList ID="DropDownList1" runat="server" 
             DataSourceID="SqlDataSource1" DataTextField="deptname" DataValueField="deptid" AutoPostBack="true">
         </asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
             SelectCommand="SELECT * FROM [dept]"></asp:SqlDataSource>
         </td>
         <td><asp:Button ID="btndeptid" Text="Search" runat="server" 
                 onclick="btndeptid_Click" /></td>
     </tr>
<tr><th colspan="18" style="background-color:Black; color:White;">Admission Information</th></tr>
         <asp:Repeater ID="repeater1" runat="server">
        <HeaderTemplate>
            <tr>
                <th>Name</th>
                <th>SurName</th>
                <th>Father Name</th>
                <th>Cast</th>
                <th>Birthdate</th>
                <th>Applyfor</th>
                <th>Seat No</th>
                <th>Stream</th>
                <th>Pr</th>
                <th>Confirm</th>
                <th colspan="2">Action</th>
            </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%# Eval("name") %></td>
                <td><%# Eval("surname") %></td>
                <td><%# Eval("fathername") %></td>
                <td><%# Eval("cast") %></td>
                <td><%# Eval("birthdate") %></td>
                <td><%# Eval("applyfor") %></td>  
                <td><%# Eval("seat_no")%></td>
                <td><%# Eval("stream") %></td>
                <td><%# Eval("pr") %></td>
                <td><%# Eval("confirm") %></td>
                <td><a href="accept.aspx?id=<%# Eval("aid") %>">Accept</a></td>
                <td><a href="reject.aspx?id=<%# Eval("aid") %>">Reject</a></td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
</table></center></form>
</asp:Content>

