<%@ Page Language="C#" AutoEventWireup="true" Inherits="SiteServer.BBS.BackgroundPages.BackgroundTranslateFromBBSMAX" %>

<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--#include file="../inc/html_head.inc"-->
    <user:Custom Type="style" runat="server"/>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <title>论坛转换向导</title>
</head>
<body>
    <form runat="server">
    <bairong:Message runat="server"/>
    <div class="column">
        <div class="columntitle">
            论坛转换向导
        </div>
        <table cellpadding="3" width="95%" height="380" align="center">
            <tr>
                <td colspan="2" height="320" align="left" valign="top">
                    <div style="padding-right: 10px; padding-left: 10px; padding-bottom: 10px; padding-top: 30px">
                        <asp:PlaceHolder ID="phConfig" runat="server" Visible="true">
                            <div class="mainTitle">
                                <strong>设置论坛参数</strong></div>
                            <br>
                            <div>
                                在此设置原论坛的数据库参数。</div>
                            <div style="padding-left: 10px; padding-top: 10px">
                                <br>
                                <table width="95%" align="center" cellpadding="3" cellspacing="3">
                                    <tr>
                                        <td width="160" align="left">
                                            数据库地址：
                                        </td>
                                        <td align="left">
                                            <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"
                                                Columns="35" MaxLength="50" ID="tbServer" Text="(local)" runat="server" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="tbServer"
                                                ErrorMessage="*" Display="Dynamic" runat="server" />
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbServer"
                                                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="160" align="left">
                                            数据库用户名：
                                        </td>
                                        <td align="left">
                                            <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"
                                                Columns="35" MaxLength="50" ID="tbUserName" Text="sa" runat="server" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="tbUserName"
                                                ErrorMessage="*" Display="Dynamic" runat="server" />
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbUserName"
                                                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="160" align="left">
                                            数据库密码：
                                        </td>
                                        <td align="left">
                                            <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"
                                                Columns="35" MaxLength="50" ID="tbPassword" Text="" runat="server" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="tbPassword"
                                                ErrorMessage="*" Display="Dynamic" runat="server" />
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tbPassword"
                                                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="160" align="left">
                                            数据库名：
                                        </td>
                                        <td align="left">
                                            <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"
                                                Columns="35" MaxLength="50" ID="tbDatabase" Text="" runat="server" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="tbDatabase"
                                                ErrorMessage="*" Display="Dynamic" runat="server" />
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="tbDatabase"
                                                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="160" align="left">
                                            表前缀：
                                        </td>
                                        <td align="left">
                                            <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"
                                                Columns="35" MaxLength="50" ID="tbPrefix" Text="bx_" runat="server" />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="tbPrefix"
                                                ErrorMessage="*" Display="Dynamic" runat="server" />
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="tbPrefix"
                                                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            是否导入用户数据：
                                        </td>
                                        <td align="left">
                                            <asp:CheckBox ID="cbIsImportUsers" runat="server" Checked="true" Text="导入"></asp:CheckBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            是否导入用户头像：
                                        </td>
                                        <td align="left">
                                            <asp:CheckBox ID="cbIsImportAvatars" runat="server" Checked="true" Text="导入"></asp:CheckBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            是否导入论坛分类：
                                        </td>
                                        <td align="left">
                                            <asp:CheckBox ID="cbIsImportForums" runat="server" Checked="true" Text="导入"></asp:CheckBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            是否导入论坛帖子及回复：
                                        </td>
                                        <td align="left">
                                            <asp:CheckBox ID="cbIsImportPosts" runat="server" Checked="true" Text="导入"></asp:CheckBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            是否导入论坛帖子附件：
                                        </td>
                                        <td align="left">
                                            <asp:CheckBox ID="cbIsImportAttachments" runat="server" Checked="true" Text="导入">
                                            </asp:CheckBox>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </asp:PlaceHolder>
                        <asp:PlaceHolder ID="phError" runat="server" Visible="false"><span class="mainTitle">
                        </span><strong>发生错误</strong>
                            <br>
                            <br>
                            <div>
                                执行向导过程中出错
                            </div>
                            <br>
                            <div>
                                <b><u>错误信息</u></b>:
                                <asp:Label ID="ErrorLabel" runat="server"></asp:Label>
                            </div>
                        </asp:PlaceHolder>
                        <asp:PlaceHolder ID="phSuccess" runat="server" Visible="false"><span class="mainTitle">
                        </span><strong>执行成功</strong>
                            <br>
                            <br>
                            <div>
                                向导执行成功
                            </div>
                        </asp:PlaceHolder>
                    </div>
                </td>
            </tr>
            <tr style="background-position: center 50%; background-image: url(../pic/line.gif);
                background-repeat: repeat-x">
                <td width="30%">
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table cellpadding="0" cellspacing="0" width="100%" border="0" align="center">
                        <tr>
                            <td align="right">
                                <span style="padding-right: 30"><span style="padding-right: 30"></span><span style="padding-right: 30">
                                </span>
                                    <asp:Button class="button" ID="Previous" OnClick="PreviousPanel" CausesValidation="false"
                                        runat="server" Text="< 上一步"></asp:Button>
                                    &nbsp;
                                    <asp:Button class="button" ID="Next" OnClick="NextPanel" runat="server" Text="下一步 >">
                                    </asp:Button>
                                    <span style="padding-right: 30"></span></span>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
