<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<%-- Add content controls here --%>
<asp:Content ID="c1" ContentPlaceHolderID="CPH_Data" runat="server">
     <div class="people-info-wrap">
		<form runat="server" id="frm">
            <span>

                <table style="font-size:16px; border:solid">
					
						<tr style="background-color:Black; color:White; font-size:30px; text-align:center"><td colspan="2">Member Login</td></tr>
                        <tr><td colspan="2">&nbsp;</td></tr>
                       <tr><th>Email:</th><td><asp:TextBox ID="txtemail" runat="server" Text="" class="input- email" Width="400px"></asp:TextBox></td></tr>
                       <tr><td colspan="2">&nbsp;</td>
                        <td class="style4" align="left">
                    <asp:RequiredFieldValidator ID="RfvUserName" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RxvEmail" runat="server" ControlToValidate="txtEmail"
                        ErrorMessage="Invalid E-mail" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>  
                        </td></tr>
                       <tr><th>Password:</th><td><asp:TextBox ID="txtpwd" runat="server" Text="" class="input- password" Width="400px" TextMode="Password"></asp:TextBox></td></tr>
                       <tr><td colspan="2">&nbsp;</td>
                       <td class="style4" align="left">
                       <asp:RequiredFieldValidator ID="RfvPwd" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtpwd"></asp:RequiredFieldValidator>
                </td>
                </tr>

                        <tr><th colspan="2">
                            <asp:Button ID="txtbtn" runat="server" Text="Login" 
                                onclick="txtbtn_Click" BackColor="Black" /></th></tr>
                
                </table>

             
					</form>
				</div>

				<div class="contact-info">
					<img src="images/login.jpg" height="400"  width="500"/>
				</div>
</span>
</asp:Content>