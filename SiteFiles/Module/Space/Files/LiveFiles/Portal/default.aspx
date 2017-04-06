<%@ Page Language="C#" Inherits="SiteServer.Space.Space.Portal.PortalDefault" %>

<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>我的个人空间</title>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <meta content="" ie="7" http-equiv="X-UA-Compatible">
    <bairong:Style runat="server" Visible="true" Href="~/livefiles/styles/core/style.v.080223.css" />
    <bairong:Style runat="server" Visible="true" Href="~/livefiles/styles/simple/default/style.css" />
    <bairong:Style runat="server" Visible="true" Href="~/livefiles/styles/core/style.css" />
    <bairong:Style runat="server" Visible="true" Href="~/livefiles/styles/core/drag.css" />
    <bairong:Style runat="server" Visible="true" Href="~/livefiles/styles/core/portal.css" />
</head>
<body>
    <form runat="server">
    <div id="toolBar" class="toolBar clearfix">
        <div id="innerToolBar" class="innerToolBar clearfix">
            <div id="tb_logo">
                <a href="/" target="_blank">
                    <img src="../livefiles/images/logo.jpg"></a>
            </div>
            <div id="tb_sys">
                <a onclick="AddFavorite();" href="javascript:undefined">收藏</a> | <a onclick="SetHomepage();"
                    href="javascript:undefined">设为首页</a>
                <script type="text/javascript">
                    function AddFavorite() {
                        if (document.all) {
                            window.external.addFavorite(window.location.href, document.title);
                        }
                        else if (window.sidebar) {
                            window.sidebar.addPanel(document.title, window.location.href, "");
                        }
                    }
                    function SetHomepage() {
                        if (document.all) {
                            document.body.style.behavior = 'url(#default#homepage)';
                            document.body.setHomePage(window.location.href);
                        }
                        else if (window.sidebar) {
                            if (window.netscape) {
                                try {
                                    netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
                                }
                                catch (e) {
                                    alert("该操作被浏览器拒绝，如果想启用该功能，请在地址栏内输入 about:config,然后将项 signed.applets.codebase_principal_support 值该为true");
                                }
                            }
                            var prefs = Components.classes['@mozilla.org/preferences-service;1'].getService(Components.interfaces.nsIPrefBranch);
                            prefs.setCharPref('browser.startup.homepage', window.location.href);
                        }
                    }
                </script>
            </div>
        </div>
    </div>
    <div id="toolbarPadding">
    </div>
    <div id="wrapper">
        <div id="innerWrapper">
            <div id="header">
                <div id="innerHeader">
                </div>
            </div>
            <table id="modContainerTable" cellspacing="0" cellpadding="0">
                <tbody>
                    <tr>
                        <td style="position: relative; width: 25%" id="ctl00_ctl00_TemplateHolder_ContentHolder_ColumnOne"
                            class="col" _madepositioned="true">
                            <div style="position: relative" id="module_Photo" class="mod" _madepositioned="true">
                                <div class="modFrame">
                                    <table class="modTable" cellspacing="0" cellpadding="0">
                                        <thead>
                                            <tr class="moduleHandler">
                                                <td class="mheader lt">
                                                </td>
                                                <td class="mheader t">
                                                    <div class="modHeader clearfix">
                                                        <div class="modTitle">
                                                            用户登录</div>
                                                    </div>
                                                </td>
                                                <td class="mheader rt">
                                                </td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:PlaceHolder ID="phError" Visible="false" runat="server">
                                                <tr>
                                                    <td class="mneck l">
                                                    </td>
                                                    <td align="center" class="mneck ec">
                                                        <div style="padding-top: 10px; color: red;">
                                                            <asp:Literal ID="ltlErrorMessage" runat="server"></asp:Literal>
                                                        </div>
                                                    </td>
                                                    <td class="mneck r">
                                                    </td>
                                                </tr>
                                            </asp:PlaceHolder>
                                            <tr>
                                                <td class="mbody l">
                                                </td>
                                                <td class="mbody c">
                                                    <div class="modCon">
                                                        <table width="100%" border="0" cellspacing="2" cellpadding="2">
                                                            <tr>
                                                                <td width="60" height="28" style="font-size: 14px;">
                                                                    帐户：
                                                                </td>
                                                                <td height="28">
                                                                    <asp:TextBox TabIndex="3" class="text" ID="UserName" runat="server" />
                                                                    <asp:RequiredFieldValidator ControlToValidate="UserName" ErrorMessage="*" Display="Dynamic"
                                                                        runat="server" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="28" style="font-size: 14px;">
                                                                    密码：
                                                                </td>
                                                                <td height="28">
                                                                    <asp:TextBox TabIndex="3" class="text" TextMode="Password" ID="Password" runat="server" />
                                                                    <asp:RequiredFieldValidator ControlToValidate="Password" ErrorMessage="*" Display="Dynamic"
                                                                        runat="server" />
                                                                </td>
                                                            </tr>
                                                            <asp:PlaceHolder ID="phValidateCode" runat="server">
                                                                <tr>
                                                                    <td height="28" style="font-size: 14px;">
                                                                        验证码：
                                                                    </td>
                                                                    <td height="28">
                                                                        <asp:TextBox TabIndex="3" Style="ime-mode: disabled;" autocomplete="off" MaxLength="4"
                                                                            class="text" ID="ValidateCode" runat="server" />
                                                                        <asp:RequiredFieldValidator ControlToValidate="ValidateCode" ErrorMessage="*" Display="Dynamic"
                                                                            runat="server" />
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td height="28" colspan="2" align="center">
                                                                        <span style="color: #868686;">按下图字符填写，不区分大小写 </span>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td height="28">
                                                                        &nbsp;
                                                                    </td>
                                                                    <td height="28">
                                                                        <asp:Literal ID="ValidateCodeImage" runat="server"></asp:Literal>
                                                                    </td>
                                                                </tr>
                                                            </asp:PlaceHolder>
                                                            <tr>
                                                                <td height="28">
                                                                    &nbsp;
                                                                </td>
                                                                <td height="28">
                                                                    <span style="height: 25px; padding-top: 8px; *padding-top: 0;">
                                                                        <asp:CheckBox ID="RememberMe" runat="server" Text="记住登录状态"></asp:CheckBox>
                                                                    </span>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="28" colspan="2" align="center">
                                                                    <asp:Button class="btn1" Style="font: 14px Verdana; padding-top: 2px!important; padding-top: 5px;"
                                                                        OnClick="Submit_OnClick" Text="登 录" TabIndex="4" runat="server" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="28" colspan="2">
                                                                    <div style="text-align: center; margin: 10px 0 0 0; background: url(images/login/dottedline.gif) repeat-x top;">
                                                                        <span>
                                                                            <asp:HyperLink ID="hyForget" runat="server" Text="忘记密码？"></asp:HyperLink></span>&nbsp;&nbsp;<em><asp:HyperLink
                                                                                ID="hyRegister" runat="server" Text="立即注册"></asp:HyperLink></em></div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </td>
                                                <td class="mbody r">
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td class="mfooter lb">
                                                </td>
                                                <td class="mfooter b">
                                                </td>
                                                <td class="mfooter rb">
                                                </td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </td>
                        <td style="position: relative; width: 75%" id="ctl00_ctl00_TemplateHolder_ContentHolder_ColumnTwo"
                            class="col" _madepositioned="true">
                            <div style="position: relative" id="module_UserInfo" class="mod" _madepositioned="true">
                                <div class="modFrame">
                                    <table class="modTable" cellspacing="0" cellpadding="0">
                                        <thead>
                                            <tr class="moduleHandler">
                                                <td class="mheader lt">
                                                </td>
                                                <td class="mheader t">
                                                    <div class="modHeader clearfix">
                                                        <div class="modTitle">
                                                            空间即时动态</div>
                                                        <div style="float: right">
                                                            <a href="redirect.aspx">
                                                                <img src="../SiteFiles/bairong/Icons/lightbox.gif" align="absmiddle" />&nbsp;随便看看</a></div>
                                                    </div>
                                                </td>
                                                <td class="mheader rt">
                                                </td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="mbody l">
                                                </td>
                                                <td class="mbody c">
                                                    <space:Activities ID="spaceActivities" runat="server">
                                                    </space:Activities>
                                                </td>
                                                <td class="mbody r">
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td class="mfooter lb">
                                                </td>
                                                <td class="mfooter b">
                                                </td>
                                                <td class="mfooter rb">
                                                </td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
    </form>
    <div id="footer">
        <div id="innerFooter">
            <div>
                北京百容千域软件技术开发有限公司 版权所有
            </div>
            <div id="poweredby">
            </div>
        </div>
    </div>
</body>
</html>
