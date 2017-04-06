<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.Modal.ContentAttributes" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>设置内容属性</title>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script language="javascript" type="text/javascript">
function _toggleTab(no,totalNum){	
	$("#tab"+no).removeClass("tabOff");
	$("#tab"+no).addClass("tabOn");
	$("#column"+no).show();
	
	document.getElementById("hdType").value = no + "";
	for (var i = 1; i <= totalNum; i++){
		if (i != no){
			$("#tab"+i).removeClass("tabOn");
			$("#tab"+i).addClass("tabOff");
			if (i != 2){
				$("#column"+i).hide();
			}
		}
	}
}

function _toggleTab2(no,totalNum){
	
	$("#tab"+no).removeClass("tabOff");
	$("#tab"+no).addClass("tabOn");
	$("#column"+1).show();
	
	document.getElementById("hdType").value = no + "";
	for (var i = 1; i <= totalNum; i++){
		if (i != no){
			$("#tab"+i).removeClass("tabOn");
			$("#tab"+i).addClass("tabOff");
			$("#column"+3).hide();
		}
	}
}
</script>
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <div class="tab">
    <div id="tab1" onClick="_toggleTab2(1,3);" class="tabOn">设置属性</div>
    <div id="tab2" onClick="_toggleTab2(2,3);" class="tabOff">取消属性</div>
    <div id="tab3" onClick="_toggleTab(3,3);" class="tabOff">设置点击量</div>
    <div class="clearer"></div>
  </div>
  <div id="column1" class="column">
    <table cellpadding="2" width="95%" align="center" height="60">
      <tr>
        <td align="left"><asp:CheckBox ID="IsRecommend" runat="server" Text="推荐"></asp:CheckBox>
          <asp:CheckBox ID="IsHot" runat="server" Text="热点"></asp:CheckBox>
          <asp:CheckBox ID="IsColor" runat="server" Text="醒目"></asp:CheckBox>
          <asp:CheckBox ID="IsTop" runat="server" Text="置顶"></asp:CheckBox></td>
      </tr>
    </table>
  </div>
  <div id="column3" style="display:none" class="column">
    <table cellpadding="2" width="95%" align="center" height="60">
      <tr>
        <td align="left"> 点击量：
          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="8" MaxLength="50" id="Hits" Text="0" runat="server"/>
          <asp:RequiredFieldValidator
                    ControlToValidate="Hits"
                    ErrorMessage="*"
                    Display="Dynamic"
                    runat="server"/>
          <asp:RegularExpressionValidator
                    ControlToValidate="Hits"
                    ValidationExpression="\d+"
                    Display="Dynamic"
                    ErrorMessage="点击量必须为整数"
                    runat="server"/></td>
      </tr>
    </table>
  </div>
  <table cellpadding="2" width="95%" align="center">
    <tr>
      <td align="center"><asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" />
        <input id="hdType" type="hidden" runat="server" value="1" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
