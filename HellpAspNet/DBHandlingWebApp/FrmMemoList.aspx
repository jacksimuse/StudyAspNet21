<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmMemoList.aspx.cs" Inherits="DBHandlingWebApp.FrmMemoList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>메모리스트</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>메모리스트</h3>
            <asp:DropDownList ID="CboSearch" runat="server">
                <asp:ListItem Value="Name" Selected="True">이름</asp:ListItem>
                <asp:ListItem Value="Title">메모</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="TxtSearch" runat="server" />
            <asp:Button ID="BtnSearch" runat="server" Text="검색" OnClick="BtnSearch_Click" />
            <asp:GridView ID="GrvMemoList" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField HeaderText="번호" DataField="Num" />
                    <asp:BoundField HeaderText="작성자" DataField="Name" />
                    <asp:BoundField HeaderText="" DataField="Email" />
                    <asp:HyperLinkField HeaderText="메모" DataTextField="Title" 
                        DataNavigateUrlFormatString="FrmMemoView.aspx?Num={0}" DataNavigateUrlFields="Num" />
                    <asp:TemplateField HeaderText="작성일">
                        <ItemTemplate>
                            <%# Eval("PostDate", "{0:d}") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="접속IP" DataField="PostIP" />
                </Columns>
            </asp:GridView>

            <hr />
            <asp:HyperLink ID="LnkMemoWrite" runat="server" NavigateUrl="~/FrmMemoWrite.aspx">글쓰기</asp:HyperLink>
        </div>
    </form>
</body>
</html>
