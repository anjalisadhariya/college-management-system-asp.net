<%@ Page Title="" Language="C#" MasterPageFile="~/principal/principalMasterPage.master" AutoEventWireup="true" CodeFile="leavereport.aspx.cs" Inherits="principal_Department" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPH_Data" Runat="Server">
    <form runat="server" id="f1"><center><table border="2" cellpadding="10" style="font-size:18px; width:70%" >
<tr><th colspan="18" style="background-color:Black; color:White;">Leave Report Information</th></tr>
         <asp:Repeater ID="repeater1" runat="server">
        <HeaderTemplate>
            <tr>
                <th>LRID</th>
                <th>Lid</th>
                <th>Deptid</th>
                <th>Sem</th>
                <th>Startdate</th>
                <th>Enddate</th>
                <th>Day</th>
                <th>Approve</th>
            </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%# Eval("lrid") %></td>
                <td><%# Eval("lid") %></td>
                <td><%# Eval("deptid") %></td>
                <td><%# Eval("sem") %></td>
                <td><%# Eval("startdate") %></td>
                <td><%# Eval("enddate") %></td>  
                <td><%# Eval("day")%></td>
                <td><%# Eval("approve") %></td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
</table></center></form>
</asp:Content>

