<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmInputValid.aspx.cs" Inherits="ValidationWebApp.FrmInputValid" %>
<%@ Register Src="~/Copyright.ascx" TagPrefix="uc1" TagName="Copyright" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>유효성검사</title>
    <%-- <script>
        function CheckLogin() {
            var varAge = parseInt(document.getElementById("txtAge").value);
            if (varAge < 1 || varAge >150) {
                alert("나이는 1~150 사이입니다.");
                document.getElementById("txtAge").focus();
                return false;
            }
            return true;
        }
    </script>--%>

</head>
<body>
    <form id="form1" runat="server" method="post" onsubmit="return Checklogin();">
        <div>
            <%--<input type="text" id="txtAge" name="textAge" value="0" />(1~150)<br />
            <input type="submit" value="체크" /><br />--%>

            <asp:TextBox ID="TxtAge" runat="server" />
            <asp:RangeValidator ID="ValAge" runat="server" ControlToValidate="TxtAge"
                ErrorMessage="나이는 1~150사이의 정수입니다." MinimumValue="1" MaximumValue="150" Type="Integer"
                Display="Dynamic" ForeColor="DarkBlue" SetFocusOnError="true" />
            <asp:RequiredFieldValidator ID="ValAge2" runat="server" ControlToValidate="TxtAge"
                ErrorMessage="나이를 입력하세요" ForeColor="Red" Display="Dynamic" /> (필수)<br />
            <asp:TextBox ID="TxtScore" runat="server" />
            <asp:RangeValidator ID="ValScore" runat="server" ControlToValidate="TxtScore"
                ErrorMessage="학점은 A~F입니다" MinimumValue="A" MaximumValue="F" Type="String"
                Display="Dynamic" SetFocusOnError="true" /><br />
            <asp:TextBox ID="TxtUserID" runat="server" />
            <asp:RequiredFieldValidator ID="ValUserId" runat="server" ControlToValidate="TxtUserId"
                ErrorMessage="아이디를 입력하세요" ForeColor="Red" Display="Dynamic" /> (필수)<br />
            <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"/>
             <asp:RequiredFieldValidator ID="ValPassword" runat="server" ControlToValidate="TxtPassword"
                ErrorMessage="암호를 입력하세요" ForeColor="Red" Display="Dynamic" /> (필수)<br />
            <asp:TextBox ID="TxtConfirmPassword" runat="server" TextMode="Password"/>
             <asp:RequiredFieldValidator ID="ValConfirmPassword" runat="server" ControlToValidate="TxtConfirmPassword"
                ErrorMessage="암호확인을 입력하세요" ForeColor="Red" Display="Dynamic" /> (필수)
            <asp:CompareValidator ID="ValComparePassword" runat="server" ControlToCompare="TxtPassword"
                ControlToValidate="TxtConfirmPassword" SetFocusOnError="true" ForeColor="DarkRed"
                ErrorMessage="암호가 일치하지 않습니다" Display="Dynamic" /><br />

            <asp:TextBox ID="TxtEmail" runat="server" />
            <asp:RegularExpressionValidator ID="ValEmail" runat="server" ControlToValidate="TxtEmail"
                ErrorMessage="이메일을 정확히 입력하세요" Display="Dynamic" ForeColor="Red"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" /><br />

            <asp:Button ID="BtnLogin" runat="server" OnClick="BtnLogin_Click" Text="회원가입" />
            <asp:ValidationSummary ID="ValSummary" runat="server" ShowMessageBox="true"
                ShowSummary="false" DisplayMode="BulletList" />
        </div>
    </form>
    <uc1:Copyright runat="server" id="Copyright" />
</body>
</html>
