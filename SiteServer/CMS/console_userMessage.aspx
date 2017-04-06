<%@ Page Language="C#" ValidateRequest="false" Inherits="SiteServer.CMS.BackgroundPages.ConsoleUserMessage" %>

<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
    <!--#include file="../inc/html_head.inc"-->
    <user:Custom Type="style" runat="server" />
    <bairong:Code Type="JQuery" runat="server" />
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
</head>
<body>
    <form id="myForm" runat="server">
    <bairong:Message runat="server" />
    <div class="column">
        <div class="columntitle">
            用户站内信群发</div>
        <table width="95%" align="center" cellpadding="2" cellspacing="2">
            <tr>
                <td width="140" align="left">
                    <bairong:Help HelpText="设置站内信发送对象：" Text="信息发送对象：" runat="server" />
                </td>
                <td>
                    <asp:RadioButtonList ID="TypeList" RepeatDirection="Horizontal" OnSelectedIndexChanged="TypeList_SelectedIndexChanged"
                        AutoPostBack="true" runat="server">
                    </asp:RadioButtonList>
                </td>
            </tr>
            <asp:PlaceHolder ID="phGroup" runat="server">
                <tr>
                    <td width="140" align="left">
                        <bairong:Help HelpText="选择接收站内信的用户组" Text="接收信息的用户组：" runat="server" />
                    </td>
                    <td align="left">
                        <asp:CheckBoxList ID="GroupIDList" runat="server" RepeatColumns="4" RepeatDirection="Horizontal">
                        </asp:CheckBoxList>
                    </td>
                </tr>
            </asp:PlaceHolder>
            <asp:PlaceHolder ID="phUser" Visible="false" runat="server">
                <tr>
                    <td width="140" align="left">
                        <bairong:Help HelpText="设置接收站内信的用户名列表" Text="用户名列表：" runat="server" />
                    </td>
                    <td align="left">
                        <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"
                            Columns="60" Rows="4" TextMode="MultiLine" ID="UserNameList" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="UserNameList"
                            ErrorMessage="*" Display="Dynamic" runat="server" />
                        （要发送的用户名列表，以“,”分割）
                    </td>
                </tr>
            </asp:PlaceHolder>
            <tr>
                <td align="left">
                    <bairong:Help HelpText="站内信正文" Text="信息正文：" runat="server" />
                </td>
                <td align="left">
                    <bairong:BaiRongEditor ID="Body" runat="server">
                    </bairong:BaiRongEditor>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button class="button" ID="Submit" Text="发 送" OnClick="Submit_OnClick" runat="server" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
