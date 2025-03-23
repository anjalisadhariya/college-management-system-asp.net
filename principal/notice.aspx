<%@ Page Title="" Language="C#" MasterPageFile="~/principal/principalMasterPage.master" AutoEventWireup="true" CodeFile="notice.aspx.cs" Inherits="principal_deletedept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPH_Data" Runat="Server">
    <form runat="server" id="f1"><center><table border="2" cellpadding="10" style="font-size:18px; width:70%" >
<tr><th colspan="5" style="background-color:Black; color:White;">Notice Information</th><th><a href="addnotice.aspx">Add New </a></th></tr>
    <asp:Repeater ID="repeater1" runat="server">
        <HeaderTemplate>
            <tr>
                <th>ID</th>
                <th>Notice_Tital</th>
                <th>Deptid</th>
                <th>Description</th>
                <th>Date</th>
                <th>Action</th>
            </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                 <td><%# Eval("nid") %></td>
                 <td><%# Eval("notice_tital") %></td>
                 <td><%# Eval("deptid") %></td>
                 <td><%# Eval("description") %></td>
                 <td><%# Eval("date") %></td>
                <td><a href="deletenotice.aspx?id=<%# Eval("nid") %>">Delete</a></td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
</table></center></form>

</asp:Content>

