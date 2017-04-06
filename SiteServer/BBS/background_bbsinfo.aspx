<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundBBSInfo" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="MyForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
  <div class="columntitle">论坛信息</div> <br> 
    <table width="95%" align="center" cellpadding="3" cellspacing="3"> 
    <tr>
        <td width="170" align="left"><bairong:help HelpText="显示在浏览器窗口标题等位置" Text="论坛名称：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="40" id="txtBBSName" runat="server" />  
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtBBSName"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        </td>
      </tr>
    <tr>
        <td width="170" align="left"><bairong:help HelpText="显示在页面底部的联系方式处" Text="网站名称：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="40" MaxLength="200" id="txtSiteName" runat="server" />  
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtSiteName"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        </td>
      </tr>
      <tr>
        <td width="170" align="left"><bairong:help HelpText="网站URL" Text="网站URL：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="40" MaxLength="200" id="txtSiteUrl" runat="server" /> 
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtSiteUrl"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        </td>
      </tr>  
      <tr>
        <td width="170" align="left"><bairong:help HelpText="管理员邮箱" Text="管理员邮箱：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="40" MaxLength="200" id="txtAdminEmail" runat="server" />
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtAdminEmail"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        </td>
      </tr>
      <tr>
        <td width="170" align="left"><bairong:help HelpText="网站第三方统计代码" Text="网站第三方统计代码：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" TextMode="MultiLine" Columns="60" Rows="5" MaxLength="1000" id="txtCountCode" runat="server" />     <asp:RegularExpressionValidator runat="server" ControlToValidate="txtCountCode"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        </td>
      </tr>
      
       <tr>
        <td width="170" align="left"><bairong:help HelpText="是否开启日志功能" Text="是否开启日志功能：" runat="server" ></bairong:help></td>
        <td align="left" width="900"><asp:RadioButtonList ID="IsLogBBS" AutoPostBack="false"  RepeatDirection="Horizontal" runat="server">
        	<asp:ListItem Text="开启" Value="True" Selected="true"></asp:ListItem>
            <asp:ListItem Text="不开启" Value="False"></asp:ListItem>
        </asp:RadioButtonList></td>
      </tr>
       <tr>
        <td width="170" align="left"><bairong:help HelpText="暂时将论坛关闭，其他人无法访问，但不影响管理员访问" Text="是否关闭论坛：" runat="server" ></bairong:help></td>
        <td align="left" width="900"><asp:RadioButtonList ID="IsCloseBBS" AutoPostBack="true" OnSelectedIndexChanged="IsCloseBBS_SelectedIndexChanged" RepeatDirection="Horizontal" runat="server">
        	<asp:ListItem Text="关闭" Value="True" Selected="true"></asp:ListItem>
            <asp:ListItem Text="不关闭" Value="False"></asp:ListItem>
        </asp:RadioButtonList></td>
      </tr>
      <asp:PlaceHolder ID="phCheck" runat="server">
      <tr>
        <td width="170" align="left"><bairong:help HelpText="站点关闭时出现的提示信" Text="关闭站点的原因：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"  TextMode="MultiLine" Columns="60" Rows="5" MaxLength="500" id="txtCloseBBSReason" runat="server" />  
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtCloseBBSReason"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        </td>
      </tr>
      </asp:PlaceHolder>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="修 改" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</HTML>
