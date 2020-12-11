<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Booking.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"/>

    <title></title>
    <style type="text/css">
    /*PC*/
    @media only screen and (max-width:1500px) {
        .Tit {
            height:100px;
            margin: 0;
        }

        .LBar {
            background-color: #ffffff;
            margin: 0;
            display: inline-block;
        }

        .Cont {
            background-color: #ffffff;
            text-align: center;
            display: inline-block;
            height:400px;
        }

        .RBar {
            background-color: #ffffff;
            margin: 0;
            display: inline-block;
        }

        .Footer {
            height:100px;
        }
    }
    /*OGC*/
    @media only screen and (max-width:600px){
        .Tit{
            height:80px;
            font-size:36px;
            margin:0;
        }
        .LBar{
            display:none;
        }       
        .Cont{
            background-color:#ffffff;
            margin:0;
            height:350px;
            
        }
        .RBar{
            display:none;
        }
        .Footer{
            height:80px;
            margin:0;
        }
    }
       
       
</style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td style="width:25%"></td>
                <td style="width:50%;border-color:#000000;border-style:solid;border-radius:10px;">
                    <div class ="Tit" style="width:100%;font-size:48px;
                         font-family:'Microsoft JhengHei';">登入</div>
                </td>
                <td style="width:25%"></td>
            </tr>
        </table>
        


        <table style="width:100%;">
            <tr>
        
        <td style="width:25%;"><div class ="LBar"></div></td>
        <td style="width:50%; text-align:center;border-width:2px;border-style:solid;
            border-color:#000000;border-radius:10px;">
            <div class ="Cont" style="text-align:center;justify-content:center;" >
            <div style="width:100%;">
                <asp:Label ID="Label1" runat="server" Text="帳號：" Font-Names="Microsoft JhengHei" Font-Size="18pt"></asp:Label>
                <asp:TextBox ID="Acc" runat="server"></asp:TextBox>
            </div>
            <br/>
            <div style="width:100%;">
                <asp:Label ID="Label2" runat="server" Text="密碼：" Font-Names="Microsoft JhengHei" Font-Size="18pt"></asp:Label>
                <asp:TextBox ID="Pass" runat="server" TextMode="Password" ></asp:TextBox>
            </div>
            <br/>
            <div style="width:100%;">
                <asp:Button ID="BtnLog" runat="server" OnClick="BtnLog_Click" Text="登入" Font-Names="Microsoft JhengHei" Font-Size="12pt" />
                <asp:Button ID="BtnReg" runat="server" Text="註冊" OnClick="BtnReg_Click" TabIndex="1" Font-Names="Microsoft JhengHei" Font-Size="12pt" />
            </div>
        </div></td>
        <td style="width:25%;"><div class ="RBar" ></div></td>
        
            </tr>
        </table>
        <div class ="Footer" style="width:100%; height:100px;"></div>
        
    </form>
</body>
</html>
