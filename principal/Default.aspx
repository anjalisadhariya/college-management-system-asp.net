<%@ Page Title="" Language="C#" MasterPageFile="~/principal/principalMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="principal_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPH_Data" Runat="Server">
<center><table border="2" cellpadding="10" style="font-size:18px; width:70%" >
<tr><th colspan="10" style="background-color:Black; color:White;">Login Information</th></tr>
    <asp:Repeater ID="repeater1" runat="server">
        <HeaderTemplate>
            <tr>
                <th>LID</th>
                <th>Email ID</th>
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
</table></center>
</asp:Content>



