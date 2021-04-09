<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmPageLoad.aspx.cs" Inherits="WebApp.FrmPageLoad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="Content/main.css" />
    <title>페이지 클래스</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="BtnPostBack" runat="server" Text="PostBack" OnClick="BtnPostBack_Click" />
            <asp:Button ID="BtnNewLoad" runat="server" Text="NewLoad" OnClick="BtnNewLoad_Click" />
        </div>
    </form>
</body>
</html>
