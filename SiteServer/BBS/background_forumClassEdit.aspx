<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.BBS.BackgroundPages.BackgroundForumClassEdit" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>

<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<bairong:Code type="Calendar" runat="server" />
<bairong:Code type="JQuery" runat="server" />
<script language="javascript" type="text/javascript">
function _toggleTab(no,totalNum){
	$("#tab"+no).removeClass("tabOff");
	$("#tab"+no).addClass("tabOn");
	$("#column"+no).show();

	for (var i = 1; i <= totalNum; i++){
		if (i != no){
			$("#tab"+i).removeClass("tabOn");
			$("#tab"+i).addClass("tabOff");
			$("#column"+i).hide();
		}
	}
}
function _checkCol(column, className, bcheck)
{
	var elements = $('#' + column + '.' + className);
	for(var i=0; i<elements.length; i++){
		_checkAll(elements[i], bcheck);
	}
}
</script>
<script language="javascript" src="../Inc/auxiliary.js"></script>
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
<bairong:Message runat="server"></bairong:Message>
<div style="text-align:left; margin-left:20px; margin-bottom:6px;">当前操作： <asp:Literal id="ltlTitle" runat="server" /></div>
<div class="tab">
	<div id="tab1" onClick="_toggleTab(1,4);" class="tabOn" style="cursor:pointer">基本设置</div> 
	<div class="clearer"></div>
</div>
<div id="column1" class="column">		
	<table width="98%" align="center" cellpadding="3" cellspacing="3">
    <tr>
		<td colspan="100">注：以下设置没有继承性，即仅对当前分区有效，不会对下级子版块产生影响。
</td>
	</tr>
	<tr><td width="150" align="left">
		<bairong:help HelpText="分区的名称" Text="分区名称：" runat="server" ></bairong:help>
			</td>
	  <td align="left" colspan="2" >
	  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="255" id="txtForumName" runat="server"/>
		<asp:RequiredFieldValidator id="RequiredFieldValidator"
			ControlToValidate="txtForumName"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>
	  </td> 
	</tr>
	<tr><td width="150" align="left">
		<bairong:help HelpText="唯一标识此分区的字符串" Text="分区索引：" runat="server" ></bairong:help>
			</td>
	  <td align="left" colspan="2" >
	  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="255" id="txtIndexName" runat="server"/>
		<asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="txtIndexName"
			ValidationExpression="[^']+"
			ErrorMessage="*"
			Display="Dynamic" />	  </td>
	</tr>
	<tr><td width="150" align="left">
		<bairong:help HelpText="分区名称颜色" Text="分区名称颜色：" runat="server" ></bairong:help>
			</td>
	  <td align="left">
	  	  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="200" id="txtColor" runat="server"/>
		<asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="txtColor"
			ValidationExpression="[^']+"
			ErrorMessage="*"
			Display="Dynamic" />	  </td>
	</tr> 
	<tr id="LinkTypeRow" runat="server"><td width="150" align="left">
		<bairong:help HelpText="设置下级子分区横排时每行分区数量，如果设置为 0，则按正常方式排列" Text="下级子分区横排：" runat="server" ></bairong:help>
			</td>
	  <td colspan="2" align="left">
		  <asp:DropDownList id="ddlColumns" runat="server">		 
          	<asp:ListItem Text="0" Value="0" Selected="true"></asp:ListItem>
          	<asp:ListItem Text="1" Value="1" ></asp:ListItem>
          	<asp:ListItem Text="2" Value="2"></asp:ListItem>
          	<asp:ListItem Text="3" Value="3"></asp:ListItem>
          	<asp:ListItem Text="4" Value="4"></asp:ListItem>
          	<asp:ListItem Text="5" Value="5"></asp:ListItem>
          </asp:DropDownList>	  </td>
	</tr> 
	<tr><td width="150" align="left">
		<bairong:help HelpText="选择“否”将暂时将分区隐藏不显示，但分区内容仍将保留，且用户仍可通过 URL 访问到此分区及其版块" Text="分区状态：" runat="server" ></bairong:help>
			</td>
	  <td colspan="2" align="left">
	  	  <asp:RadioButtonList ID="rblThreadState" DataTextField="Text" DataValueField="Value" RepeatDirection="Horizontal" runat="server"> 
          </asp:RadioButtonList>
      </td>
	</tr> 
	</table>	
</div> 
  
<table width="95%" align="center" cellspacing="0" cellpadding="0" >
<tr>
<td align="center">
	   <asp:Button class="button" id="Submit" text="修 改" onclick="Submit_OnClick" runat="server"/>&nbsp;&nbsp;
	    &nbsp;&nbsp;
       <input class="button" type="button" onClick="location.href='background_forum.aspx';return false;" value="返 回" />
</td>
</tr>
</table>

</form>
</body>
</HTML>
