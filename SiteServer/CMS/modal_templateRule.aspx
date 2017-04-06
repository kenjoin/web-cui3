<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.Modal.TemplateRule" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>模版方案设置</title>
<script language="javascript" src="../Inc/auxiliary.js"></script>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <div class="tips">在此设置模版方案的默认匹配模版及默认页面命名规则，页面命名规则不能与其他模版方案相同。</div>
  <table width="100%" align="center" cellspacing="2" cellpadding="2">
    <tr>
      <td align="left"><bairong:help HelpText="模版方案名称" Text="模版方案名称：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="40" MaxLength="200" id="RuleName" runat="server"/>
        <asp:RequiredFieldValidator
                    ControlToValidate="RuleName"
                    ErrorMessage="*"
                    Display="Dynamic"
                    runat="server"/></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="设置此模版方案是否生成栏目页" Text="是否生成栏目页：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsCreateChannels" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="IsCreate_SelectedIndexChanged" runat="server"></asp:RadioButtonList></td>
    </tr>
    <asp:PlaceHolder ID="phChannels" runat="server">
      <tr>
        <td align="left"><bairong:help HelpText="设置此模版方案的首页模版" Text="首页模版：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="IndexTemplateID" runat="server"></asp:DropDownList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="设置此模版方案的默认栏目模版" Text="默认栏目模版：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="ChannelTemplateID" DataTextField="TemplateName" DataValueField="TemplateID" runat="server"></asp:DropDownList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="系统生成文件时采取的栏目页文件名规则" Text="栏目页面命名规则：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" MaxLength="200" id="ChannelFilePathRule" runat="server"/>
          <asp:RequiredFieldValidator
                    ControlToValidate="ChannelFilePathRule"
                    ErrorMessage="*"
                    Display="Dynamic"
                    runat="server"/>
          &nbsp;
          <asp:HyperLink ID="CreateChannelRule" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">构造</asp:HyperLink></td>
      </tr>
    </asp:PlaceHolder>
    <tr>
      <td align="left"><bairong:help HelpText="设置此模版方案是否生成内容页" Text="是否生成内容页：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList ID="IsCreateContents" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="IsCreate_SelectedIndexChanged" runat="server"></asp:RadioButtonList></td>
    </tr>
    <asp:PlaceHolder ID="phContents" runat="server">
      <tr>
        <td align="left"><bairong:help HelpText="设置此模版方案的默认内容模版" Text="默认内容模版：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="ContentTemplateID" DataTextField="TemplateName" DataValueField="TemplateID" runat="server"></asp:DropDownList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="系统生成文件时采取的内容页文件名规则" Text="内容页面命名规则：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" MaxLength="200" id="ContentFilePathRule" runat="server"/>
          <asp:RequiredFieldValidator
                    ControlToValidate="ContentFilePathRule"
                    ErrorMessage="*"
                    Display="Dynamic"
                    runat="server"/>
          &nbsp;
          <asp:HyperLink ID="CreateContentRule" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">构造</asp:HyperLink></td>
      </tr>
    </asp:PlaceHolder>
    <tr>
      <td align="center" colspan="2"><asp:Button class="button" id="Ok" text="确 定" onclick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
