<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmPage.aspx.cs" Inherits="TemplateWebApp.FrmPage" %>

<%@ Register Src="~/Navigator.ascx" TagPrefix="nav" TagName="Navigator" %>
<%@ Register Src="~/Copyright.ascx" TagPrefix="cpy" TagName="Copyright" %>
<%@ Register Src="~/Categories.ascx" TagPrefix="cat" TagName="Categories" %>
<%@ Register Src="~/Catalog.ascx" TagPrefix="ctl" TagName="Catalog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>웹사이트 뼈대</title>
    <link rel="stylesheet" type="text/css" href="Content/bootstrap.css" />
    <style>
    </style>
        
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-12" style="background-color: aquamarine">
                    <nav:Navigator runat="server" ID="UcNavigator" />
                </div>
            </div>
            <div class="row" style="height: 200px;">
                <div class="col-md-4" style="background-color: antiquewhite">
                    <cat:Categories runat="server"  />
                </div>
                <div class="col-md-8" style="background-color: burlywood">
                    <ctl:Catalog runat="server" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-12" style="background-color: cadetblue">
                    <cpy:Copyright runat="server" ID="UcCopyright"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
