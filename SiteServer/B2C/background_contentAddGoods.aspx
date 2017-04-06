<%@ Page Language="C#" validateRequest="false" EnableEventValidation="false" Inherits="SiteServer.B2C.BackgroundPages.BackgroundContentAddGoods" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<bairong:Code type="Calendar" runat="server" />
<bairong:Code type="fancybox" runat="server" />
<script language="javascript" type="text/javascript">
function _toggleTab(no, totalNum) {
    $('#tab' + no).removeClass("tabOff").addClass("tabOn");
    $('#column' + no).show();
    for (var i = 1; i <= totalNum; i++) {
        if (i != no) {
            $('#tab' + i).removeClass("tabOn").addClass("tabOff");
            $('#column' + i).hide();
        }
    }
}
function _checkCol(column, className, bcheck)
{
	var elements = $('#' + column + ' .' + className);
	for(var i=0; i<elements.length; i++){
		_checkAll(elements[i], bcheck);
	}
}
function getBrands(){
    var nodeID = $('option:selected', $('#BrandNodeID')).attr('value');
    if (nodeID){
        var url = '../../SiteFiles/Inner/B2C/PageService.aspx?type=GetBrands&publishmentSystemID=<%=base.PublishmentSystemID%>&nodeID=' + nodeID;
        $.get(url, '', function(data){
            data = eval('(' + data + ')');
            var $sel = $('#BrandContentID');
            $('option', $sel).each(function(){
	            $(this).remove();
            })
            $sel.append('<option value=""><<请选择>></option>');
            var show = false;
            $.each(data, function(i, item){
                show = true;
                $opt = $('<option value="' + item.value + '">' + item.text + '</option>');
                $opt.appendTo($sel);
            });
        });
    }
}
</script>
<script language="javascript" src="../Inc/auxiliary.js"></script>
<script type="text/javascript" charset="utf-8" src="../../sitefiles/bairong/scripts/independent/validate.js"></script>
<link rel="stylesheet" media="screen" type="text/css" href="../../sitefiles/bairong/scripts/jquery/colorpicker/css/colorpicker.css" />
<script type="text/javascript" src="../../sitefiles/bairong/scripts/jquery/colorpicker/js/colorpicker.js"></script>
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <div style="text-align:left; margin-left:25px; margin-bottom:6px;">当前操作：
    <asp:Literal id="ltlTitle" runat="server" />
  </div>
  <div class="tab">
    <div id="tab1" onClick="_toggleTab(1,4);" class="tabOn" style="cursor:pointer">基本信息</div>
    <asp:PlaceHolder ID="phTitleOthers" runat="server">
    <div id="tab2" onClick="_toggleTab(2,4);" class="tabOff" style="cursor:pointer">商品属性</div>
    </asp:PlaceHolder>
    <div id="tab3" onClick="_toggleTab(3,4);" class="tabOff" style="cursor:pointer">高级设置</div>
    <div id="tab4" onClick="_toggleTab(4,4);" class="tabOff" style="cursor:pointer">商品相册</div>
    <div class="clearer"></div>
  </div>
  <div id="column1" class="column">
    <table width="100%" align="center" cellpadding="4" cellspacing="4">
      <site:AuxiliaryControl ID="Attributes" IsOutputScripts="false" FormatTextEditor="<tr><td colspan='2' align='left'>{0}</td></tr><tr><td colspan='2' align='left'>{1}</td></tr>" FormatDefault="<tr><td>{0}</td><td>{1}</td></tr>" runat="server"/>
      <asp:PlaceHolder ID="phBrand" runat="server">
      <tr >
        <td width="110" align="left">所属品牌：</td>
        <td align="left">
        栏目：<asp:DropDownList id="BrandNodeID" runat="server"></asp:DropDownList>&nbsp;
        品牌：<asp:DropDownList id="BrandContentID" runat="server"></asp:DropDownList></td>
      </tr>
      </asp:PlaceHolder>
      
      <asp:PlaceHolder ID="phContentAttributes" runat="server">
        <tr>
          <td>商品属性：</td>
          <td><asp:CheckBoxList ID="ContentAttributes" RepeatDirection="Horizontal" RepeatColumns="5" runat="server"/></td>
        </tr>
      </asp:PlaceHolder>
    </table>
  </div>
  <div id="column2" style="display:none" class="column">
    <table width="100%" align="center" cellpadding="4" cellspacing="4">
      <site:AuxiliaryControl ID="AttributesOthers" IsOutputScripts="false" FormatTextEditor="<tr><td colspan='2' align='left'>{0}</td></tr><tr><td colspan='2' align='left'>{1}</td></tr>" FormatDefault="<tr><td width='110'>{0}</td><td>{1}</td></tr>" runat="server"/>
    </table>
  </div>
  <div id="column3" style="display:none" class="column">
    <table width="100%" align="center" cellpadding="4" cellspacing="4">
      <asp:PlaceHolder ID="phContentGroup" runat="server">
        <tr>
          <td>所属内容组：</td>
          <td><asp:CheckBoxList ID="ContentGroupNameCollection" RepeatDirection="Horizontal" RepeatColumns="5" runat="server"/></td>
        </tr>
      </asp:PlaceHolder>
      <asp:PlaceHolder ID="phTags" runat="server">
        <tr>
          <td>商品标签：</td>
          <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="Tags"	MaxLength="50" Size="60" runat="server"/>
            &nbsp;<span class="grey">多个标签请用英文逗号（,）分开</span></td>
        </tr>
      </asp:PlaceHolder>
      <tr>
        <td width="110">状态：</td>
        <td><asp:RadioButtonList ID="ContentLevel" RepeatDirection="Horizontal" runat="server"/></td>
      </tr>
      <tr>
        <td>转移到：</td>
        <td> 站点：
          <asp:DropDownList ID="ddlPublishmentSystemID" runat="server"></asp:DropDownList>
          &nbsp; <span id="c_ddlChannelID" style="display:none">栏目：
          <select id="ddlChannelID" name="ddlChannelID">
          </select>
          &nbsp;
          方式：
          <asp:DropDownList ID="ddlTranslateContentType" runat="server"></asp:DropDownList>
          </span></td>
      </tr>
    </table>
  </div>
  <div id="column4" style="display:none" class="column">
    <table width="98%" align="center" cellpadding="4" cellspacing="3">
      <tr>
        <TD colspan="100">注：不选择默认使用会员组内容页面权限，选择后内容权限设置优先于会员组内容页面权限设置。</TD>
      </tr>
      <tr class="summary-title" height="25">
        <td><b>全选（会员组/被禁止的权限）</b></td>
        <asp:Repeater ID="ContentPermissionRepeater" runat="server">
          <itemtemplate>
            <td><asp:CheckBox ID="Permission" runat="server"></asp:CheckBox></td>
          </itemtemplate>
        </asp:Repeater>
      </tr>
      <asp:Repeater ID="ContentUserGroupRepeater" runat="server">
        <itemtemplate>
          <tr class="tdbg" height="25" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';">
            <td><asp:CheckBox ID="UserGroup" runat="server"></asp:CheckBox></td>
            <asp:Literal ID="UserPermissions" runat="server"></asp:Literal>
          </tr>
        </itemtemplate>
      </asp:Repeater>
    </table>
  </div>
  <table width="95%" align="center" cellspacing="0" cellpadding="0" >
    <tr>
      <td align="center" height="40" valign="middle"><asp:Button class="button" id="Submit" text="确 定" onclick="Submit_OnClick" runat="server"/>
        &nbsp;&nbsp;
        <input class="button" type="button" onClick="submitPreview();" value="预 览" />
        &nbsp;&nbsp;
        <input class="button" type="button" onClick="location.href='<%=ReturnUrl%>';return false;" value="返 回" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
