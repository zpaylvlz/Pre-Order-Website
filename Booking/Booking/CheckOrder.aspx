<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckOrder.aspx.cs" Inherits="Booking.CheckOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:bisque;">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager2" runat="server">
        </asp:ScriptManager>
        <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="5000">
        </asp:Timer>
    <table style="width:100%;border-spacing:0px">
        <tr>
            <td style="width:20%"><asp:Button ID="BtnBack" runat="server" OnClick="BtnBack_Click" Text="返回" /></td>

            <td style="width:60%;font-size:18px;text-align:center;font-family:'Microsoft JhengHei';
                border-style:solid;border-color:#000000;border-width:2px;border-top-left-radius:10px;border-top-right-radius:10px;background-color:navy">
                <p style="color:white">你的訂單</p>
            </td>

            <td style="width:20%"></td>
        </tr>

        <tr>
            <td style="width:20%"></td>

            <td style="width:60%;text-align:center;border-style:solid;border-color:#000000;
                border-width:2px;border-top-width:0px;border-bottom-left-radius:10px;border-bottom-right-radius:10px;">
                <asp:PlaceHolder ID="PH1" runat="server"/>
            </td>

            <td style="width:20%"></td>
        </tr>
    </table>
        
    </form>
</body>
</html>
