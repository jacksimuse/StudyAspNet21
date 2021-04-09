<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmRequest.aspx.cs" Inherits="WebApp.FrmRequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>리퀘스트 개체</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            아이디 : <asp:TextBox ID="TxtUserID" runat="server" /><br />
            암호 : <asp:TextBox ID="TxtPassword" runat="server" /><br />
            이름 : <asp:TextBox ID="TxtName" runat="server" /><br />
            나이 : <asp:TextBox ID="TxtAge" runat="server" /><br />
            <asp:Button ID="BtnSubmit" runat="server" Text="전송"
                OnClick="BtnSubmit_Click" /><br />
            <asp:Label ID="LblResult" runat="server"></asp:Label><br />
            <asp:Label ID="LblIpAddress" runat="server"></asp:Label><br />
        </div>
    </form>
</body>
</html>
