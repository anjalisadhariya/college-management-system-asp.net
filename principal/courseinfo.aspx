<%@ Page Title="" Language="C#" MasterPageFile="~/principal/principalMasterPage.master" AutoEventWireup="true" CodeFile="courseinfo.aspx.cs" Inherits="principal_deletedept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPH_Data" Runat="Server">
    <form runat="server" id="f1"><center><table border="2" cellpadding="10" style="font-size:18px; width:70%" >
<tr><th colspan="6" style="background-color:Black; color:White;">Course Information</th><th><a href="addcourse.aspx">Add New </a></th></tr>
    <asp:Repeater ID="repeater1" runat="server">
        <HeaderTemplate>
            <tr>
                <th>ID</th>
                <th>Course_Name</th>
                <th>Timeduration</th>
                <th>Description</th>
                <th>Fees</th>
                <th>Whereisjob</th>
                <th>Action</th>
            </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%# Eval("id") %></td>
                <td><%# Eval("course_name") %></td>
                <td><%# Eval("timeduration") %></td>
                <td><%# Eval("description") %></td>
                <td><%# Eval("fees") %></td>
                <td><%# Eval("whereisjob") %></td>
                <td><a href="deletecourse.aspx?id=<%# Eval("id") %>">Delete</a></td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
</table></center></form>

</asp:Content>
