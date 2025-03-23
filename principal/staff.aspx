<%@ Page Title="" Language="C#" MasterPageFile="~/principal/principalMasterPage.master" AutoEventWireup="true" CodeFile="staff.aspx.cs" Inherits="principal_deletedept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPH_Data" Runat="Server">
    <form runat="server" id="f1"><center><table border="2" cellpadding="10" style="font-size:18px; width:70%" >
<tr><th colspan="7" style="background-color:Black; color:White;">Staff Information</th><th><a href="addstaff.aspx">Add New </a></th></tr>
    <asp:Repeater ID="repeater1" runat="server">
        <HeaderTemplate>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Mobile No</th>
                <th>Department Name</th>
                <th>Education</th>
                <th>Exprince</th>
                <th>Action</th>
            </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%# Eval("sid") %></td>
                <td><%# Eval("name") %></td>
                <td><%# Eval("email") %></td>
                <td><%# Eval("mobile") %></td>
                <td><%# Eval("deptname") %></td>
                <td><%# Eval("eduction") %></td>
                <td><%# Eval("exprince") %></td>
                <td><a href="deletestaff.aspx?id=<%# Eval("sid") %>">Delete</a></td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
</table></center></form>

</asp:Content>

