<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BoardList.aspx.cs" Inherits="DotNetNote.Board.BoardList" %>

<%@ Register Src="~/Controls/PagingControl.ascx" TagPrefix="uc1" TagName="PagingControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<h3 class="text-center">게시판</h3>
	<span>글 목록 - 완성형 게시판</span>
	<hr />

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<asp:Literal ID="LblTotalRecord" runat="server"></asp:Literal><br />
				<uc1:searchcontrol runat="server" id="SearchControl" />
				<asp:GridView ID="GrvNotes" runat="server" AutoGenerateColumns="false"
					DataKeyNames="Id" CssClass="table table-bordered table-hover table-striped table-responsive">
					<Columns>
						<asp:TemplateField HeaderText="번호"
                            HeaderStyle-Width="50px"
                            ItemStyle-HorizontalAlign="Right">
                            <ItemTemplate>
                                <%# Eval("Id") %>
                            </ItemTemplate>
                        </asp:TemplateField>
						<asp:TemplateField HeaderText="제목"
							HeaderStyle-Width="350px"
							ItemStyle-HorizontalAlign="Left">
							<ItemTemplate>
                                <%# Helpers.BoardLibrary.FuncStep(Eval("Step")) %>
                                <asp:HyperLink ID="LnkTitle" runat="server"
                                    NavigateUrl='<%# "BoardView.aspx?Id=" + Eval("Id") %>'>
                                    <%# Eval("Title") %>
                                </asp:HyperLink>
                                <%# Helpers.BoardLibrary.FuncNew(Eval("PostDate"))%>
                            </ItemTemplate>
                        </asp:TemplateField>
						<asp:TemplateField HeaderText="파일"
                            HeaderStyle-Width="70px"
                            ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
								<%--<%# Eval("FileName") %>--%>
                                <%# Helpers.BoardLibrary.FuncFileDownSingle(
                                    Convert.ToInt32(Eval("Id")), 
                                    Eval("FileName").ToString(), 
                                    Eval("FileSize").ToString()) %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Name" HeaderText="작성자"
                            HeaderStyle-Width="60px"
                            ItemStyle-HorizontalAlign="Center"></asp:BoundField>
                        <asp:TemplateField HeaderText="작성일"
                            ItemStyle-Width="90px"
                            ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%# Helpers.BoardLibrary.FuncShowTime(
                                    Eval("PostDate")) %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="ReadCount" HeaderText="조회수"
                            ItemStyle-HorizontalAlign="Right"
                            HeaderStyle-Width="60px"></asp:BoundField>
					</Columns>
				</asp:GridView>
			</div>
		</div>
	</div>

        <div class="container">
        <div class="row">
            <div class="col">
                <div class="text-center">
                    <uc1:PagingControl runat="server" id="PagingControl" />
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col">
                <div class="text-right">
                    <a href="BoardWrite.aspx?Mode=Write" class="btn btn-primary">글쓰기</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
