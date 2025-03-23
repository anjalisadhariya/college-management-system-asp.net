<%@ Page Title="" Language="C#" MasterPageFile="~/principal/principalMasterPage.master" AutoEventWireup="true" CodeFile="addnotice.aspx.cs" Inherits="principal_deletedept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPH_Data" Runat="Server">
    <form runat="server" id="f1">
    <center>
        <table border="2" cellpadding="10" style="font-size:18px; width:70%" >
            <tr>
                <th colspan="2" style="background-color:Black; color:White;">Add New Notice Information</th>
            </tr>
                        <tr><th>Notice Tital:</th><td><asp:TextBox ID="txtntital" runat="server" Text="" class="input- tital" Width="400px"></asp:TextBox></td>
                        </tr>
                         <tr><th>Department Name:</th><td>
                             <asp:DropDownList ID="DropDownList1" runat="server" 
                                 DataSourceID="SqlDataSource1" DataTextField="deptname" DataValueField="deptid">
                             </asp:DropDownList>
                             
                             <asp:SqlDatasource ID="SqlDataSource1" runat="server" 
                                 ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                 SelectCommand="SELECT * FROM [dept]"></asp:SqlDataSource>
                             
                         </tr>
        
                         <tr><th>Description:</th><td><asp:TextBox ID="txtdescription" runat="server" Text="" class="input- description" Width="400px" TextMode="MultiLine"></asp:TextBox></td>
                         </tr>
                     <tr>
                     <td>Date:</td>
                         <td>
<asp:DropDownList ID="dd" runat="server" TabIndex="4"  
        Font-Size="20px" BorderColor="Black">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>8</asp:ListItem>
        <asp:ListItem>9</asp:ListItem>
        <asp:ListItem>10</asp:ListItem>
        <asp:ListItem>11</asp:ListItem>
        <asp:ListItem>12</asp:ListItem>
        <asp:ListItem>13</asp:ListItem>
        <asp:ListItem>14</asp:ListItem>
        <asp:ListItem>15</asp:ListItem>
        <asp:ListItem>16</asp:ListItem>
        <asp:ListItem>17</asp:ListItem>
        <asp:ListItem>18</asp:ListItem>
        <asp:ListItem>19</asp:ListItem>
        <asp:ListItem>20</asp:ListItem>
        <asp:ListItem>21</asp:ListItem>
        <asp:ListItem>22</asp:ListItem>
        <asp:ListItem>23</asp:ListItem>
        <asp:ListItem>24</asp:ListItem>
        <asp:ListItem>25</asp:ListItem>
        <asp:ListItem>26</asp:ListItem>
        <asp:ListItem>27</asp:ListItem>
        <asp:ListItem>28</asp:ListItem>
        <asp:ListItem>29</asp:ListItem>
        <asp:ListItem>30</asp:ListItem>
        <asp:ListItem>31</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="mm" runat="server" TabIndex="5" Font-Size="20px" BorderColor="Black">
        <asp:ListItem Value="1">january</asp:ListItem>
        <asp:ListItem Value="2">febuary</asp:ListItem>
        <asp:ListItem Value="3">march</asp:ListItem>
        <asp:ListItem Value="4">april</asp:ListItem>
        <asp:ListItem Value="5">may</asp:ListItem>
        <asp:ListItem Value="6">june</asp:ListItem>
        <asp:ListItem Value="7">july</asp:ListItem>
        <asp:ListItem Value="8">august</asp:ListItem>
        <asp:ListItem Value="9">septmber</asp:ListItem>
        <asp:ListItem Value="10">october</asp:ListItem>
        <asp:ListItem Value="11">nevember</asp:ListItem>
        <asp:ListItem Value="12">december</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="yy" runat="server" TabIndex="6" Font-Size="20px" BorderColor="Black" >
    <asp:ListItem>2024</asp:ListItem>
    <asp:ListItem>2023</asp:ListItem>
    <asp:ListItem>2022</asp:ListItem>
    <asp:ListItem>2021</asp:ListItem>
    <asp:ListItem>2020</asp:ListItem>
    </asp:DropDownList>
   
</td>
                       <tr><th colspan="2">
                            <asp:Button ID="txtbtn" runat="server" Text="Add" onclick="txtbtn_Click"/></th></tr>

                </table>

</center></form>

</asp:Content>


