<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="_Default" %>

<%-- Add content controls here --%>
<asp:Content ID="c1" ContentPlaceHolderID="CPH_Data" runat="server">
					
         <asp:Repeater ID="repeater1" runat="server">
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>
         <div style="border:double; padding-bottom:10px; margin-bottom:50px;">
            <table style="font-size:18px; width:300px;" >

            <tr><td><b>Event Name:</b> <%# Eval("eventname") %></td></tr>
            <tr><td><img src="upload/<%# Eval("photo") %>" style="width:280px; height:300px;" /></td></tr>
            <tr><td><b><%# Eval("description") %></b></td></tr>
        </table>
        </div>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>