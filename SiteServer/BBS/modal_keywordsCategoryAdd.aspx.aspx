<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.Modal.KeywordsCategoryAdd" %>

<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!--#include file="../inc/html_head.inc"-->
    <user:Custom  Type="style" runat="server"/>
    <title>
        <asp:Literal ID="MyTitle" runat="server"></asp:Literal>
    </title>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
</head>
<body>
    <bairong:Message runat="server"/>
    <form id="myForm" runat="server">
    <table cellpadding="3" cellspacing="3" width="95%" align="center">
        <tr>
            <td align="left" width="20%">
                分类名称：
            </td>
            <td align="left">
                <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"
                    Width="220" ID="tbName" runat="server" />
                <asp:RequiredFieldValidator ID="valrName" runat="server" ErrorMessage="*" Style="color: Red"
                    ControlToValidate="tbName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left" width="20%">
                是否开启：
            </td>
            <td align="left">
            <asp:RadioButtonList ID="rblOpen" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Selected="True" Text="开启" Value="true"></asp:ListItem>
            <asp:ListItem Text="停用" Value="False"></asp:ListItem>
            </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button class="button" ID="Ok" Text="确 定" OnClick="Ok_OnClick" runat="server" />
                &nbsp;&nbsp;
                <asp:Button class="button" ID="Cancel" Text="取 消" runat="server" CausesValidation="False" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
