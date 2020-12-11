<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Booking.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" >
    <title></title>
    </head>

<body>
    
    <form id="form1" runat="server">
          <table border="0" style="width:100%;border-spacing:0px;border-width:0px">
        <tr style="text-align:center;vertical-align:middle;width:100%;height:70px; 
            background-color:#999999;padding:0px" >
            
        <td style="width:20%;background-color:#FFFFFF"></td>

        <td colspan="3" style="border-color:#000000; border-style:double;border-width:5px;border-bottom-width:0px;font-size:28px
            ;color:#f71c1d"><b>註冊帳號</b></td>
            
        <td style="width:20%;background-color:#FFFFFF"></td>

        </tr>

        <tr>
            
            <td style="width:20%"></td>

            <td style="width:10%;background-color:#999999;border-width:0px;border-style:double;border-left-width:5px;
                border-color:#000000"></td>

            <td style="width:40%;background-color:#999999;text-align:center">
                <div style="text-align:center;border:dashed;border-width:5px;border-color:#FD00DF">
                    <asp:Label ID="Label3" runat="server" Text="建立帳號："></asp:Label>
                    <asp:TextBox ID="txtAcc" runat="server" OnTextChanged="txtAcc_TextChanged" AutoPostBack="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="AccSign" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="建立密碼："></asp:Label>
                    <asp:TextBox ID="txtPass" runat="server" AutoPostBack="True" TextMode="Password"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="重複輸入密碼："></asp:Label>
                    <asp:TextBox ID="txtComf" runat="server" OnTextChanged="txtComf_TextChanged" AutoPostBack="True" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:Label ID="PassSign" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="輸入電子郵件："></asp:Label>
                    <asp:TextBox ID="txtMail" runat="server" AutoPostBack="True"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="BtnCre" runat="server" OnClick="BtnCre_Click" Text="註冊" Enabled="False" />
                </div>
            </td>

            <td style="width:10%;background-color:#999999;border-width:0px;border-style:double;border-right-width:5px;
                border-color:#000000"></td>
            
            <td style="width:20%"></td>
        </tr>
        <tr>
            <td style="width:20%"></td>

            <td style="width:10%;background-color:#999999;border-width:0px;border-style:double;border-left-width:5px;
                border-color:#000000"></td>

            <td style="width:40%;background-color:#999999;text-align:center;border:dashed;
                border-width:5px;border-top-width:0px;;border-color:#FD00DF">
                <div style="text-align:center">
                    <asp:Label ID="Label7" runat="server" Text="輸入收到的驗證碼"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txtVeri" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="BtnVeri" runat="server" OnClick="BtnVeri_Click" Text="驗證" Enabled="False" />
                </div>
            </td>

            <td style="width:10%;background-color:#999999;border-width:0px;border-style:double;border-right-width:5px;
                border-color:#000000"></td>
            
            <td style="width:20%"></td>

        </tr>

        <tr style="text-align:center;vertical-align:middle;width:100%;height:70px; 
            background-color:#999999" >
            <td style="width:20%;background-color:#FFFFFF"></td>

            <td colspan="3" style="border-color:#000000; border-style:double;border-width:5px;border-top-width:0px;
            ;color:#f71c1d"></td>

            <td style="width:20%;background-color:#FFFFFF"></td>
        </tr>
              
    </table>
        

        
    </form>
</body>
</html>
