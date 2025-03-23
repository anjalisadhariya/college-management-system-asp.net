
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="_Default" %>

<%-- Add content controls here --%>
<asp:Content ID="c1" ContentPlaceHolderID="CPH_Data" runat="server">
     <div class="people-info-wrap">
         <form runat="server" id="frm">
            <span>

             <table style="font-size:16px; border:solid">
					     
                         <tr style="background-color:Black; color:White; font-size:35px; text-align:center"><td colspan="2">Register</td></tr>
                <tr><th>Full Name:</th><td><asp:TextBox ID="txtname" runat="server" Text="" 
                        class="input- name" Width="400px"></asp:TextBox></td>
                        <td class="style4" align="left">
                        <asp:RequiredFieldValidator ID="RfvFullName" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtname"></asp:RequiredFieldValidator>
                        </td></tr>

                        <tr><td colspan="2">&nbsp;</td></tr>
                <tr><th>Address:</th><td><asp:TextBox ID="txtaddress" runat="server" Text="" 
                        class="input- address" TextMode="MultiLine" Height="68px" Width="400px"></asp:TextBox></td>
                        <td class="style4" align="left">
                    <asp:RequiredFieldValidator ID="RfvAddress" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtaddress"></asp:RequiredFieldValidator>
                       </td></tr>

                        <tr><td colspan="2"></td></tr>
                <tr><th>Email:</th><td><asp:TextBox ID="txtemail" runat="server" Text="" 
                        class="input- email" Width="400px"></asp:TextBox></td>
                        <td class="style4" align="left">
                    <asp:RequiredFieldValidator ID="RfvUserName" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="Rxvemail" runat="server" ControlToValidate="txtEmail"
                        ErrorMessage="Invalid e-mail" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>  
                        </td></tr>

                        <tr><td colspan="2">&nbsp;</td></tr>
                <tr><th>Phone No.:</th><td><asp:TextBox ID="txtmobile" runat="server" Text="" 
                        class="input- mobile" Width="400px" OnTextChanged="txtmobile_TextChanged"></asp:TextBox></td>
                        <td class="style4" align="left">
                        <asp:RegularExpressionValidator ID="RxvMobile" runat="server" ErrorMessage="Invalid Mobile Number"
                        ForeColor="#FF3300" ValidationExpression="\d{10}" ControlToValidate="txtmobile"></asp:RegularExpressionValidator>
                       </td> </tr>

                        <tr><td colspan="2">&nbsp;</td></tr>
                <tr><th>Password:</th><td><asp:TextBox ID="txtpassword" runat="server" Text="" 
                        class="input- password" Width="400px" TextMode="Password"></asp:TextBox></td>
                        
                       <td class="style4" align="left">
                        <asp:RequiredFieldValidator ID="RfvPwd" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                       </td></tr>
                       <tr><td colspan="2">&nbsp;</td></tr>
                 <tr><th>Conform Password:</th><td><asp:TextBox ID="txtcpwd" runat="server" Text="" 
                        class="input- password" Width="400px" TextMode="Password"></asp:TextBox></td>
                        <td class="style4" align="left">
                    <asp:RequiredFieldValidator ID="RfvCnfrmPwd" runat="server" ErrorMessage="* **Required"
                        ForeColor="#FF3300" ControlToValidate="txtcpwd"></asp:RequiredFieldValidator>
                    <br /><asp:CompareValidator ID="CvCnfmPwd" runat="server" ErrorMessage="Password and Confirm Password didnt matched"
                        ForeColor="#FF3300" ControlToCompare="txtPassword" ControlToValidate="txtcpwd"></asp:CompareValidator>
                    </td></tr>
                        <tr><th colspan="2">
                <asp:Button ID="txtbtn" runat="server" Text="Create Account" 
                        onclick="txtbtn_Click" BackColor="Black" /></th></tr>
                
                </table>

					
					</form>
				</div>
                <div class="contact-info">
                <img src="upload/registration.PNG" style="height:350px; width:350px;"/><br /><br /><br />
                
               </div>

     </span>
</asp:Content>