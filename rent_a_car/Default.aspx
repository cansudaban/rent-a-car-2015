<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="rent_a_car.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kartal Rent a Car | Oto Kiralama</title>
    <link href="Content/css/style.css" rel="stylesheet" />
    <link rel="Shortcut Icon" href="Content/img/ico.png" type="image/x-icon"/>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section id="container">
                <table id="giris">
                    <tr>
                        <td>Kullanıcı Adı:</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="234px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Şifre:</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="234px" TextMode="Password"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td class="auto-style1">
                            <asp:Button ID="Button1" runat="server" Text="Giriş" CssClass="buton" Height="34px" Width="124px" OnClick="Button1_Click" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" class="auto-style1">
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
                    </tr>
                </table>
            </section>
        </div>
    </form>
</body>
</html>
