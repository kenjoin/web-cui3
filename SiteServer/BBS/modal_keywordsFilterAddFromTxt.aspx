<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.Modal.KeywordsFilterAddFromTxt" %>

<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!--#include file="../inc/html_head.inc"-->
    <user:Custom Type="style" runat="server"/>
    <title>导入词库 </title>
    <meta http-equiv="content-type" content="text/html;charset=utf-8"/>
</head>
<body>
    <bairong:Message runat="server"/>
    <form id="myForm" runat="server">
    <table cellpadding="3" cellspacing="3" width="95%" align="center">
        <tr>
            <td align="left">
                上传文件：
            </td>
            <td align="left">
                <asp:FileUpload ID="fileTxt" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="left">
                选择分类：
            </td>
            <td align="left">
                <asp:DropDownList ID="ddlCategory" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button class="button" ID="Ok" Text="确 定" OnClick="Ok_OnClick" runat="server" />
                &nbsp;&nbsp;
                <asp:Button class="button" ID="Cancel" Text="取 消" runat="server" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
