<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.Modal.TableMetadataAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<title id="MyTitle" runat="server"></title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script language="javascript">
var vArr = new Array();
//datatype,length,length_editable
vArr[0] = new Array('DateTime',8,false);
vArr[1] = new Array('Integer',4,false);
vArr[2] = new Array('NChar',50,true);
vArr[3] = new Array('NText',16,false);
vArr[4] = new Array('NVarChar',255,true);

function updateTextData() {
	var myForm = document.forms.MyForm;
	var valueStr = document.forms.MyForm.DataType.options[document.forms.MyForm.DataType.selectedIndex].value;
	for (var i = 0; i < vArr.length; i++) {
		if (valueStr == vArr[i][0]) {
			myForm.DataLength.value = vArr[i][1];
			myForm.DataLength.disabled = (vArr[i][2])?null:"disabled";
			myForm.DataLengthHidden.value = vArr[i][1];
		}
	}
}

function InitialTextData() {
	var myForm = document.forms.MyForm;
	var valueStr = document.forms.MyForm.DataType.options[document.forms.MyForm.DataType.selectedIndex].value;
	for (var i = 0; i < vArr.length; i++) {
		if (valueStr == vArr[i][0]) {
			myForm.DataLength.disabled = (vArr[i][2])?null:"disabled";
			myForm.DataLengthHidden.value = vArr[i][1];
		}
	}
}
</script>
</HEAD>
<body <%if (Request.QueryString["TableMetadataID"] != null){%>onload="InitialTextData();"<%}else{%>onload="updateTextData();"<%}%>>
<form id="MyForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table width="95%" align="center" cellpadding="3" cellspacing="3">
	<tr align="left">
	  <td colspan="2"><asp:Label width="100%" id="Message" Style="TEXT-ALIGN:center; color:#FF0000" runat="server" /></td>
	</tr>
	<tr>
	  <td width="150" align="left"><bairong:help HelpText="需要添加的字段名称" Text="字段名：" runat="server" ></bairong:help></td>
	  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="AttributeName" runat="server" />
		<asp:RequiredFieldValidator id="RequiredFieldValidator" ControlToValidate="AttributeName" ErrorMessage="*" Display="Dynamic"
					runat="server" />
		<asp:RegularExpressionValidator id="RegularExpressionValidator" runat="server" ControlToValidate="AttributeName"
					ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
	</tr>
	<tr>
	  <td width="150" align="left"><bairong:help HelpText="此字段的数据类型" Text="数据类型：" runat="server" ></bairong:help></td>
	  <td align="left"><asp:DropDownList ID="DataType" runat="server" onChange="updateTextData();"> </asp:DropDownList></td>
	</tr>
	<tr>
	  <td width="150" align="left"><bairong:help HelpText="此字段的数据长度" Text="数据长度：" runat="server" ></bairong:help></td>
	  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="DataLength" runat="server" />
		<input type="hidden" value="0" id="DataLengthHidden"></td>
	</tr>
	<tr>
	  <td width="150" align="left"><bairong:help HelpText="此字段是否允许为空，如果不允许为空，建议添加数据库默认值。" Text="是否允许为空：" runat="server" ></bairong:help></td>
	  <td align="left"><asp:RadioButtonList id="CanBeNull" RepeatDirection="Horizontal" runat="server">
		  <asp:ListItem Text="是" Selected="True" />
		  <asp:ListItem Text="否" />
		</asp:RadioButtonList></td>
	</tr>
	<tr>
	  <td width="150" align="left"><bairong:help HelpText="此字段的默认值" Text="数据库默认值：" runat="server" ></bairong:help></td>
	  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="DBDefaultValue" runat="server" /></td>
	</tr>
	<tr>
	  <td colspan="2" align="center"><asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />
		&nbsp;&nbsp;
		<asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
	</tr>
  </table>
</form>
</body>
</HTML>
