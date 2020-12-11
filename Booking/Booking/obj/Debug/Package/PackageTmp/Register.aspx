<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Booking.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" >
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <title></title>
    
    <style type="text/css">

        @media only screen and (max-width:1500px){
            .Topdiv{
                height:0px;
            }
        }

        @media only screen and (max-width:600px){
            .Topdiv{
                height:50px;
            }
        }
    </style>

    </head>

<body>
    
    <form id="form1" runat="server">
        <div class="Topdiv" style="width:100%"></div>
        <table border="0" style="width:100%;border-spacing:0px;">
        <tr style="text-align:center;vertical-align:middle;width:100%;padding:0px" >
            
        <td style="width:15%;" ></td>

        <td colspan="3" style="width:70%;height:80px;border-color:#000000;border-style:solid;
            border-top-left-radius:10px;border-top-right-radius:10px;">
            <b style="font-size:28px;font-family:'Microsoft JhengHei';">註冊帳號</b>

        </td>
            
        <td style="width:15%"></td>

        </tr>

        <tr>
            
            <td style="width:15%"></td>

            <td style="width:10%;border-left-color:#000000;border-left-style:solid;"></td>

            <td style="width:50%;text-align:center">
                <div style="text-align:center;">
                    <asp:Label ID="Label3" runat="server" Text="建立帳號：" Font-Names="Microsoft JhengHei"></asp:Label>
                    <asp:TextBox ID="txtAcc" runat="server" OnTextChanged="txtAcc_TextChanged" AutoPostBack="True"></asp:TextBox>
                    <br />
                    <asp:Label ID="AccSign" runat="server" Font-Names="Microsoft JhengHei"></asp:Label>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="建立密碼：" Font-Names="Microsoft JhengHei"></asp:Label>
                    <asp:TextBox ID="txtPass" runat="server" AutoPostBack="True" TextMode="Password"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="重複輸入密碼：" Font-Names="Microsoft JhengHei"></asp:Label>
                    <asp:TextBox ID="txtComf" runat="server" OnTextChanged="txtComf_TextChanged" AutoPostBack="True" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:Label ID="PassSign" runat="server" Font-Names="Microsoft JhengHei"></asp:Label>
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="輸入電子郵件：" Font-Names="Microsoft JhengHei"></asp:Label>
                    <asp:TextBox ID="txtMail" runat="server" AutoPostBack="True"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="BtnCre" runat="server" OnClick="BtnCre_Click" Text="註冊" Enabled="False" Font-Names="Microsoft JhengHei" />
                </div>
            </td>

            <td style="width:10%;border-right-style:solid;border-right-color:#000000"></td>
            
            <td style="width:15%;"></td>
        </tr>
        <tr>
            <td style="width:15%;"></td>

            <td style="width:10%;border-left-style:solid;border-left-color:#000000"></td>

            <td style="width:50%;">
                <div style="text-align:center">
                    <asp:Label ID="Label7" runat="server" Text="輸入收到的驗證碼" Font-Names="Microsoft JhengHei"></asp:Label>
                    <br />
                    <br />
                    <asp:TextBox ID="txtVeri" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="BtnVeri" runat="server" OnClick="BtnVeri_Click" Text="驗證" Enabled="False" Font-Names="Microsoft JhengHei" />
                </div>
            </td>

            <td style="width:10%;border-right-style:solid;border-right-color:#000000"></td>
            
            <td style="width:15%"></td>

        </tr>

        <tr style="text-align:center;height:100px;" >
            <td style="background-color:#FFFFFF;width:15%;" ></td>

            <td colspan="3" style="border-color:#000000;border-style:solid;border-top-width:0px;
                border-bottom-left-radius:10px;border-bottom-right-radius:10px;"></td>

            <td style="width:15%;background-color:#FFFFFF"></td>
        </tr>
              
    </table>
        

        
    </form>
</body>
</html>
