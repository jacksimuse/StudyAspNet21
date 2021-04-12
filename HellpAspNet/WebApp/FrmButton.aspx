<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmButton.aspx.cs" Inherits="WebApp.FrmButton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>버튼컨트롤</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TxtNum" runat="server" />
            <asp:Button ID="BtnInc" runat="server" Text="증가" OnClick="BtnInc_Click"/>
            <asp:Button ID="BtnDec" runat="server" Text="감소" OnClick="BtnDec_Click" />

            <asp:LinkButton ID="BtnLink" runat="server" Text="네이버" OnClick="BtnLink_Click"/>
            <asp:ImageButton ID="BtnImage" runat="server" AlternateText="글쓰기" ToolTip="글쓰기" OnClick="BtnImage_Click"
                ImageUrl="~/images/btn_post.gif"/>
        </div>
    </form>
</body>
</html>
