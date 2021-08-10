<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listele.aspx.cs" Inherits="rent_a_car.listele" %>

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
            <asp:Button ID="Button1" runat="server" Text="Geri" CssClass="buton" Height="87px" Width="210px" OnClick="Button1_Click" />
            <table id="aracekle">
                <tr>

                    <td>
                        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                    </td>

                </tr>
                <tr>

                    <td>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </td>

                </tr>
            </table>
        </div>
    </form>
</body>
</html>
