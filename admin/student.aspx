<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPH_Data" Runat="Server">
 <form runat="server" id="f1"><center><table border="2" cellpadding="10" style="font-size:18px; width:70%" >
<tr><th colspan="3" style="background-color:Black; color:White;">Student Login Infomration</th></tr>
    <asp:Repeater ID="repeater1" runat="server">
        <HeaderTemplate>
            <tr>
                <th>Email Id</th>
                <th>Password</th>
                <th>Role</th>
                
            </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%# Eval("emailid") %></td>
                <td><%# Eval("password") %></td>
                <td><%# Eval("role") %></td>
                
            </tr>
        </ItemTemplate>
    </asp:Repeater>
</table></center></form>

</asp:Content>

