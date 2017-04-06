<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.ConsoleShopEdit" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="b2c" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
</head>
<body>
<user:custom type="showhint" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">修改商城属性</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="160" align="left"><bairong:help HelpText="此商城的显示名称" Text="商城名称：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="ShopName" runat="server"/>
          <asp:RequiredFieldValidator
			ControlToValidate="ShopName"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>
          <asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="ShopName"
			ValidationExpression="[^']+"
			ErrorMessage="*"
			Display="Dynamic" /></td>
      </tr>
      <tr id="ShopDirRow" runat="server">
        <td width="160" align="left"><bairong:help HelpText="实际在服务器中保存此网站的文件夹名称，此路径必须以英文或拼音命名。" Text="文件夹名称：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="ShopDir" style="ime-mode:disabled;" runat="server"/>
          <asp:RequiredFieldValidator 
			ControlToValidate="ShopDir"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>
          <asp:RegularExpressionValidator runat="server" ControlToValidate="ShopDir"
						ValidationExpression="[a-zA-Z0-9_]+" ErrorMessage=" 只允许包含字母、数字以及下划线" Display="Dynamic" /></td>
      </tr>
      <tr id="ParentShopIDRow" runat="server">
        <td width="160" align="left"><bairong:help HelpText="此商城的上级商城" Text="上级商城：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="ParentShopID" runat="server"></asp:DropDownList></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="此商城栏目需要的辅助表，栏目有默认属性，可以无栏目辅助表。" Text="栏目辅助表：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="AuxiliaryTableForChannel" runat="server" > </asp:DropDownList></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="此商城内容需要的辅助表。" Text="内容辅助表：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="AuxiliaryTableForContent" runat="server" > </asp:DropDownList>
          <asp:RequiredFieldValidator
			ControlToValidate="AuxiliaryTableForContent"
			ErrorMessage="内容辅助表不能为空！"
			Display="Dynamic"
			runat="server"/></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="此商城招聘需要的辅助表。" Text="招聘辅助表：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="AuxiliaryTableForJob" runat="server" > </asp:DropDownList>
          <asp:RequiredFieldValidator
			ControlToValidate="AuxiliaryTableForJob"
			ErrorMessage="招聘辅助表不能为空！"
			Display="Dynamic"
			runat="server"/></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="此商城内容评论需要的辅助表。" Text="评论辅助表：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="AuxiliaryTableForComment" runat="server" > </asp:DropDownList>
          <asp:RequiredFieldValidator
			ControlToValidate="AuxiliaryTableForComment"
			ErrorMessage="评论辅助表不能为空！"
			Display="Dynamic"
			runat="server"/></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="设置商城排序，排序数字大的商城将排在其他商城之前" Text="商城排序：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox ID="Taxis" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ControlToValidate="Taxis" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
                ControlToValidate="Taxis"
                ValidationExpression="\d+"
                Display="Dynamic"
                ErrorMessage="排序必须为数字"
                runat="server"/></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="选择内容审核的机制，需要多级审核的请选择多级审核机制，否则选择默认审核机制" Text="内容审核机制：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList id="IsCheckContentUseLevel" AutoPostBack="true" OnSelectedIndexChanged="IsCheckContentUseLevel_OnSelectedIndexChanged" RepeatDirection="Horizontal" runat="server"> </asp:RadioButtonList></td>
      </tr>
      <tr id="CheckContentLevelRow" runat="server">
        <td width="160" align="left"><bairong:help HelpText="指此内容在添加后需要经多少次审核才能正式发布" Text="内容审核级别：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList id="CheckContentLevel" runat="server">
            <asp:ListItem Value="2" Text="二级" Selected="true"></asp:ListItem>
            <asp:ListItem Value="3" Text="三级"></asp:ListItem>
            <asp:ListItem Value="4" Text="四级"></asp:ListItem>
            <asp:ListItem Value="5" Text="五级"></asp:ListItem>
          </asp:DropDownList></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="修 改" OnClick="Submit_OnClick" runat="server"/>
          &nbsp;&nbsp;
          <input type="button" class="button" value="返 回" onClick="javascript:location.href='console_publishmentSystem.aspx';" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>