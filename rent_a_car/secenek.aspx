<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="secenek.aspx.cs" Inherits="rent_a_car.secenek" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kartal Rent a Car | Oto Kiralama</title>
    <link href="Content/css/style.css" rel="stylesheet" />
    <link rel="Shortcut Icon" href="Content/img/ico.png" type="image/x-icon"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="giris">
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Araçları Gör" CssClass="buton" Height="87px" Width="210px" OnClick="Button1_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Araç Ekle" CssClass="buton" Height="87px" Width="210px" OnClick="Button2_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button4" runat="server" Text="Araç Sil" CssClass="buton" Height="87px" Width="210px" OnClick="Button4_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Araç Kirala" CssClass="buton" Height="87px" Width="210px" OnClick="Button3_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button5" runat="server" Text="Sözleşmeler" CssClass="buton" Height="87px" Width="210px" OnClick="Button5_Click" />
                    </td>
                    
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
