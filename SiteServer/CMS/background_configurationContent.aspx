<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundConfigurationContent" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
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
    <div class="columntitle">内容管理配置</div>
    <div class="tips">提示：如果修改了自动分页选项，需要将所有内容页重新生成</div>
    <table width="95%" align="center" cellpadding="5" cellspacing="5">
      <tr>
        <td align="left" width="200"><bairong:help HelpText="是否使用内容组" Text="是否使用内容组：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="IsGroupContent" runat="server"></asp:DropDownList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="是否使用标签" Text="是否使用标签：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="IsRelatedByTags" runat="server"></asp:DropDownList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="设置是否自动保存外部图片" Text="自动保存外部图片：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="IsSaveImageInTextEditor" runat="server"></asp:DropDownList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="设置内容是否自动分页" Text="内容是否自动分页：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="IsAutoPageInTextEditor" runat="server"></asp:DropDownList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="设置内容自动分页每页字数" Text="内容自动分页每页字数：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="AutoPageWordNum" runat="server"/>
          <asp:RequiredFieldValidator
                    ControlToValidate="AutoPageWordNum"
                    ErrorMessage="*"
                    Display="Dynamic"
                    runat="server"/></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="默认编辑器类型" Text="默认编辑器类型：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="TextEditorType" runat="server"></asp:DropDownList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="选择内容审核的机制，需要多级审核的请选择多级审核机制，否则选择默认审核机制" Text="内容审核机制：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList id="IsCheckContentUseLevel" AutoPostBack="true" OnSelectedIndexChanged="IsCheckContentUseLevel_OnSelectedIndexChanged" RepeatDirection="Horizontal" runat="server"> </asp:RadioButtonList></td>
      </tr>
      <tr id="CheckContentLevelRow" runat="server">
        <td align="left"><bairong:help HelpText="指此内容在添加后需要经多少次审核才能正式发布" Text="内容审核级别：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList id="CheckContentLevel" runat="server">
            <asp:ListItem Value="2" Text="二级" Selected="true"></asp:ListItem>
            <asp:ListItem Value="3" Text="三级"></asp:ListItem>
            <asp:ListItem Value="4" Text="四级"></asp:ListItem>
            <asp:ListItem Value="5" Text="五级"></asp:ListItem>
          </asp:DropDownList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="后台栏目列表显示评论链接" Text="后台栏目列表显示评论链接：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList id="IsChannelCommentable"
			RepeatDirection="Horizontal"
			runat="server">
            <asp:ListItem Text="是" Value="True" />
            <asp:ListItem Text="否" Value="False" Selected="True"/>
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="后台内容列表显示评论链接" Text="后台内容列表显示评论链接：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList id="IsContentCommentable"
			RepeatDirection="Horizontal"
			runat="server">
            <asp:ListItem Text="是" Value="True" Selected="True" />
            <asp:ListItem Value="False" Text="否"/>
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="设置图片内容模型预览图片尺寸" Text="图片内容模型预览图片尺寸：" runat="server" ></bairong:help></td>
        <td align="left"> 宽：
          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" Width="50" id="PhotoContentPreviewWidth" runat="server"/>
          <asp:RequiredFieldValidator
                    ControlToValidate="PhotoContentPreviewWidth"
                    ErrorMessage="*"
                    Display="Dynamic"
                    runat="server"/>
          (px)&nbsp;
          高：
          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" Width="50" id="PhotoContentPreviewHeight" runat="server"/>
          <asp:RequiredFieldValidator
                    ControlToValidate="PhotoContentPreviewHeight"
                    ErrorMessage="*"
                    Display="Dynamic"
                    runat="server"/>
          (px) </td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="保 存" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
