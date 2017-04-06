<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundConfigurationPoweredBy" validateRequest="false" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">Powered by 显示设置</div>
    <div class="tips" style="line-height:26px">
      <asp:Literal ID="ltlPoweredBy" runat="server"></asp:Literal>
    </div>
    <table width="95%" align="center" cellpadding="4" cellspacing="4">
      <tr>
        <td width="200" align="left"><bairong:help HelpText="设置 Powered By 显示方式" Text="Powered By 显示方式：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="PoweredByType" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="PoweredByType_SelectedIndexChanged"></asp:RadioButtonList></td>
      </tr>
      <asp:PlaceHolder ID="phText" runat="server">
        <tr>
          <td align="left"><bairong:help HelpText="设置文字支持信息" Text="文字支持信息：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox TextMode="MultiLine" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" Rows="5" id="PoweredByText" runat="server"/>
            <asp:RequiredFieldValidator
                        ControlToValidate="PoweredByText"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/>
            <br />
            （文字支持信息中必须包含http://www.siteserver.cn及SiteServer CMS字符串） </td>
        </tr>
      </asp:PlaceHolder>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="确 定" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
