<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.SeoMetaAdd" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title id="MyTitle" runat="server"></title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body style="background-color:#FFFFFF">
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="3" width="95%" align="center">
    <tr align="left" style="<%=GetMessageStyle()%>">
      <td colspan="4"><asp:Label width="100%" id="Message" Style="TEXT-ALIGN:center; color:#FF0000" runat="server" /></td>
    </tr>
    <tr>
      <td width="0" align="left"><bairong:help HelpText="此页面元数据的名称" Text="名称：" runat="server" ></bairong:help></td>
      <td colspan="3" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="SeoMetaName" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="SeoMetaName" ErrorMessage="*" Display="Dynamic"
						runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="SeoMetaName"
						ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td width="0" align="left"><bairong:help HelpText="页面的标题" Text="页面标题：" runat="server" ></bairong:help></td>
      <td colspan="3" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Rows="3" Width="350" MaxLength="80" TextMode="MultiLine" id="PageTitle" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="PageTitle"
						ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        <=80</td>
    </tr>
    <tr>
      <td width="0" align="left"><bairong:help HelpText="为搜索引擎提供的关键字列表" Text="关键字列表：" runat="server" ></bairong:help></td>
      <td colspan="3" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Rows="3" Width="350" MaxLength="100" TextMode="MultiLine" id="Keywords" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="Keywords"
						ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        <=100 <br>
        注意：各关键词间用英文逗号“,”隔开。</td>
    </tr>
    <tr>
      <td width="0" align="left"><bairong:help HelpText="用来告诉搜索引擎网页的主要内容。" Text="页面描述：" runat="server" ></bairong:help></td>
      <td colspan="3" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="350" Rows="4" MaxLength="200" TextMode="MultiLine" id="Description" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="Description"
						ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        <=200</td>
    </tr>
    <tr>
      <td width="0" align="left"><bairong:help HelpText="标注页面的版权所有" Text="页面版权所有：" runat="server" ></bairong:help></td>
      <td width="0" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="255" id="Copyright" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="Copyright"
						ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      <td width="0" align="left"><bairong:help HelpText="标注网页的作者或制作组。" Text="页面作者：" runat="server" ></bairong:help></td>
      <td width="0" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="255" id="Author" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="Author"
						ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td width="0" align="left"><bairong:help HelpText="告诉搜索引擎网页内容什么时候失效。" Text="网页有效期：" runat="server" ></bairong:help></td>
      <td width="0" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="Expires" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="Expires"
						ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      <td width="0" align="left"><bairong:help HelpText="告诉来访者怎样联系网站管理人" Text="电子邮件：" runat="server" ></bairong:help></td>
      <td width="0" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="255" id="Email" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="Email"
						ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td width="0" align="left"><bairong:help HelpText="标注网页所使用的语言" Text="网页语言：" runat="server" ></bairong:help></td>
      <td width="0" align="left"><asp:DropDownList ID="Language" runat="server">
          <asp:ListItem Text="<未设置>" Value=""></asp:ListItem>
          <asp:ListItem Text="中文" Value="chinese, ZH"></asp:ListItem>
          <asp:ListItem Text="英文" Value="english, EN"></asp:ListItem>
        </asp:DropDownList></td>
      <td width="0" align="left"><bairong:help HelpText="标注页面所使用的编码" Text="页面编码：" runat="server" ></bairong:help></td>
      <td width="0" align="left"><asp:DropDownList ID="Charset" runat="server">
          <asp:ListItem Text="<未设置>" Value=""></asp:ListItem>
          <asp:ListItem Text="简体中文(GB2312)" Value="utf-8"></asp:ListItem>
          <asp:ListItem Text="繁体中文(Big5)" Value="Big5"></asp:ListItem>
          <asp:ListItem Text="Unicode(UTF-8)" Value="UTF-8"></asp:ListItem>
        </asp:DropDownList></td>
    </tr>
    <tr>
      <td width="0" align="left"><bairong:help HelpText="说明网页是面向全球发布，或是只针对地区性用户。" Text="网页发布范围：" runat="server" ></bairong:help></td>
      <td width="0" align="left"><asp:DropDownList ID="Distribution" runat="server">
          <asp:ListItem Text="<未设置>" Value=""></asp:ListItem>
          <asp:ListItem Text="全球用户" Value="Global"></asp:ListItem>
          <asp:ListItem Text="地区性用户" Value="Local"></asp:ListItem>
        </asp:DropDownList></td>
      <td width="0" align="left"><bairong:help HelpText="告诉搜索引擎你的网站适合哪些观众。" Text="网站级别：" runat="server" ></bairong:help></td>
      <td width="0" align="left"><asp:DropDownList ID="Rating" runat="server">
          <asp:ListItem Text="<未设置>" Value=""></asp:ListItem>
          <asp:ListItem Text="都适合" Value="General"></asp:ListItem>
          <asp:ListItem Text="适合儿童" Value="Safe For Kids"></asp:ListItem>
          <asp:ListItem Text="14岁以上" Value="14 Years"></asp:ListItem>
          <asp:ListItem Text="只限成年人" Value="Mature Restricted"></asp:ListItem>
        </asp:DropDownList></td>
    </tr>
    <tr>
      <td width="0" align="left"><bairong:help HelpText="用来告诉搜索爬虫机器人页面是否需要索引，哪些页面不需要索引。" Text="搜索引擎爬虫向导：" runat="server" ></bairong:help></td>
      <td width="0" align="left"><asp:DropDownList ID="Robots" runat="server">
          <asp:ListItem Text="<未设置>" Value=""></asp:ListItem>
          <asp:ListItem Text="被检索，链接可查询" Value="INDEX,FOLLOW"></asp:ListItem>
          <asp:ListItem Text="被检索，链接不可查询" Value="INDEX,NOFOLLOW"></asp:ListItem>
          <asp:ListItem Text="不被检索，链接可查询" Value="NOINDEX,FOLLOW"></asp:ListItem>
          <asp:ListItem Text="不被检索，链接不可查询" Value="NOINDEX,NOFOLLOW"></asp:ListItem>
        </asp:DropDownList></td>
      <td width="0" align="left"><bairong:help HelpText="你根据网站的更新周期，告诉搜索引擎什么时候再次来访" Text="重访时间：" runat="server" ></bairong:help></td>
      <td width="0" align="left"><asp:DropDownList ID="RevisitAfter" runat="server">
          <asp:ListItem Text="<未设置>" Value=""></asp:ListItem>
          <asp:ListItem Text="一天" Value="1 Day"></asp:ListItem>
          <asp:ListItem Text="一周" Value="7 Days"></asp:ListItem>
          <asp:ListItem Text="一个月" Value="31 Days"></asp:ListItem>
          <asp:ListItem Text="半年" Value="180 Days"></asp:ListItem>
          <asp:ListItem Text="一年" Value="365 Days"></asp:ListItem>
        </asp:DropDownList></td>
    </tr>
    <tr>
      <td colspan="4" align="center"><asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
