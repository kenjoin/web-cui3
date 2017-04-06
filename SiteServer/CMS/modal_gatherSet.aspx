<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.Modal.GatherSet" Trace="false"%>
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
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="2" width="100%" align="center">
	<tr align="left">
	  <td colspan="2"><asp:Label width="100%" id="Message" Style="TEXT-ALIGN:center;" runat="server" /></td>
	</tr>
	<tr>
	  <td align="left"><bairong:help HelpText="需要采集的起始网页地址" Text="起始网页地址：" runat="server" ></bairong:help></td>
	  <td align="left"><table cellpadding="4" cellspacing="4" width="100%">
		  <tr>
		  <td align="left"><asp:CheckBox ID="GatherUrlIsCollection" runat="server" AutoPostBack="true" OnCheckedChanged="GatherUrl_CheckedChanged" Text="从多个网址" Checked="true"></asp:CheckBox>
			  &nbsp;&nbsp;
			  <asp:CheckBox ID="GatherUrlIsSerialize" runat="server" AutoPostBack="true" OnCheckedChanged="GatherUrl_CheckedChanged" Text="从序列相似网址"></asp:CheckBox></td>
		</tr>
		  <tr id="GatherUrlCollectionRow" runat="server">
		  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" TextMode="MultiLine" Rows="6" id="GatherUrlCollection" runat="server"/>
			  （以换行分割） </td>
		</tr>
		  <tr id="GatherUrlSerializeRow" runat="server">
		  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" id="GatherUrlSerialize" runat="server"/>
			  变动数字: <a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=GatherUrlSerialize.ClientID%>'), '*');" title="遇到变动数字用*代替"><font color="#0000FF">*</font>&nbsp;</a><br>
			  <br>
			  变动数字范围: 从
			  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="5" id="SerializeFrom" Text="1" runat="server"/>
			  到
			  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="5" id="SerializeTo" Text="10" runat="server"/>
			  数字变动倍数:
			  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="5" Text="1" id="SerializeInterval" runat="server"/>
			  &nbsp;&nbsp;
			  <asp:CheckBox ID="SerializeIsOrderByDesc" runat="server" Text="倒序"></asp:CheckBox>
			  <asp:CheckBox ID="SerializeIsAddZero" runat="server" Text="补零"></asp:CheckBox></td>
		</tr>
		</table></td>
	</tr>
	<tr>
	  <td align="left" width="110"><bairong:help HelpText="限定采集内容的地址必须包含的字符串" Text="内容地址包含：" runat="server" ></bairong:help></td>
	  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="40" MaxLength="200" id="UrlInclude" runat="server"/>
		<a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=UrlInclude.ClientID%>'), '*');" title="遇到变动字符用*代替">&nbsp;<font color="#0000FF">*</font>&nbsp;</a><a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=UrlInclude.ClientID%>'), '|');" title="多个条件用|分隔各字符串">&nbsp;<font color="#0000FF">|</font>&nbsp;</a></td>
	</tr>
	<tr>
	  <td align="left"><bairong:help HelpText="选择栏目，采集到的内容将添加到此栏目中" Text="采集到栏目：" runat="server" ></bairong:help></td>
	  <td align="left"><asp:DropDownList ID="NodeIDDropDownList" runat="server"></asp:DropDownList></td>
	</tr>
	<tr>
	  <td align="left"><bairong:help HelpText="需要采集的内容数，0代表采集所有内容" Text="采集内容数：" runat="server" ></bairong:help></td>
	  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="4" MaxLength="4" id="GatherNum" Style="text-align:right" Text="10" runat="server"/>
		（0代表不限定）
		<asp:RequiredFieldValidator
			ControlToValidate="GatherNum"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>
		<asp:RegularExpressionValidator
			ControlToValidate="GatherNum"
			ValidationExpression="\d+"
			ErrorMessage="采集数只能是数字"
			Display="Dynamic"
			runat="server"/></td>
	</tr>
	<tr>
	<tr>
	  <td colspan="2" align="center"><asp:Button class="button" id="Ok" text="开始采集" OnClick="Ok_OnClick" runat="server" />
		&nbsp;&nbsp;
		<asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
	</tr>
  </table>
</form>
</body>
</HTML>
