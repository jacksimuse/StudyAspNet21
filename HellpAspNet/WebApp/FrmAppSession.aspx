<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmAppSession.aspx.cs" Inherits="WebApp.FrmAppSession" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>애플리케이션&세션 객체</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            현재 페이지가 모든 사용자에 의해 <asp:Label ID="LblApp" runat="server"></asp:Label> 번 호출되었습니다.<br />
            현재 페이지가 나에 의해 <asp:Label ID="LblSession" runat="server"></asp:Label> 번 호출되었습니다.<br />
            나의 고유아이디 : <asp:Label ID="LblSessionID" runat="server"></asp:Label><br />
            현재 세션유지시간 : <asp:Label ID="LblTimeout" runat="server"></asp:Label><br />
        </div>
    </form>
</body>
</html>
