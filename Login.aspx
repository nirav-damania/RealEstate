<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center style="text-align: left">
    <table width="100%" style="font-size: larger">
      
        <tr>
            
            <td align="char" style="font-size: xx-large">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LOGIN
                <br />
                <br />
              </td>
              </tr>


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
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Password:<br />
                <asp:TextBox ID="txtpassword"  runat="server" TextMode="Password" Height="30px" 
                    Width="300px"></asp:TextBox>
            
                <br />
            
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Enter Password" ControlToValidate="txtpassword">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
        <td>
                    
                    <asp:LinkButton ID="Buttonlogin" class="button" runat="server" OnClick="Buttonlogin_Click">Login</asp:LinkButton>
                    
                    </td>
            </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-size: x-large">
                    <asp:LinkButton runat="server" PostBackUrl="~/Forgetpassword.aspx" 
                    ID="LinkButton1" ForeColor="Red">!forgetpassword</asp:LinkButton>
                    <br />
            </td>
        </tr>
    </table>
    </center>
</asp:Content>

