<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reg.aspx.cs" Inherits="Reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center style="text-align: left">
    <table width="100%" style="font-size: larger">
      
            <td align="  " 
              
                style="font-size: xx-large;  font-family: Cambria; font-weight: bold; <%--background-color: #993366;--%>">
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <br />
                REGISTRATION:<br />
                <br /><br />
                <br />
                <br />
              </td>
              </tr>

    
    
    <tr>
        <td>
            Email:<br />
            <asp:TextBox ID="txtemail"  runat="server"  
                placeholder="EMAIL" Height="30px" Width="300px" ></asp:TextBox>
                                        <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="*">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="Enter Valid Email" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ControlToValidate="txtemail" SetFocusOnError="True">Invalid Email Id</asp:RegularExpressionValidator>
                                        </td>
    </tr>

    
    
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Password:
            <br />
            <asp:TextBox ID="txtpassword" class="form-control" runat="server" 
                TextMode="Password"  placeholder="PASSWORD" Height="30px" Width="300px">*</asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ErrorMessage="Enter Your Password" ControlToValidate="txtpassword">*</asp:RequiredFieldValidator>
        </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            passwordcomper:<br />
            <asp:TextBox ID="txtcomper" class="form-control" runat="server" 
                TextMode="Password"  placeholder="COMPER PASSWORD" Height="30px" Width="300px">*</asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtcomper" ErrorMessage="*">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="comperpassword" runat="server" 
                ControlToCompare="txtpassword" ControlToValidate="txtcomper" 
                ErrorMessage="Enter Match Password"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Mobile No. :<br />
            <asp:TextBox ID="Txtmobileno" class="form-control" runat="server"  
                placeholder="MOBILE NO." Height="30px" Width="300px"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="Txtmobileno" ErrorMessage="*">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="Txtmobileno" ErrorMessage="Enter 10Digit number" 
                ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Address:<br />
            <asp:TextBox ID="txtaddress" class="form-control" runat="server"  
                placeholder="ADDRESS" Height="30px" Width="300px" TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtaddress" ErrorMessage="Enter Your Address">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <%--<td>
            State:<br />
            <asp:DropDownList ID="ddlstate" class="form-control" runat="server"  
                placeholder="SELECT STATE" Height="30px" Width="300px" AutoPostBack="True">
            </asp:DropDownList>
            <br />
        </td>
    </tr>
    <tr>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ErrorMessage="Selected State" ControlToValidate="ddlstate">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            City:<br />
            <asp:DropDownList ID="ddlcity" class="form-control" runat="server"  
                placeholder="SELECT CITY" Height="30px" Width="300px" AutoPostBack="True">
            </asp:DropDownList>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ErrorMessage="Selected city" ControlToValidate="ddlcity">*</asp:RequiredFieldValidator>
        </td>--%>
        <td style="width: 170px">
        State:<br />

              <asp:UpdatePanel ID="UpdatePanel1" runat="server">
              <ContentTemplate>
              
               <asp:DropDownList ID="ddlstate"  class="form-control"  runat="server" 
                   placeholder="state" Height="30px" 
                    Width="300px" AutoPostBack="True" >
                   <asp:ListItem>--Selected--</asp:ListItem>
                   <asp:ListItem>Gujarat</asp:ListItem>
                   <asp:ListItem>Panjab</asp:ListItem>
                   <asp:ListItem></asp:ListItem>
               </asp:DropDownList>
                  <br />
                  <br />
                       City:<br />          
               <asp:DropDownList ID="ddlcity" class="form-control" runat="server" 
                      placeholder="city" Height="30px" 
                    Width="300px" AutoPostBack="True">
                   <asp:ListItem>--Selected--</asp:ListItem>
                   <asp:ListItem>Ankleshwar</asp:ListItem>
                   <asp:ListItem>Bharuch</asp:ListItem>
                   <asp:ListItem>Surat</asp:ListItem>
                   <asp:ListItem>Bardoli</asp:ListItem>
               </asp:DropDownList>
                  <br />
                  <br />
                  
                 
               </ContentTemplate>
              </asp:UpdatePanel>
          
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Pincode:<br />
            <asp:TextBox ID="txtpincode" class="form-control" runat="server"  
                placeholder="PINCODE" Height="30px" Width="300px" BorderStyle="None"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtpincode" ErrorMessage="*">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="txtpincode" ErrorMessage="Enter Pincode" 
                ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="height: 25px">
            </td>
    </tr>
    <tr>
        <td>
            <asp:LinkButton ID="Buttonsubmit" class="button" runat="server" OnClick="Buttonsubmit_Click">Submit</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Text="lblmsg"></asp:Label>
        </td>
    </tr>
    </table>
       </center> 
</asp:Content>

