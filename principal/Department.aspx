<%@ Page Title="" Language="C#" MasterPageFile="~/principal/principalMasterPage.master" AutoEventWireup="true" CodeFile="Department.aspx.cs" Inherits="principal_Department" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPH_Data" Runat="Server">
    <form runat="server" id="f1"><center><table border="2" cellpadding="10" style="font-size:18px; width:70%" >
<tr><th colspan="10" style="background-color:Black; color:White;">Department Information</th></tr>
    <tr><th>Department Name:</th><td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td><td>
        <asp:Button ID="btnadd" Text="Add New" runat="server" onclick="btnadd_Click" /></td></tr>
    <asp:Repeater ID="repeater1" runat="server">
        <HeaderTemplate>
            <tr>
                <th>ID</th>
                <th>Department Name</th>
                <th>Action</th>
            </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%# Eval("deptid") %></td>
                <td><%# Eval("deptname") %></td>
                <td><a href="deletedept.aspx?id=<%# Eval("deptid") %>">Delete</a></td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
</table></center></form>
</asp:Content>

