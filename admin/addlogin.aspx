<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="addlogin.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPH_Data" Runat="Server">
 <form runat="server" id="f1"><center>
 <table  cellpadding="10" style="font-size:18px; width:70%; border:solid;" >
    <tr style="background-color:Black; color:White; font-size:30px; text-align:center"><td colspan="2">Member Login</td></tr>
                        <tr><th>Email:</th><td><asp:TextBox ID="txtemail" runat="server" Text="" class="input- email" Width="400px"></asp:TextBox></td></tr>
                        <td class="style4" align="left" colspan="2">
                    <asp:RequiredFieldValidator ID="RfvUserName" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RxvEmail" runat="server" ControlToValidate="txtEmail"
                        ErrorMessage="Invalid E-mail" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>  
                        </td></tr>
                       <tr><th>Password:</th><td><asp:TextBox ID="txtpwd" runat="server" Text="" class="input- password" Width="400px" TextMode="Password"></asp:TextBox></td></tr>
                       <td class="style4" align="left" colspan="2">
                       <asp:RequiredFieldValidator ID="RfvPwd" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtpwd"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr><th>Role:</th><td><asp:DropDownList ID="txtrole" runat="server">
                    <asp:ListItem>Principal</asp:ListItem>
                    <asp:ListItem>Staff</asp:ListItem>
                </asp:DropDownList></td></tr>
                       

                        <tr><th colspan="2">
                            <asp:Button ID="txtbtn" runat="server" Text="Create Login" 
                                onclick="txtbtn_Click" BackColor="Black" ForeColor="White" /></th></tr>

</table></center></form>

</asp:Content>

