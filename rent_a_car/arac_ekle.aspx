<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="arac_ekle.aspx.cs" Inherits="rent_a_car.arac_ekle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kartal Rent a Car | Oto Kiralama</title>
    <link href="Content/css/style.css" rel="stylesheet" />
    <link rel="Shortcut Icon" href="Content/img/ico.png" type="image/x-icon" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button2" runat="server" Text="Geri" CssClass="buton" Height="87px" Width="210px" OnClick="Button2_Click" />
            <table id="aracekle">
                <tr>
                    <td>Plaka:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="236px" Height="18px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Marka:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="236px" Height="18px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Model:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="236px" Height="18px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Renk:</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Width="236px" Height="18px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Günlük:</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Width="236px" Height="18px"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Haftalık:</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Width="236px" Height="18px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Aylık:</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" Width="236px" Height="18px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td class="auto-style1">
                        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="buton" Width="203px" Height="45px" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
