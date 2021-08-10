<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="arac_sil.aspx.cs" Inherits="rent_a_car.arac_sil" %>

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
          <asp:Button ID="Button2" runat="server" Text="Geri" CssClass="buton" Height="87px" Width="210px" OnClick="Button2_Click" />

            <table id="giris">
                <tr>
                    <td>Araç Seç:</td>
                    <td><asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="173px"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style1"><asp:Button ID="Button1" runat="server" Text="Aracı Sil"  Height="53px" Width="206px" OnClick="Button1_Click" CssClass="buton" /></td>
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
