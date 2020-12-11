<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Booking.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <title></title>
    <style type="text/css">
        @media only screen and (max-width:1500px){
            .Row1_1{
                width:20%;
            }
            .Row1_2{
                width:60%;
            }
            #Row1_3{
                width:20%;
            }
            .Row2_1{
                width:20%;
            }
            .Row2_2{
                width:60%;
            }
            .Row2_3{
                width:20%;
            }
            .Row3_1{
                width:20%;
            }
            .Row3_2{
                width:60%;
            }
            .Row3_3{
                width:20%;
            }
            .Row4_1{
                width:20%;
            }
            .Row4_2{
                width:60%;
            }
            .Row4_3{
                width:20%;
            }
        }
        @media only screen and (max-width:600px){
            td{
                font-size:10px;
            }
            .Row1_1{
                width:5%;
            }
            .Row1_2{
                width:90%;
            }
            .Row1_3{
                width:5%;
            }
            .Row2_1{
                width:5%;
            }
            .Row2_2{
                width:90%;
            }
            .Row2_3{
                width:5%;
            }
            .Row3_1{
                width:5%;
            }
            .Row3_2{
                width:90%;
            }
            .Row3_3{
                width:5%;
            }
            .Row4_1{
                width:5%;
            }
            .Row4_2{
                width:90%;
            }
            .Row4_3{
                width:5%;
            }
        }
    </style>
</head>
<body style="background-color:bisque;">
    <form id="form1" runat="server">
        <div style ="width:100%;text-align:center;background-color:navy"><asp:Label ID="UserID" runat="server" Font-Names="Microsoft JhengHei" Font-Size="20pt" ForeColor="White"></asp:Label></div>
        <table style="width:100%;border-spacing:0px">
            <tr>
                <td class="Row1_1"></td>

                <td class="Row1_2" style="text-align:center;border-width:2px;border-style:solid;
                    border-color:#000000;border-bottom-width:0px;border-top-left-radius:10px;border-top-right-radius:10px;">        
                    <asp:Table ID="MenuTable" runat="server" Width="100%"  >
                        <asp:TableRow runat="server" >
                        </asp:TableRow>
                    </asp:Table>
                </td>

                <td class="Row1_3"></td>
            </tr>
            <tr>
                <td class="Row2_1"></td>

                <td class="Row2_2" style="text-align:center;border-width:2px;border-style:solid;
                    border-color:#000000;border-bottom-width:0px;border-top-width:0px;" >
                    <asp:Panel ID="Panel1" runat="server" Width="100%" >你的訂單</asp:Panel>
                </td>

                <td class="Row2_3"></td>
            </tr>

            <tr>
                <td class="Row3_1"></td>

                <td class="Row3_2" style="text-align:center;border-width:2px;border-style:solid;
                    border-color:#000000;border-bottom-width:0px;border-top-width:0px;" >
                    <asp:Label ID="Label2" runat="server" Text="備註："></asp:Label>
                    <asp:TextBox ID="TxtNote" runat="server" Width="250px"></asp:TextBox>
                </td>

                <td class="Row3_3"></td>
            </tr>

            <tr>
                <td class="Row4_1"></td>
                <td class="Row4_2"style="text-align:center;border-width:2px;border-style:solid;
                    border-color:#000000;border-top-width:0px;border-bottom-left-radius:10px;border-bottom-right-radius:10px;">
                    <asp:Button ID="BtnTotal" runat="server" OnClick="BtnTotal_Click" Text="總結" />
                    <asp:Button ID="BtnSend" runat="server" OnClick="BtnSend_Click"  Text="送出訂單" OnClientClick="return confirm('確認送出訂單?');" />
                    <asp:Button ID="BtnCh" runat="server" OnClick="BtnCh_Click" Text="查看訂單" />
                </td>
                <td class="Row4_3"></td>
            </tr>
        </table>

    </form>
</body>
</html>
