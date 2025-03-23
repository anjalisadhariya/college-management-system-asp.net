<%@ Page Title="" Language="C#" MasterPageFile="~/principal/principalMasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="principal_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPH_Data" Runat="Server">
<center><table border="2" cellpadding="10" style="font-size:18px; width:70%">
<tr><th colspan="10"style="background-color:Black; color:White;">Feedback Information</th></tr>
    <asp:Repeater ID="repeater1" runat="server">
        <HeaderTemplate>
            <tr>
                <th>cid</th>
                <th>Name</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Message</th>
                <th>Action</th>
            </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr> 
                <td><%# Eval("cid") %></td>
                <td><%# Eval("name") %></td>
                <td><%# Eval("email") %></td>
                <td><%# Eval("mobile") %></td>
                <td><%# Eval("message") %></td>
                <td><a href="deletefeedback.aspx?id=<%# Eval("cid") %>">Delete</a></td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
</table></center>
</asp:Content>



