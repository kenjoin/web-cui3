<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundRestrictionOptions" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>

<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
<bairong:Message runat="server"></bairong:Message>
      <DIV class="column">
<div class="columntitle">访问限制选项</div>
        
                    <table width="95%" align="center" cellpadding="3" cellspacing="3">
                        <tr>
                            <td width="120" align="left">
                            <bairong:help HelpText="访问限制选项" Text="访问限制选项：" runat="server" ></bairong:help>
                          </td>
                            <td align="left">
                                <asp:RadioButtonList ID="RestrictionType" RepeatDirection="Vertical" runat="server"></asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                          <td colspan="2" align="center">
                                <asp:Button class="button" id="Submit" text="修 改" onclick="Submit_OnClick" runat="server" />
                          </td>
                        </tr>
        </table>
      </DIV>
    </form>
</body>
</HTML>
