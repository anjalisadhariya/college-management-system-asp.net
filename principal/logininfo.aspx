<%@ Page Title="" Language="C#" MasterPageFile="~/principal/principalMasterPage.master" AutoEventWireup="true" CodeFile="logininfo.aspx.cs" Inherits="principal_deletedept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPH_Data" Runat="Server">
    <form runat="server" id="f1"><center><table border="2" cellpadding="10" style="font-size:18px; width:70%" >
<tr><th colspan="6" style="background-color:Black; color:White;">login Information</th></tr>
    <asp:Repeater ID="repeater1" runat="server">
        <HeaderTemplate>
            <tr>
                <th>ID</th>
                <th>Email Id</th>
                <th>Password</th>
                <th>Role</th>
                <th>Action</th>
            </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%# Eval("lid") %></td>
                <td><%# Eval("emailid") %></td>
                <td><%# Eval("password") %></td>
                <td><%# Eval("role") %></td>
                <td><a href="deletelogin.aspx?id=<%# Eval("lid") %>">Delete</a></td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
</table></center></form>

</asp:Content>
