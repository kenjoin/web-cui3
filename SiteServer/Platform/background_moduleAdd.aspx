<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundModuleAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<script language="javascript" src="../Inc/auxiliary.js"></script>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">
      <asp:Literal id="literalTitle" runat="server" />
      产品</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="184" align="left"><bairong:help HelpText="产品文件夹" Text="产品文件夹：" runat="server" ></bairong:help></td>
        <td width="1042" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="50" id="ModuleDir" runat="server"/>
          <asp:RequiredFieldValidator
									ControlToValidate="ModuleDir"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/></td>
      </tr>
      <tr>
        <td align="left" colspan="2"><div class="tips">在此设置此产品的信息。<br>
            除此之外，也可以编辑 SiteFiles/Module/<%=GetModuleDir()%>/Configuration.config 修改此产品信息。</div></td>
      </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="产品名称" Text="产品名称：" runat="server" ></bairong:help></td>
        <td width="1042" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="50" id="ModuleName" runat="server"/>
          <asp:RequiredFieldValidator
									ControlToValidate="ModuleName"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/></td>
      </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="产品全称" Text="产品全称：" runat="server" ></bairong:help></td>
        <td width="1042" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="50" id="FullName" runat="server"/>
          <asp:RequiredFieldValidator
									ControlToValidate="FullName"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/></td>
      </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="产品网址" Text="产品网址：" runat="server" ></bairong:help></td>
        <td width="1042" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="50" id="ModuleUrl" runat="server"/></td>
      </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="联系Email" Text="联系Email：" runat="server" ></bairong:help></td>
        <td width="1042" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="50" id="Email" runat="server"/></td>
      </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="开发团队" Text="开发团队：" runat="server" ></bairong:help></td>
        <td width="1042" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="50" id="Developer" runat="server"/></td>
      </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="LOGO" Text="LOGO：" runat="server" ></bairong:help></td>
        <td width="1042" align="left"><input type=file  id=LogoName size="35" runat="server"/></td>
      </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="产品支持数据库" Text="产品支持数据库：" runat="server" ></bairong:help></td>
        <td width="1042" align="left"><asp:CheckBoxList ID="Database" RepeatDirection="Horizontal" runat="server"></asp:CheckBoxList></td>
      </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="产品介绍" Text="产品介绍：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="75" MaxLength="50" id="Description" TextMode="MultiLine" Rows="4" runat="server"/></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="保 存" onclick="Submit_OnClick" runat="server" />
          &nbsp;&nbsp;
          <input class="button" type="button" onClick="location.href='background_module.aspx';return false;" value="返 回" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
