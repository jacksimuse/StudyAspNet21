<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmSqlDataSource.aspx.cs" Inherits="DataControlWebApp.FrmSqlDataSource" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>데이터소스컨트롤</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="CboMemoName" runat="server" DataSourceID="SdsMemoName" DataTextField="Name" DataValueField="Num" ></asp:DropDownList>
            <asp:SqlDataSource ID="SdsMemoName" runat="server" ConnectionString="<%$ ConnectionStrings:ConnString %>" SelectCommand="SELECT [Num], [Name] FROM [Memos]"></asp:SqlDataSource>
        	<br />
			<asp:Chart ID="Chart1" runat="server">
				<series>
					<asp:Series Name="Series1">
						
					</asp:Series>
				</series>
				<chartareas>
					<asp:ChartArea Name="ChartArea1">
					</asp:ChartArea>
				</chartareas>
			</asp:Chart>
        </div>
    </form>
</body>
</html>
