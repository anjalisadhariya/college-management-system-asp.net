<%@ Page Title="" Language="C#" MasterPageFile="~/principal/principalMasterPage.master" AutoEventWireup="true" CodeFile="addstaff.aspx.cs" Inherits="principal_deletedept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPH_Data" Runat="Server">
    <form runat="server" id="f1">
    <center>
        <table border="2" cellpadding="10" style="font-size:18px; width:70%" >
            <tr>
                <th colspan="2" style="background-color:Black; color:White;">Add New Staff Information</th>
            </tr>
            <tr><th>Name:</th><td><asp:TextBox ID="txtname" runat="server" Text="" class="input- name" Width="400px"></asp:TextBox></td>
                        <td class="style4" align="left">
                        <asp:RequiredFieldValidator ID="RfvName" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtname"></asp:RequiredFieldValidator>
                        </td></tr>
                        <tr><th>Email:</th><td><asp:TextBox ID="txtemail" runat="server" Text="" class="input- email" Width="400px"></asp:TextBox></td>
                        <td class="style4" align="left">
                    <asp:RequiredFieldValidator ID="RfvUserName" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="Rxvemail" runat="server" ControlToValidate="txtemail"
                        ErrorMessage="Invalid e-mail" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>  
                        </td></tr>
                        <tr><th>Mobileno.:</th><td><asp:TextBox ID="txtmobile" runat="server" Text="" class="input- mobileno." Width="400px"></asp:TextBox></td>
                        <td class="style4" align="left">
                        <asp:RegularExpressionValidator ID="Rxvmobile" runat="server" ErrorMessage="Invalid Mobile Number"
                        ForeColor="#FF3300" ValidationExpression="^([7-9]{1})([0-9]{9})$" ControlToValidate="txtmobile"></asp:RegularExpressionValidator>
                        </td></tr>
                        <tr><th>Department name:</th><td>
                            <asp:DropDownList ID="DropDownList2" runat="server" 
                                DataSourceID="SqlDataSource2" DataTextField="deptname" DataValueField="deptid">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [dept]"></asp:SqlDataSource>
                          
                            </td></tr>
        <tr><th>Eduction:</th><td><asp:TextBox ID="txteduction" runat="server" Text="" class="input- eduction" Width="400px"></asp:TextBox></td></tr>
                        <tr><th>Exprince:</th><td><asp:TextBox ID="txtexprince" runat="server" Text="" class="input- exprince" Width="400px"></asp:TextBox></td></tr>
                       <tr><th colspan="2">
                            <asp:Button ID="txtbtn" runat="server" Text="Add" onclick="txtbtn_Click"/></th></tr>

                </table>

</center></form>

</asp:Content>

