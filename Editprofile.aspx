<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDetail.master" AutoEventWireup="true" CodeFile="Editprofile.aspx.cs" Inherits="Editprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
 <table width="100%" style="font-size: larger">
<td align="left" style="font-size: xx-large"> 
                
                <br />
                Edit Profile<br />
                <br />
                </td>
                            
      <tr>
             <td>
                 Email:<br />
                <asp:TextBox ID="txtemail"   runat="server"  Height="30px" Width="300px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="*">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ErrorMessage="Enter Email"></asp:RegularExpressionValidator>
            </td>
            </tr>

               <tr>
             <td>
                 Address:<br />
              <asp:TextBox ID="Txtaddress" runat="server"  placeholder="ADDRESS" Width="300px" TextMode="MultiLine" 
                  Height="30px"></asp:TextBox> 
                 <br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                  ControlToValidate="Txtaddress" ErrorMessage="Enter your Address">*</asp:RequiredFieldValidator>
                   </td>
            </tr>
            
              <tr>
             <td>
                 contect no:<br />
            <asp:TextBox ID="Txtmobileno" runat="server"  placeholder="CONTECTNO." 
                Width="300px" Height="30px"></asp:TextBox>
                 <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="Txtmobileno" ErrorMessage="Enter phone No">*</asp:RequiredFieldValidator>
                  </td>
            </tr>
            
            <tr>
        <td>
            <asp:LinkButton ID="update" class="button" runat="server" OnClick="update_Click">update</asp:LinkButton>
                </td>
    </tr>
            
            </tr> 
            
         
            <tr>
        <td>
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
    </tr>
        
                </table> 
                </center> 
</asp:Content>


