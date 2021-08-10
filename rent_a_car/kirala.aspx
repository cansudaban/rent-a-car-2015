<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kirala.aspx.cs" Inherits="rent_a_car.kirala" %>

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
            <table id="aracekle">
                <tr>
                    <td>TcNo:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                    <td>Telefon:</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Ad:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                    <td>E-mail:</td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Soyad:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                    <td>Adres:</td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Cinsiyet:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="173px">
                            <asp:ListItem>Kadın</asp:ListItem>
                            <asp:ListItem>Erkek</asp:ListItem>
                        </asp:DropDownList></td>
                    <td>Ehliyet No:</td>
                    <td>
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Ehliyet Tarihi:</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                    <td>Doğum Tarihi:</td>
                    <td>
                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Doğum Yeri:</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                    <td>Ehliyetin Verildiği Yer:</td>
                    <td>
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Kiralama Tarihi:</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                    <td>Bitiş Tarihi:</td>
                    <td>
                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Plaka:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="21px" Width="173px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList></td>
                    <td>Ücret:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" Height="21px" Width="173px" AutoPostBack="True"></asp:DropDownList></td>
                </tr>
                <tr>


                    <td colspan="4" class="auto-style1">
                        <asp:Button ID="Button1" runat="server" Text="Kirala" CssClass="buton" Height="53px" Width="206px" OnClick="Button1_Click" /></td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
