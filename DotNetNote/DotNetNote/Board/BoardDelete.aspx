<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BoardDelete.aspx.cs" Inherits="DotNetNote.Board.BoardDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        function ConfirmDelete() {
            var flag = false;
            if (window.confirm("삭제하시겠습니까?")) {
                flag = true; // 삭제
            } else {
                flage = false; // 노삭제
            }

            return flag;
        }
    </script>

	<h3 class="text-center">게시판</h3>
	<span>글 삭제</span>
	<hr />

	<div style="text-align: center;">
        <asp:Label ID="lblId" runat="server" ForeColor="Red"></asp:Label>
        번 글을 지우시겠습니까?
    <br />
        비밀번호 :
        <asp:TextBox ID="txtPassword" runat="server" Width="120px" CssClass="form-control" Style="display: inline-block;" TextMode="Password"></asp:TextBox>
        <asp:Button ID="btnDelete" runat="server" Width="100px" CssClass="btn btn-danger" Style="display: inline-block;" 
            Text="지우기" OnClick="btnDelete_Click" ></asp:Button>
        <asp:HyperLink ID="lnkCancel" runat="server" CssClass="btn btn-default">취소</asp:HyperLink>
        <br />
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red" />
        <br />
    </div>
</asp:Content>
