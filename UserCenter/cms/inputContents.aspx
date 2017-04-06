<%@ Page Language="C#" Inherits="UserCenter.System.CMS.InputContents" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/admin/admin.css" rel="stylesheet" type="text/css" />

<bairong:Code ID="Code1" type="Prototype" runat="server" />
<script language="JavaScript" src="../js/script.js"></script>
<style type="text/css">
   
.talk {display:block;font:normal 12px Verdana;text-decoration:none;clear:both;border-left:none;border-right:none;padding:8px 0 3px 9px;border-bottom-width:2px;border-top:none; }
.talk b {font-size:14px}
.toarea .F,.toarea .M {border-bottom-width:1px;}
#folder_group {padding:10px 0 0 0;}
#folder_group .g_list {padding:4px 0 6px 9px;margin:0 0 1px 0;height:auto;width:155px;*width:164px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;}
#folder_group .toolbg {height:auto;}
.tbstyle{font-size:12px;}
.left{margin-top:10px;margin-bottom:10px;}
</style>
</head>
<body class="tbody" id="list">
<form name="frm" method="post" target="actionFrame">

    <div class="blog_title">
	<div class="path"><span  style="float:left;font-size:14px;">提交信息管理</span>(共 <span id="count"></span> 条) </div> 
  
  <div style="clear:both"></div>
  </div>
<form name="frm" method="post" target="actionFrame">
<div class="toolbg toolbgline" style="height:auto;*height:32px;">
  <div class="left barspace" style="padding-top:4px;padding-bottom:4px">
	  <input name="del" type="button" id="quick_del" class="if wd1 btn" value=" 删除 " onClick="frm.mailaction.value='mail_del';frm.action='/cgi-bin/mail_mgr?sid=5fpCDCkqiORGfGwl';frm.submit()"/><input type="button" id="quick_completelydel" class="wd2 btn" value="彻底删除" onClick="return CheckPerDelML()"/>
    </div>
	<div class="oneheight"></div>
</div>

<table cellspacing="0" cellpadding="0" style="table-layout:fixed;width:100%;*width:auto;"class="table">
	<tr  class="tb-tit-bg">
		<td style="padding:1px 0 1px 5px;width:27px;"><input type="checkbox" onClick="selectAll('contentid', this.checked);checkAll('contentid')" title="选中/取消选中" /></td>
		<td class="o_title2" style="width:135px;*width:134px;">
			提交项
		</td>
		<td class="o_title2">
			项内容
		</td>
	</tr>


<div class="toarea">

<script>
    var totalNum = 0;
</script>

<asp:Repeater ID="rptInputContents" runat="server">
  <itemtemplate>
  <table cellspacing="0" class="i M" style="border-bottom:1px solid #dfdfdf;border-right:1px solid #dfdfdf; width:100%">
  
	<tr>
    	<td style="padding:1px 0 1px 5px;width:27px;" valign="top"><input type="checkbox" onClick="setListCheck(this)" id="contentid" value='<%#Container.DataItem%>'/></td>
        
		<td>
			<table cellspacing="2" cellpadding="2" class="i">
                <asp:Repeater ID="rptContentRepeater" runat="server">
                  <itemtemplate>
                    <tr>
                      <td class="tl tf" style="width:135px;*width:134px;"><asp:Literal id="DataKey" runat="server" />：</td>
                      <td align="gt tf"><asp:Literal id="DataValue" runat="server" /></td>
                    </tr>
                  </itemtemplate>
                </asp:Repeater>
                <tr>
                  <td class="dt" style="width:135px;*width:134px;">日期：</td>
                  <td align="left"><asp:Literal ID="ltlAddDate" runat="server"></asp:Literal></td>
                </tr>
                <asp:PlaceHolder ID="phReply" runat="server">
                <tr>
                  <td class="dt" style="width:135px;*width:134px;">回复：<img src="../../Pic/ico_succeed.gif"></td>
                  <td align="left"><asp:Literal ID="ltlReply" runat="server"></asp:Literal></td>
                </tr>
                </asp:PlaceHolder>
			</table>
		</td>
	</tr>
</table>
<script>
    totalNum++;
</script>

  </itemtemplate>
</asp:Repeater>

<script>
    $('count').innerHTML = totalNum + " ";
</script>

</div>
</table>
  <div style="height:24px;padding-top:3px"  class="td-foot-bg" ><span class="addrtitle">选择：</span>&nbsp;<a href="javascript:selectAll('contentid', true);checkAll('contentid');">全部</a>&nbsp;-&nbsp;<a href="javascript:selectAll('contentid', false);checkAll('contentid')">无</a></div>

<div style="height:auto;*height:32px;" class="toolbg toolbgline">
	<div class="right f_size barspace1 nowrap" style="padding-top:10px;padding-bottom:4px">
	</div>
    <div class="left barspace" style="padding-top:5px;padding-bottom:4px">
		<input name="del2" type="button" class="wd1 btn" value="删除" onClick="frm.mailaction.value='mail_del';frm.action='/cgi-bin/mail_mgr?sid=5fpCDCkqiORGfGwl';frm.submit()"/><input type="button" class="wd2 btn" value="彻底删除" onClick="return CheckPerDelML() "/>
    </div>
	<div class="oneheight"></div>
   </div>
  
   
</form>
</form>
</body>
</html>
