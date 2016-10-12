<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Foregotpassword.aspx.cs" Inherits="Foregotpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    
        <table width="100%">
            <tr>
                <td style="font-size: xx-large">
                     <br />
                     Forgot Your Password?<br />
                     <br />
                </td>
            </tr>
            <tr>
                <td>
                    Enter Your Email:<br />
                    <asp:TextBox ID="txtemail" runat="server" Width="300px" Height="30px"></asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="Enter  Valid Email Id" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="*">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="left">
    
   
                    <asp:LinkButton ID="buttonsendmepassword" class="button" runat="server" OnClick="buttonsendmepassword_Click">Send Me Password</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td align="left">
    
   
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
   
    </center>

</asp:Content>

