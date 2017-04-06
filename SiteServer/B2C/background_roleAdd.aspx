<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundRoleAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <div class="column">
    <div class="columntitle">
      <asp:Literal id="literalTitle" runat="server" />
      后台角色&nbsp;<a href="http://help.siteserver.cn/manage/218/798.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看添加角色帮助" align="absmiddle"></a></div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="160" align="left"><bairong:help HelpText="唯一标识此角色的字符串" Text="角色名称：" runat="server" ></bairong:help></td>
        <td width="88%" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="RoleName" runat="server"/>
          <asp:RequiredFieldValidator
			ControlToValidate="RoleName"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>
          <asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="RoleName"
			ValidationExpression="[^',]+"
			ErrorMessage="*"
			Display="Dynamic" /></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="备注" Text="备注：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="50" TextMode="MultiLine" id="Description" runat="server"/>
          <asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="Description"
			ValidationExpression="[^']+"
			ErrorMessage="*"
			Display="Dynamic" /></td>
      </tr>
      <tr>
        <td colspan="2" align="center"></td>
      </tr>
    </table>
  </DIV>
  <br>
  <asp:Repeater ID="ModuleRepeater" runat="server">
    <itemtemplate>
      <div class="column">
        <div class="columntitle">
          <asp:Literal ID="ltlModuleName1" runat="server"></asp:Literal>
          权限设置</div>
        <table width="100%" cellpadding="4" cellspacing="0" border="0">
          <tr>
            <td align="left" class="tips"> 在此设置
              <asp:Literal ID="ltlModuleName2" runat="server"></asp:Literal>
              系统的权限 </td>
          </tr>
          <tr>
            <td align="left"><asp:Literal ID="ltlModulePermissions" runat="server"></asp:Literal></td>
          </tr>
        </table>
        <asp:PlaceHolder ID="phPublishmentSystemPermissions" runat="server">
          <table width="100%" cellpadding="4" cellspacing="0" border="0">
            <tr>
              <td align="left" class="tips"> 点击下列链接，进入对应站点的管理权限设置界面 </td>
            </tr>
            <tr>
              <td align="left"><asp:Literal ID="ltlPublishmentSystems" runat="server"></asp:Literal></td>
            </tr>
            <tr>
              <td height="25" valign="bottom"> 注：点击网站选择需要管理的栏目&nbsp;&nbsp;<img src="../pic/canedit.gif" align="absmiddle"/>有权管理此网站&nbsp; <img src="../pic/cantedit.gif" align="absmiddle"/>无权管理此网站 </td>
            </tr>
          </table>
        </asp:PlaceHolder>
      </DIV>
      <br>
    </itemtemplate>
  </asp:Repeater>
  <table width="95%" align="center" cellspacing="0" cellpadding="0" >
    <tr>
      <td ></td>
      <td align="center" ><asp:Button class="button" id="Submit" text="添 加" onclick="Submit_OnClick" runat="server"/>
        <%if (Request.QueryString["RoleName"] != null){%>
        &nbsp;&nbsp;
        <input type="button" class="button" value="返 回" onClick="javascript:location.href='../platform/background_role.aspx?module=<%= Request.QueryString["module"]%>';" />
        <%}%></td>
      <td ></td>
    </tr>
  </table>
  <script language="javascript" type="text/javascript">
  function loadEvent(){
	  
	  var els = document.getElementsByTagName("input");
	  var inputs = new Array(els.length + 1);
	  for(var i=0;i<els.length;i++){
		  inputs[i] = els[i];
	  }

	  inputs[els.length] = document.getElementById("Description");
	  
	  for(var i=0;i<inputs.length;i++){
		  inputs[i].onchange = function()
			{
				var ss_role = _getCookie("background_roleAdd_aspx");
				var theV = (this.type == "checkbox") ? this.checked : this.value;
				if (!ss_role){
					ss_role = this.id + ":" + theV;
				}else{
					ss_role += "," + this.id + ":" + theV;
				}
				_setCookie("background_roleAdd_aspx", ss_role);
			};
	  }
	  
	<%if (base.Request.QueryString["Return"] == null){%>
	_setCookie("background_roleAdd_aspx", "");
	<%}else{%>
	var ss_role = _getCookie("background_roleAdd_aspx");
	if (ss_role){
		var strs=ss_role.split(",");
		for (i=0;i<strs.length ;i++ )
		{
			var el = document.getElementById(strs[i].split(":")[0]);
			if (el.type == "checkbox"){
				el.checked = (strs[i].split(":")[1] == "true");
			}else{
				el.value = strs[i].split(":")[1];
			}
		}
	}
	<%}%>

  }
  loadEvent();
  </script>
</form>
</body>
</html>