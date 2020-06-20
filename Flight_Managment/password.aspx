<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="password.aspx.cs" Inherits="Flight_Managment.password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
    <tr>
        <td>Username:
        </td>
        <td>
            <asp:TextBox ID="txtUsername" runat="server" Text="" />
        </td>
    </tr>
    <tr>
        <td>Password:
        </td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:Button ID="btnSubmit"  Text="Submit" runat="server" OnClick="btnSubmit_Click" />
        </td>
    </tr>
</table>
<hr />
<asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="false" HeaderStyle-BackColor="#3AC0F2"
    HeaderStyle-ForeColor="White" RowStyle-BackColor="#A1DCF2" OnRowDataBound="OnRowDataBound">
    <Columns>
        <asp:BoundField DataField="ame" HeaderText="Username" />
        <asp:BoundField DataField="assword" HeaderText="Encrypted Password" />
        <asp:BoundField DataField="assword" HeaderText="Desrypted Password" />
    </Columns>
</asp:GridView>
    </form>
</body>
</html>
