<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.Modal.FilePathRuleMake" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>

<HTML>
	<HEAD>
		<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
		<title>命名规则构造器</title>
		
		<script language="JavaScript" type="text/JavaScript">
		function AddOnPos(obj, charvalue)
		{
			//obj代表要插入字符的输入框
			//value代表要插入的字符
			
			obj.focus();
			var r = document.selection.createRange();
			var ctr = obj.createTextRange();
			var i;
			var s = obj.value;
			
			//注释掉的这种方法只能用在单行的输入框input内
			//对多行输入框textarea无效
			//r.setEndPoint("StartToStart", ctr);
			//i = r.text.length;
			//取到光标位置----Start----
			var ivalue = "&^asdjfls2FFFF325%$^&"; 
			r.text = ivalue;
			i = obj.value.indexOf(ivalue);
			r.moveStart("character", -ivalue.length);
			r.text = "";
			//取到光标位置----End----
			//插入字符
			obj.value = s.substr(0,i) + charvalue + s.substr(i,s.length);
			ctr.collapse(true);
			ctr.moveStart("character", i + charvalue.length);
			ctr.select();
		}
</script>
		
<meta http-equiv="content-type" content="text/html;charset=utf-8">
	</HEAD>
	<body>
		<form id="myForm" runat="server">
<bairong:Message runat="server"></bairong:Message>
		  <table cellpadding="3" width="95%" align="center">
			<tr>
				<td colspan="2" align="left">
				  <div class="columnsubtitle">替换内容</div>
				  <table cellspacing="2" cellpadding="2" Align="center" border="0" style="width:100%;">
					  <tr class="summary-title" align="Center" style="height:25px;">
						<td width="0">规则</td>
						<td width="0">含义</td>
						<td width="0">规则</td>
						<td width="0">含义</td>
					  </tr>
					  <asp:Literal ID="Rules" runat="server"></asp:Literal>
				  </table>
				</td>
			</tr>
			<tr>
				<td width="150" align="center">
					<bairong:help HelpText="系统生成文件时采取的文件名规则" Text="页面命名规则：" runat="server" ></bairong:help>
				</td>
				<td align="left">
					<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="50" id="TheRule" runat="server" />
				</td>
			</tr>
			<tr>
				<td align="center" colspan="2">
					<asp:Button class="button" id="Ok" text="确 定" onclick="Ok_OnClick" runat="server" />&nbsp;&nbsp;
					<asp:Button class="button" id="Cancel" text="取 消" runat="server" />
				</td>
			</tr>
	  </table>
		</form>
	</body>
</HTML>
