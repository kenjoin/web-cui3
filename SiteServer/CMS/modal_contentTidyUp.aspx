<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.Modal.ConetntTidyUp"
    Trace="false" %>

<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!--#include file="../inc/html_head.inc"-->
    <user:Custom Type="style" runat="server" />
    <bairong:Code Type="JQuery" runat="server" />
    <title>根据添加日期(或内容ID)重新排序</title>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
</head>
<body>
    <form id="myForm" runat="server">
    <bairong:Message runat="server" />
    <table cellpadding="4" width="95%" align="center">
        <tr>
            <td align="center" class="tips" colspan="2">
                根据添加日期(或内容ID)重新排序(不可逆,请慎重)。
            </td>
        </tr>
        <tr>
            <td align="left" width="120">
                <bairong:Help HelpText="请选择排序字段" Text="排序字段：" runat="server">
                </bairong:Help>
            </td>
            <td align="left">
                <asp:RadioButtonList ID="TaxisByField" RepeatDirection="Horizontal" runat="server">
                    <asp:ListItem Selected="True" Text="内容ID" Value="ByID"></asp:ListItem>
                    <asp:ListItem Text="添加日期" Value="ByAddDate"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td align="left" width="120">
                <bairong:Help HelpText="请选择排序方向" Text="排序方向：" runat="server">
                </bairong:Help>
            </td>
            <td align="left">
                <asp:RadioButtonList ID="TaxisDirection" RepeatDirection="Horizontal" runat="server">
                    <asp:ListItem Selected="True" Text="正序" Value="Up"></asp:ListItem>
                    <asp:ListItem Text="倒序" Value="Down"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:Button class="button" ID="Ok" Text="确 定" OnClick="Ok_OnClick" runat="server" />
                &nbsp;&nbsp;
                <asp:Button class="button" ID="Cancel" Text="取 消" runat="server" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
