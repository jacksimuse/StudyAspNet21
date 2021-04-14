<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="LoginWebApp.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>회원가입</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>회원가입</h2>

            아이디 : <asp:TextBox ID="TxtUserID" runat="server"></asp:TextBox><br />
            암호 : <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" /><br />
            <asp:Button ID="BtnRegister" runat="server" Text="회원가입" OnClick="BtnRegister_Click" />
        </div>
    </form>
</body>
</html>