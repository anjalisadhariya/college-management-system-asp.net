<%@ Page Title="" Language="C#" MasterPageFile="~/principal/principalMasterPage.master" AutoEventWireup="true" CodeFile="studentinfo.aspx.cs" Inherits="principal_deletedept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPH_Data" Runat="Server">
    <form runat="server" id="f1"><center><table border="2" cellpadding="10" style="font-size:18px; width:70%" >
<tr><th colspan="7" style="background-color:Black; color:White;">Student Information</th></tr>
    <asp:Repeater ID="repeater1" runat="server">
        <ItemTemplate>
            <tr><th>ID</th><td><%# Eval("aid") %></td></tr>
            <tr><th>Name</th><td><%# Eval("name") %></td></tr>
            <tr><th>Surname</th><td><%# Eval("surname") %></td></tr>
            <tr><th>Fathername</th><td><%# Eval("fathername") %></td></tr>
            <tr><th>Cast</th><td><%# Eval("cast") %></td></tr>
            <tr><th>Birthdate</th><td><%# Eval("birthdate") %></td></tr>
            <tr><th>Address</th><td><%# Eval("address") %></td></tr>
            <tr><th>Mobile</th><td><%# Eval("mobile") %></td></tr>
            <tr><th>Email</th><td><%# Eval("email") %></td></tr>
            <tr><th>Seat No.</th><td><%# Eval("seat_no") %></td></tr>
            <tr><th>Stream</th><td><%# Eval("stream") %></td></tr>
            <tr><th>Omark</th><td><%# Eval("omark") %></td></tr>
            <tr><th>Total Mark</th><td><%# Eval("total_mark") %></td></tr>
            <tr><th>Pr</th><td><%# Eval("pr") %></td></tr>
            <tr><th>Sid</th><td><%# Eval("sid") %></td></tr>
            <tr><th>Confirm</th><td><%# Eval("confirm") %></td></tr>
        </ItemTemplate>
    </asp:Repeater>
</table></center></form>

</asp:Content>

