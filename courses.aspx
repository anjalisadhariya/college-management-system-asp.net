<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="courses.aspx.cs" Inherits="principal_deletedept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPH_Data" Runat="Server">
   <asp:Repeater ID="repeater1" runat="server">
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>
         <div style="border:solid; padding-bottom:10px; margin-bottom:50px;">
            <table style="font-size:26px; width:350px;" >
                <tr><th align="left">Course Name:</th><td><%# Eval("course_name") %></td>
               <tr><td colspan="2" align="center"><img src="upload/b<%# Eval("id") %>.jpg" style="width:200px; height:200px;" /></td></tr>
            
                <tr><th align="left">Time Duration:</th><td><%# Eval("timeduration") %></td>
                <tr><th align="left">Fees:</th><td><%# Eval("fees") %></td>
                <tr><th align="left">Jobs:</th><td><%# Eval("whereisjob") %></td>
                
            <tr><td colspan="2" align="center"><a href="more.aspx?id=<%# Eval("id") %>">More</a></td></tr>
        </table>
        </div>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>

