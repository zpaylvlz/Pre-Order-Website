<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Booking.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>

        </table>
        <asp:Label ID="Label1" runat="server" Text="Account："></asp:Label>
        <asp:TextBox ID="Acc" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Password："></asp:Label>
            <asp:TextBox ID="Pass" runat="server" TextMode="Password" ></asp:TextBox>
        </p>
        <asp:Button ID="BtnLog" runat="server" OnClick="BtnLog_Click" Text="Login" />
        <asp:Button ID="BtnReg" runat="server" Text="Register" OnClick="BtnReg_Click" TabIndex="1" />
    </form>
</body>
</html>
