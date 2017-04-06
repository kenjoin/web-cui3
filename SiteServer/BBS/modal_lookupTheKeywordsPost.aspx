<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.Modal.LookupTheKeywordsPost" %>

<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!--#include file="../inc/html_head.inc"-->
    <user:Custom Type="style" runat="server" />
    <title>
        <asp:Literal ID="MyTitle" runat="server"></asp:Literal>
    </title>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
</head>
<body>
    <bairong:Message runat="server" />
    <form id="myForm" runat="server">
    <table cellpadding="3" cellspacing="3" width="95%" align="center">
        <tr>
            <td align="left">
                <asp:Literal ID="ltlThread" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td align="left">
                <asp:Literal ID="ltlContent" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td align="left">
                <asp:Button class="button" ID="Cancel" Text="取 消" runat="server" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
