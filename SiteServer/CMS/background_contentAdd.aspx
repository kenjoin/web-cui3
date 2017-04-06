<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.CMS.BackgroundPages.BackgroundContentAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />

<meta http-equiv="content-type" content="text/html;charset=utf-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache, must-revalidate">
<meta http-equiv="expires" content="0">
<bairong:Code type="fancybox" runat="server" />
<script language="javascript" src="../Inc/auxiliary.js"></script>
<script type="text/javascript" charset="utf-8" src="../../sitefiles/bairong/scripts/independent/validate.js"></script>
<link rel="stylesheet" media="screen" type="text/css" href="../../sitefiles/bairong/scripts/jquery/colorpicker/css/colorpicker.css" />
<script type="text/javascript" src="../../sitefiles/bairong/scripts/jquery/colorpicker/js/colorpicker.js"></script>
<script language="javascript" type="text/javascript">
function getChannels(){
    var publishmentSystemID = $('option:selected', $('#ddlPublishmentSystemID')).attr('value');
    if (publishmentSystemID){
        var url = '../../SiteFiles/Inner/PageService.aspx?type=GetChannels&publishmentSystemID=' + publishmentSystemID;
        $.get(url, '', function(data){
            data = eval('(' + data + ')');
            var $sel = $('#ddlChannelID');
            $('option', $sel).each(function(){
	            $(this).remove();
            })
            $sel.append('<option value="">请选择</option>');
            var show = false;
            $.each(data, function(i, item){
                show = true;
                $opt = $('<option value="' + item.value + '">' + item.text + '</option>');
                $opt.appendTo($sel);
            });
            if (show) $('#c_ddlChannelID').show();
        });
    }else{
		$('#c_ddlChannelID').hide();
	}
}
</script>
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" enctype="multipart/form-data" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <br>
  <div class="column">
    <div class="columntitle">
      <asp:Literal id="ltlTitle" runat="server" />
      &nbsp;<a href="http://help.siteserver.cn/manage/187/728.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看添加/修改内容帮助" align="absmiddle"></a>
    </div>
    <table cellpadding="0" cellspacing="0" width="100%" border="0" align="center" >
      <tr height="120">
        <td class="tdbg"><table width="98%" align="center" cellpadding="3" cellspacing="3">
            <tr height="2">
              <td width="120"></td>
              <td></td>
            </tr>
            <site:AuxiliaryControl ID="Attributes" FormatTextEditor="<tr><td colspan='2' align='left'>{0}</td></tr><tr><td colspan='2' align='left'>{1}</td></tr>" FormatDefault="<tr><td>{0}</td><td>{1}</td></tr>" runat="server"/>
            <asp:PlaceHolder ID="phContentAttributes" runat="server">
              <tr>
                <td>内容属性：</td>
                <td><asp:CheckBoxList ID="ContentAttributes" RepeatDirection="Horizontal" RepeatColumns="5" runat="server"/></td>
              </tr>
            </asp:PlaceHolder>
            <asp:PlaceHolder ID="phContentGroup" runat="server">
              <tr>
                <td>所属内容组：</td>
                <td><asp:CheckBoxList ID="ContentGroupNameCollection" RepeatDirection="Horizontal" RepeatColumns="5" runat="server"/></td>
              </tr>
            </asp:PlaceHolder>
            <asp:PlaceHolder ID="phTags" runat="server">
              <tr>
                <td>内容标签：</td>
                <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="Tags"	MaxLength="50" Size="60" runat="server"/>
                  多个标签请用英文逗号（,）分开</td>
              </tr>
            </asp:PlaceHolder>
            <tr>
              <td>状态：</td>
              <td><asp:RadioButtonList ID="ContentLevel" RepeatDirection="Horizontal" runat="server"/></td>
            </tr>
            <tr>
              <td>转移到：</td>
              <td> 站点：
                <asp:DropDownList ID="ddlPublishmentSystemID" runat="server"></asp:DropDownList>
                &nbsp; <span id="c_ddlChannelID" style="display:none">栏目：
                <select id="ddlChannelID" name="ddlChannelID"></select>
                &nbsp;
                方式：
                <asp:DropDownList ID="ddlTranslateContentType" runat="server"></asp:DropDownList>
                </span> 
              </td>
            </tr>
            <tr>
              <td colspan="2" align="center" height="40" valign="middle"><asp:Button class="button" id="Submit" text="确 定" onclick="Submit_OnClick" runat="server"/>
                &nbsp;&nbsp;
                <input class="button" type="button" onClick="submitPreview();" value="预 览" />
                &nbsp;&nbsp;
                <input class="button" type="button" onClick="location.href='<%=ReturnUrl%>';return false;" value="返 回" /></td>
            </tr>
          </table></td>
      </tr>
    </table>
  </div>
</form>
<br>
<script type="text/javascript">
document.body.onkeydown = function (moz_ev) 
{ 
	var ev = (window.event) ? window.event : moz_ev; 
	if (ev != null && ev.ctrlKey && ev.keyCode == 13) 
	{ 
		document.getElementById("Submit").click(); 
	} 
}
</script>
</body>
</html>