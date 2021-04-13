<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmLogin.aspx.cs" Inherits="StateMngWebApp.FrmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>로그인</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            아이디 : <asp:TextBox ID="TxtUserID" runat="server" /><br />
            패스워드 : <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" /><br />
            <asp:CheckBox ID="ChkSaveUserID" runat="server" Checked="false" Text="아이디 저장" /><br />
            <asp:Button ID="BtnLogin" runat="server" Text="로그인" OnClick="BtnLogin_Click" />
        </div>
    </form>
</body>
</html>
