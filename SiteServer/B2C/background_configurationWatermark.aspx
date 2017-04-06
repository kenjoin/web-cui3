<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundConfigurationWaterMark" %>
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
    <div class="columntitle">图片水印配置&nbsp;<a href="http://help.siteserver.cn/manage/215/787.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看图片水印配置帮助" align="absmiddle"></a></div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="160" align="left"><bairong:help HelpText="选择是否将水印加载在上传的图片中" Text="是否启用水印功能：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsWaterMark" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="IsWaterMark_SelectedIndexChanged"></asp:RadioButtonList></td>
      </tr>
      <tr id="WaterMarkPositionRow" runat="server">
        <td width="160" align="left"><bairong:help HelpText="请在此选择水印添加的位置(共 9 个位置可选)." Text="添加水印位置：" runat="server" ></bairong:help></td>
        <td align="left"><asp:literal id="WaterMarkPosition" runat="server"></asp:literal></td>
      </tr>
      <tr id="WaterMarkTransparencyRow" runat="server">
        <td width="160" align="left"><bairong:help HelpText="取值范围10%--100% (100%为不透明). " Text="水印透明度：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="WaterMarkTransparency" runat="server"></asp:DropDownList></td>
      </tr>
      <tr id="WaterMarkMinRow" runat="server">
        <td width="160" align="left"><bairong:help HelpText="需要添加水印的图片的最小尺寸. " Text="图片最小尺寸：" runat="server" ></bairong:help></td>
        <td align="left"> 宽：
          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="WaterMarkMinWidth" Columns="10" MaxLength="50" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ControlToValidate="WaterMarkMinWidth" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator ControlToValidate="WaterMarkMinWidth" ValidationExpression="\d+" Display="Dynamic" ErrorMessage="此项必须为数字" runat="server"/>
          （0代表不限制）
          高：
          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="WaterMarkMinHeight" Columns="10" MaxLength="50" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ControlToValidate="WaterMarkMinHeight" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator ControlToValidate="WaterMarkMinHeight" ValidationExpression="\d+" Display="Dynamic" ErrorMessage="此项必须为数字" runat="server"/>
          （0代表不限制） </td>
      </tr>
      <tr id="IsImageWaterMarkRow" runat="server">
        <td align="left"><bairong:help HelpText="选择使用的水印类型" Text="水印类型：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsImageWaterMark" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="IsWaterMark_SelectedIndexChanged"></asp:RadioButtonList></td>
      </tr>
      <tr id="WaterMarkFormatStringRow" runat="server">
        <td align="left"><bairong:help HelpText="文字型水印的内容" Text="文字型水印的内容：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="WaterMarkFormatString" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="WaterMarkFormatString" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="WaterMarkFormatString"
                                    ValidationExpression="[^']+" ErrorMessage="此项不能为空" Display="Dynamic" />
          <br>
          可以使用替换变量: {1}表示当前日期 {2}表示当前时间 例如:&quot;上传于{1} {2}&quot; </td>
      </tr>
      <tr id="WaterMarkFontNameRow" runat="server">
        <td align="left"><bairong:help HelpText="文字水印的字体" Text="文字水印的字体：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="WaterMarkFontName" runat="server"></asp:DropDownList></td>
      </tr>
      <tr id="WaterMarkFontSizeRow" runat="server">
        <td align="left"><bairong:help HelpText="文字水印的大小:" Text="文字水印的大小：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="WaterMarkFontSize" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="WaterMarkFontSize" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
                                    ControlToValidate="WaterMarkFontSize"
                                    ValidationExpression="\d+"
                                    Display="Dynamic"
                                    ErrorMessage="此项必须为数字"
                                    runat="server"/></td>
      </tr>
      <tr id="WaterMarkImagePathRow" runat="server">
        <td align="left"><bairong:help HelpText="图片型水印文件" Text="图片型水印文件：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="200" id="WaterMarkImagePath" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="WaterMarkImagePath" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="WaterMarkImagePath"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="保 存" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
