<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="staff.aspx.cs" Inherits="principal_deletedept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPH_Data" Runat="Server">
    <form runat="server" id="f1"><center><table border="2" cellpadding="10" style="font-size:18px; width:100%" >
    <tr><th colspan="4">Search By Department Name:</th>
    <td>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [dept]"></asp:SqlDataSource>
        <asp:DropDownList ID="DropDownList3" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="deptname" 
            DataValueField="deptid">
        </asp:DropDownList>
    <td colspan="2" align="center"><asp:Button ID="Button2" Text="Search" runat="server"
                   OnClick="btndeptid_Click" /></td>
      </tr>
<tr><th colspan="7" style="background-color:Black; color:White;">Staff Information</th></tr>
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
            </tr>
        </ItemTemplate>
    </asp:Repeater>
</table></center></form>

</asp:Content>

