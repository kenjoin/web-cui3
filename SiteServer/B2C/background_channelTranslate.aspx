<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundChannelTranslate" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script>
function setOptionColor(obj)
{
	for (var i=0;i<obj.options.length;i++)
	{
		if (obj.options[i].value=="")
		{
			obj.options[i].style.color="gray";
		}else{
			obj.options[i].style.color="black";
		}
	}
}
</script>
</head>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">批量转移&nbsp;<a href="http://help.siteserver.cn/manage/190/736.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看批量转移帮助" align="absmiddle"></a></div>
    <asp:Label ID="MessageLabel" runat="server" Width="100%"></asp:Label>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="20%" align="left"><bairong:help HelpText="选择需要转移栏目/内容的栏目" Text="从栏目：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:ListBox ID="NodeIDFrom" Height="180" SelectionMode="Multiple" runat="server"></asp:ListBox>
          <asp:RequiredFieldValidator
			ControlToValidate="NodeIDFrom"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>
          <script type="text/javascript" language="javascript">
		setOptionColor(document.getElementById('<%=NodeIDFrom.ClientID%>'));
		</script></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="选择需要将栏目/内容转移到的地址" Text="转移到：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"> 站点：
          <asp:DropDownList ID="PublishmentSystemIDDropDownList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="PublishmentSystemID_OnSelectedIndexChanged"></asp:DropDownList>
          &nbsp;&nbsp;栏目：
          <asp:DropDownList ID="NodeIDTo" runat="server"></asp:DropDownList>
          <asp:RequiredFieldValidator
			ControlToValidate="NodeIDTo"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>
          <script type="text/javascript" language="javascript"> 
		setOptionColor(document.getElementById('<%=NodeIDTo.ClientID%>'));
		</script></td>
      </tr>
      <tr>
        <td width="20%" align="left"><bairong:help HelpText="选择需要转移的类型" Text="转移类型：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:DropDownList ID="TranslateType" runat="server"></asp:DropDownList></td>
      </tr>
      <tr>
        <td width="20%" align="left"><bairong:help HelpText="转移后是否把原来栏目下的栏目/内容删除" Text="转移后删除：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:RadioButtonList id="IsDeleteAfterTranslate" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" />
            <asp:ListItem Text="否" Selected="True"/>
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td colspan="3" align="center"><asp:Button class="button" id="Submit" text="转 移" onclick="Submit_OnClick" runat="server"/>
          <asp:PlaceHolder ID="phReturn" runat="server"> &nbsp;&nbsp;
            <input class="button" type="button" onClick="location.href='<%=ReturnUrl%>';return false;" value="返 回" />
          </asp:PlaceHolder></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</html>