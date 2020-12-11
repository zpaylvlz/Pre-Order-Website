<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Booking.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="UserID" runat="server"></asp:Label>
        <asp:Table ID="MenuTable" runat="server" BackColor="#CCFFFF" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="2" GridLines="Both">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Title</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <asp:Panel ID="Panel1" runat="server" Width="200px">
        </asp:Panel>
        <asp:Label ID="Label1" runat="server" Text="備註："></asp:Label>
        <asp:TextBox ID="TxtNote" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="BtnTotal" runat="server" OnClick="BtnTotal_Click" Text="總結" />
        <br />
        <asp:Button ID="BtnSend" runat="server" OnClick="BtnSend_Click"  Text="送出訂單" OnClientClick="return confirm('確認送出訂單?');" />
        <br />
        <asp:Button ID="BtnCh" runat="server" OnClick="BtnCh_Click" Text="查看訂單" />
    </form>
</body>
</html>
