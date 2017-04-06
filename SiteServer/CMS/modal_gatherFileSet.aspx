<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.Modal.GatherFileSet" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title id="MyTitle" runat="server"></title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="2" width="100%" align="center">
    <tr>
      <td align="left"><bairong:help HelpText="需要采集的网页地址" Text="采集网页地址：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" id="GatherUrl" runat="server"/>
        <asp:RequiredFieldValidator
							ControlToValidate="GatherUrl"
							ErrorMessage="*"
							Display="Dynamic"
							runat="server"/></td>
    </tr>
    <asp:PlaceHolder ID="PlaceHolder_File" runat="server">
      <tr>
        <td align="left"><bairong:help HelpText="采集到的文件地址" Text="采集到文件地址：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="50" id="FilePath" runat="server"/>
          <br>
          <bairong:NoTagText Text="（以“~/”开头代表系统根目录，以“@/”开头代表站点根目录）" runat="server" /></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="是否删除文件中JS脚本" Text="删除JS脚本：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList id="IsRemoveScripts" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Value="True">是</asp:ListItem>
            <asp:ListItem Value="False" Selected="true">否</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="下载采集网址的相关文件（图片、CSS等）" Text="下载相关文件：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList id="IsSaveRelatedFiles" AutoPostBack="true" OnSelectedIndexChanged="DropDownList_SelectedIndexChanged" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Value="True">是</asp:ListItem>
            <asp:ListItem Value="False" Selected="true">否</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <asp:PlaceHolder ID="PlaceHolder_File_Directory" runat="server">
        <tr>
          <td align="left"><bairong:help HelpText="Css样式文件保存的文件夹地址" Text="Css样式保存地址：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Text="@/css" Columns="25" MaxLength="200" id="StyleDirectoryPath" runat="server"/>
            <bairong:NoTagText Text="（以“~/”开头代表系统根目录，以“@/”开头代表站点根目录）" runat="server" /></td>
        </tr>
        <tr>
          <td align="left"><bairong:help HelpText="Js脚本文件保存的文件夹地址" Text="Js脚本保存地址：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Text="@/js" Columns="25" MaxLength="200" id="ScriptDirectoryPath" runat="server"/>
            <bairong:NoTagText Text="（以“~/”开头代表系统根目录，以“@/”开头代表站点根目录）" runat="server" /></td>
        </tr>
        <tr>
          <td align="left"><bairong:help HelpText="图片文件保存的文件夹地址" Text="图片保存地址：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Text="@/images" Columns="25" MaxLength="200" id="ImageDirectoryPath" runat="server"/>
            <bairong:NoTagText Text="（以“~/”开头代表系统根目录，以“@/”开头代表站点根目录）" runat="server" /></td>
        </tr>
      </asp:PlaceHolder>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="PlaceHolder_Content" runat="server">
      <tr>
        <td align="left"><bairong:help HelpText="选择栏目，采集到的内容将添加到此栏目中" Text="采集到栏目：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="NodeIDDropDownList" runat="server"></asp:DropDownList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="下载所采集内容的图片到服务器中" Text="下载内容图片：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList id="IsSaveImage" RepeatDirection="Horizontal"
								runat="server">
            <asp:ListItem Value="True">是</asp:ListItem>
            <asp:ListItem Value="False" Selected="true">否</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
    </asp:PlaceHolder>
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Ok" text="开始采集" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
