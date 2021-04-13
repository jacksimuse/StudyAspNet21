<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMemoView.aspx.cs" Inherits="DBHandlingWebApp.FrmMemoView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>메모상세보기</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>상세보기</h3>
            번호 : <asp:Label ID="LblNum" runat="server"></asp:Label><br />
            이름 : <asp:Label ID="LblName" runat="server"></asp:Label><br />
            이메일 : <asp:Label ID="LblEmail" runat="server"></asp:Label><br />
            메모 : <asp:Label ID="LblTitle" runat="server"></asp:Label><br />
            작성일 : <asp:Label ID="LblPostDate" runat="server"></asp:Label><br />
            IP주소 : <asp:Label ID="LblPostIP" runat="server"></asp:Label><br />
            <hr />
            <asp:HyperLink ID="LnkMemoList" runat="server" NavigateUrl="~/FrmMemoList.aspx">리스트</asp:HyperLink>
        </div>
    </form>
</body>
</html>
