<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmFileUpload.aspx.cs" Inherits="WebApp.FrmFileUpload" %>
<%@ OutputCache Duration="60" VaryByParam="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>파일업로드</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload runat="server" ID="CtlUpload" /><br />
            <asp:Button ID="BtnUpload" Text="업로드" runat="server" OnClick="BtnUpload_Click" /><br />
            <asp:Label ID="LblResult" runat="server" />
            <div>
                <asp:Label ID="LblCache" runat="server" /><br />
                <asp:Substitution ID="SstMain" runat="server" MethodName="GetCurrentTime" />
            </div>
            <div>
                <asp:Localize ID="LblLocal" runat="server" Text="안녕하세요"></asp:Localize>
                <br />
                <asp:Localize ID="LblLocal2" runat="server"
                    Text="<hr /><b>안녕하세요</b>" Mode="Encode"></asp:Localize>
            </div>
        </div>
    </form>
</body>
</html>
