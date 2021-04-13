<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmStateMng.aspx.cs" Inherits="StateMngWebApp.FrmStateMng" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>상태관리</title>
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

            <asp:Button ID="BtnSave" runat="server" Text="저장" OnClick="BtnSave_Click"/>
        </div>
    </form>
</body>
</html>
