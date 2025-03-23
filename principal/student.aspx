<%@ Page Title="" Language="C#" MasterPageFile="~/principal/principalMasterPage.master" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="principal_Department" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPH_Data" Runat="Server">
    <form runat="server" id="f1"><center><table border="2" cellpadding="10" style="font-size:18px; width:70%" >
     <tr><th colspan="2">Search By Course:</th>
     <td colspan="2"><asp:DropDownList ID="DropDownList1" runat="server" 
             DataSourceID="SqlDataSource1" DataTextField="deptname" DataValueField="deptid" AutoPostBack="true">
         </asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
             SelectCommand="SELECT * FROM [dept]"></asp:SqlDataSource>
         </td>
         <td colspan="2"><asp:Button ID="btndeptid" Text="Search" runat="server" 
                 onclick="btndeptid_Click" /></td>
     </tr>
<tr><th colspan="18" style="background-color:Black; color:White;">Student Information</th></tr>
         <asp:Repeater ID="repeater1" runat="server">
        <HeaderTemplate>
            <tr>
                <th>Full Name</th>
                <th>Cast</th>
                <th>Birthdate</th>
                <th>Department Name</th>
                <th colspan="2">Action</th>
            </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%# Eval("name") %> <%# Eval("surname") %> <%# Eval("fathername") %></td>
                <td><%# Eval("cast") %></td>
                <td><%# Eval("birthdate") %></td>
                <td><%# Eval("deptname") %></td>  
                <td><a href="studentinfo.aspx?id=<%# Eval("aid") %>">More Info</a></td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
</table></center></form>
</asp:Content>

