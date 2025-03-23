<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="_Default" %>

<%-- Add content controls here --%>
<asp:Content ID="c1" ContentPlaceHolderID="CPH_Data" runat="server">
     <div class="people-info-wrap">
		<form runat="server" id="frm">
            <span>

                <table style="font-size:16px; border:solid">
					    
                        <tr style="background-color:Black; color:White; font-size:35px; text-align:center"><td colspan="2">Contact Us</td></tr>
                        <tr><th>Name:</th><td><asp:TextBox ID="txtname" runat="server" Text="" class="input- name" Width="400px"></asp:TextBox></td>
                        <td class="style4" align="left">
                        <asp:RequiredFieldValidator ID="RfvName" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtname"></asp:RequiredFieldValidator>
                       </td> </tr>
                        <tr><td colspan="2">&nbsp;</td></tr>
                        <tr><th>Email:</th><td><asp:TextBox ID="txtemail" runat="server" Text="" class="input- email" Width="400px"></asp:TextBox></td>
                         <td class="style4" align="left">
                    <asp:RequiredFieldValidator ID="RfvUserName" runat="server" ErrorMessage="* Required"
                        ForeColor="#FF3300" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="Rxvemail" runat="server" ControlToValidate="txtemail"
                        ErrorMessage="Invalid e-mail" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>  
                       </td></tr>
                        <tr><td colspan="2">&nbsp;</td></tr>
                        <tr><th>Phone No.:</th><td><asp:TextBox ID="txtmobile" runat="server" Text="" class="input- mobile" Width="400px"></asp:TextBox></td>
                        <td class="style4" align="left">
                        <asp:RegularExpressionValidator ID="Rxvmobile" runat="server" ErrorMessage="Invalid Mobile Number"
                        ForeColor="#FF3300" ValidationExpression="^([7-9]{1})([0-9]{9})$" ControlToValidate="txtmobile"></asp:RegularExpressionValidator>
                        </td></tr>
                        <tr><td colspan="2">&nbsp;</td></tr>
                        <tr><th>Message:</th><td><asp:TextBox ID="txtmsg" runat="server" Text="" class="input- message" Width="400px"></asp:TextBox></td></tr>
                        <tr><td colspan="2">&nbsp;</td></tr>

                        <tr><th colspan="2">
                            <asp:Button ID="txtbtn" runat="server" Text="Send Message" 
                                onclick="txtbtn_Click" BackColor="Black" /></th></tr>
                
                </table>

             
					</form>
				</div>

				<div class="contact-info">
					<h2>contact info</h2>
					<ul class="contact-list">
						<li><i class="fas fa-location-arrow"></i> 
							<span>
								<p> HC53+8V6, State Highway, near Bavni River, C/O G.M Patel Girls High School, Dhrol, Jamnagar, Gujarat 361210</p>
							    
							</span>
						</li>
						<li><i class="fas fa-phone"></i>
							<span> 
								<p>Phone: 02897 222 222, Mobile: +91 9725877045</p>
							
							</span>
						</li>
						<li><i class="fas fa-envelope"></i>
							<span>
								<p>Upet34003@gmail.com</p>
							</span>
						</li>
					</ul>
					<ul class="contact-social">
						<li><a href=""><i class="fab fa-viber"></i></a></li>
						<li><a href=""><i class="fab fa-google-plus-g"></i></a></li>
						<li><a href=""><i class="fab fa-facebook-square"></i></a></li>
						<li><a href=""><i class="fab fa-facebook-messenger"></i></a></li>
						<li><a href=""><i class="fab fa-twitter"></i></a></li>
						<li><a href=""><i class="fab fa-skype"></i></a></li>
						<li><a href=""><i class="fab fa-youtube"></i></a></li>
					</ul>
				</div>
          </span>
</asp:Content>