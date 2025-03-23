<%@ Page Title="" Language="C#" MasterPageFile="~/principal/principalMasterPage.master" AutoEventWireup="true" CodeFile="addcourse.aspx.cs" Inherits="principal_deletedept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPH_Data" Runat="Server">
    <form runat="server" id="f1">
    <center>
        <table border="2" cellpadding="10" style="font-size:18px; width:70%" >
            <tr>
                <th colspan="2" style="background-color:Black; color:White;">Add New Course Information</th>
            </tr>
            <tr><th>CName:</th><td><asp:TextBox ID="txtcname" runat="server" Text="" class="input- name" Width="400px"></asp:TextBox></td>
                        </tr>
                        <tr><th>Timeduration:</th><td><asp:TextBox ID="txttimeduration" runat="server" Text="" class="input- timeduration" Width="400px"></asp:TextBox></td></tr>
                        
                        <tr><th>Description:</th><td><asp:TextBox ID="txtdescription" runat="server" Text="" class="input- description" Width="400px"></asp:TextBox></td></tr>
                         <tr><th>Fees:</th><td><asp:TextBox ID="txtfees" runat="server" Text="" class="input- fees" Width="400px"></asp:TextBox></td></tr>
        <tr><th>Whereisjob:</th><td><asp:TextBox ID="txtwhereisjob" runat="server" Text="" class="input- whereisjob" Width="400px"></asp:TextBox></td></tr>
                       <tr><th colspan="2">
                            <asp:Button ID="txtbtn" runat="server" Text="Add" onclick="txtbtn_Click"/></th></tr>

                </table>

 </center></form>

</asp:Content>

