<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundForumTranslate" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %> 

<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script>
function setOptionColor(obj) {
	for (var i=0;i<obj.options.length;i++) {
		if (obj.options[i].value=="") 
			obj.options[i].style.color="gray";
		else
			obj.options[i].style.color="black";
	}
}
</script>
</head>
<body>

<form id="myForm" runat="server">
<bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
<div class="columntitle">版块合并</div>
	<asp:Label ID="MessageLabel" runat="server" Width="100%"></asp:Label>
	<table width="95%" align="center" cellpadding="3" cellspacing="3">
	<tr><td width="20%" align="left">
	<bairong:help HelpText="选择需要合并的版块" Text="从版块：" runat="server" ></bairong:help>
		

	  </td>
	  <td colspan="2" align="left">
	  <asp:ListBox ID="ForumIDFrom" Height="180" SelectionMode="Multiple" runat="server"></asp:ListBox>
	  <asp:RequiredFieldValidator
			ControlToValidate="ForumIDFrom"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>
		<script type="text/javascript" language="javascript">
		setOptionColor(document.getElementById('<%=ForumIDFrom.ClientID%>'));
		</script>	  </td>
	  </tr>
	<tr>
	  <td align="left"><bairong:help HelpText="选择需要合并到目标版块" Text="合并到：" runat="server" ></bairong:help></td>
	  <td colspan="2" align="left"> 
	  <asp:DropDownList ID="ForumIDTo" runat="server"></asp:DropDownList>
	  <asp:RequiredFieldValidator
			ControlToValidate="ForumIDTo"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>
		<script type="text/javascript" language="javascript"> 
		setOptionColor(document.getElementById('<%=ForumIDTo.ClientID%>'));
		</script></td>
	</tr>  
	  <tr>
	    <td colspan="3" align="center">
			<asp:Button class="button" id="Submit" text="转 移" onclick="Submit_OnClick" runat="server"/>
            <asp:PlaceHolder ID="phReturn" runat="server">
    &nbsp;&nbsp;
          	<input class="button" type="button" onClick="location.href='<%=ReturnUrl%>';return false;" value="返 回" />
            </asp:PlaceHolder>
		</td>
      </tr>
	</table>	
</DIV>

</form>

</body>
</html>