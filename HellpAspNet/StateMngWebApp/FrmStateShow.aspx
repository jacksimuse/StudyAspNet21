<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmStateShow.aspx.cs" Inherits="StateMngWebApp.FrmStateShow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>저장상태보기</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>서버에 저장</h3>
            Application : <asp:TextBox ID="TxtApplication" runat="server"></asp:TextBox><br />
            Session : <asp:TextBox ID="TxtSession" runat="server"></asp:TextBox><br />
            Cache : <asp:TextBox ID="TxtCache" runat="server"></asp:TextBox><br />

            <h3>클라이언트에 저장</h3>
            Cookies : <asp:TextBox ID="TxtCookies" runat="server"></asp:TextBox><br />
            Session : <asp:TextBox ID="TxtViewState" runat="server"></asp:TextBox><br />

            <hr />
            <asp:Label ID="LblSiteName" runat="server" /><br />
            <asp:Label ID="LblConnectionString" runat="server" /><br />
        </div>
    </form>
</body>
</html>
