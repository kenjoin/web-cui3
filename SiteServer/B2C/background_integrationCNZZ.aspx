<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundIntegrationCNZZ" validateRequest="false" %>
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
    <div class="columntitle">CNZZ流量统计(WSS)设置</div>
    <table width="95%" align="center" cellpadding="2" cellspacing="2">
      <tr>
        <td align="left" width="160"><bairong:help HelpText="选择是否启用CNZZ流量统计" Text="是否启用CNZZ流量统计：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsIntegrationCNZZ" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="IsIntegrationCNZZ_SelectedIndexChanged"></asp:RadioButtonList></td>
      </tr>
      <asp:PlaceHolder ID="phIntegrationCNZZ" runat="server">
        <tr>
          <td align="left"><bairong:help HelpText="选择是否申请WSS统计" Text="申请WSS统计：" runat="server" ></bairong:help></td>
          <td align="left"><asp:RadioButtonList ID="IsIntegrationCNZZRegistered" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="IsIntegrationCNZZ_SelectedIndexChanged"></asp:RadioButtonList></td>
        </tr>
        <asp:PlaceHolder ID="phIntegrationCNZZRegistered" runat="server">
          <tr>
            <td align="left"><bairong:help HelpText="输入WSS统计站点ID" Text="WSS统计站点ID：" runat="server" ></bairong:help></td>
            <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="IntegrationCNZZSiteID" runat="server"/>
              <asp:RequiredFieldValidator
                        ControlToValidate="IntegrationCNZZSiteID"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/>
              <asp:RegularExpressionValidator
                        ControlToValidate="IntegrationCNZZSiteID"
                        ValidationExpression="\d+"
                        Display="Dynamic"
                        ErrorMessage="*"
                        runat="server"/></td>
          </tr>
          <tr>
            <td align="left"><bairong:help HelpText="输入WSS统计登录密码" Text="WSS统计登录密码：" runat="server" ></bairong:help></td>
            <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="IntegrationCNZZPassword" runat="server"/>
              <asp:RequiredFieldValidator
                        ControlToValidate="IntegrationCNZZPassword"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/>
              <asp:RegularExpressionValidator
                        ControlToValidate="IntegrationCNZZPassword"
                        ValidationExpression="\d+"
                        Display="Dynamic"
                        ErrorMessage="*"
                        runat="server"/></td>
          </tr>
          <tr>
            <td align="left"><bairong:help HelpText="WSS统计代码" Text="WSS统计代码：" runat="server" ></bairong:help></td>
            <td align="left"><asp:TextBox ID="IntegrationCNZZCode" runat="server" class="colorblur" onfocus="this.className='colorfocus';this.select();" onblur="this.className='colorblur';" Columns="55" MaxLength="50"></asp:TextBox>
              <br />
              把以上代码复制到你要统计的网页模板里即可 </td>
          </tr>
        </asp:PlaceHolder>
        <asp:PlaceHolder ID="phIntegrationCNZZNotRegistered" runat="server">
          <tr>
            <td align="left"><bairong:help HelpText="请输入需要注册的域名地址" Text="请输入需要注册的域名地址：" runat="server" ></bairong:help></td>
            <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="50" id="IntegrationCNZZSiteUrl" runat="server"/>
              <asp:RequiredFieldValidator
                        ControlToValidate="IntegrationCNZZSiteUrl"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
          </tr>
        </asp:PlaceHolder>
      </asp:PlaceHolder>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="确 定" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
