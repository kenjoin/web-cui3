<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundThreadCategoryAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="MyForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
  <div class="columntitle">分类信息<asp:Literal ID="ltlTitle" runat="server" /></div> <br> 
    <table width="95%" align="center" cellpadding="3" cellspacing="3"> 
    <tr>
        <td width="170" align="left"><bairong:help HelpText="分类所属版块" Text="分类所属版块：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:DropDownList ID="ddlForumIDList" runat="server"></asp:DropDownList>									            <asp:RequiredFieldValidator ControlToValidate="ddlForumIDList" ErrorMessage="*" Display="Dynamic" runat="server"/>
		<script type="text/javascript" language="javascript">
		setOptionColor(document.getElementById('<%=ddlForumIDList.ClientID%>'));
		</script>	 
        </td>
      </tr>
    <tr>
        <td width="170" align="left"><bairong:help HelpText="分类名称" Text="分类名称：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="40" MaxLength="200" id="txtCategoryName" runat="server" />  
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtCategoryName"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
        </td>
      </tr> 
      <tr>
        <td width="170" align="left"><bairong:help HelpText="简 介" Text="简 介：" runat="server" ></bairong:help></td>
        <td align="left">
        	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" TextMode="MultiLine" Columns="60" Rows="5" MaxLength="1000" id="txtSummary" runat="server" />  
        </td>
      </tr> 
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="修 改" onclick="Submit_OnClick" runat="server" />&nbsp;&nbsp;
	    &nbsp;&nbsp;
       <input class="button" type="button" onClick="location.href='background_threadCategory.aspx';return false;" value="返 回" /></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</HTML>
