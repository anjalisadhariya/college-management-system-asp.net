<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="staff.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPH_Data" Runat="Server">
 <form runat="server" id="f1"><center><table border="2" cellpadding="10" style="font-size:18px; width:70%" >
<tr><th colspan="3" style="background-color:Black; color:White;">Staff Login Information</th><th><a href="addlogin.aspx">Add New </a></th></tr>
    <asp:Repeater ID="repeater1" runat="server">
        <HeaderTemplate>
            <tr>
                <th>Email Id</th>
                <th>Password</th>
                <th>Role</th>
                <th>Action</th>
            </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%# Eval("emailid") %></td>
                <td><%# Eval("password") %></td>
                <td><%# Eval("role") %></td>
                <td><a href="deletelogin.aspx?id=<%# Eval("lid") %>">Delete</a></td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
</table></center></form>
</asp:Content>

