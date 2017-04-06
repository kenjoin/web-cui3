<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.BBS.BackgroundPages.BackgroundTemplateEdit" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script>
    function changeExtension(sel,tb,holder){
        tb.value = sel.options[sel.options.selectedIndex].value;
        if (sel.options[sel.options.selectedIndex].value==""){
            holder.style.display = '';
        }else{
            holder.style.display = 'none';
        }
    }
</script>
<bairong:Code type="Jquery" runat="server" />
<style type="text/css">
  .CodeMirror-line-numbers {
	width: 22px;
	color: #aaa;
	background-color: #eee;
	text-align: right;
	padding-right: .3em;
	font-size: 10pt;
	font-family: monospace;
	padding-top: .4em;
	line-height: 16px;
  }
</style>
<script src="../../SiteFiles/bairong/Scripts/CodeMirror/js/codemirror.js" type="text/javascript"></script>
</HEAD>
	<body>
		<form id="myForm" runat="server">
<bairong:Message runat="server"></bairong:Message>
          <DIV class="column">
<div class="columntitle">修改模板文件</div>
			
						<table width="100%" align="center" cellpadding="3" cellspacing="3">
							<tr>
								<td align="left">
								模板文件：<asp:Literal ID="ltlFilePath" runat="server"></asp:Literal>
							  </td>
							</tr>
							<tr>
								<td align="center">
									<div style="border: 1px solid #CCC; width:100%">
                                    <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" width="100%" TextMode="MultiLine" id="Content" runat="server" Height="420" Wrap="false" />
                                    </div>
                                    <script type="text/javascript">
	$(document).ready(function(){
var editor = CodeMirror.fromTextArea('Content', {
    height: "420px",
	parserfile: ["parsexml.js", "parsecss.js", "tokenizejavascript.js", "parsejavascript.js", "parsehtmlmixed.js"],
    stylesheet: ["../../SiteFiles/bairong/Scripts/CodeMirror/css/xmlcolors.css", "../../SiteFiles/bairong/Scripts/CodeMirror/css/jscolors.css", "../../SiteFiles/bairong/Scripts/CodeMirror/css/csscolors.css"],
    path: "../../SiteFiles/bairong/Scripts/CodeMirror/js/",
    continuousScanning: 500,
    lineNumbers: true
  });

	});
</script>                                   

							  </td>
							</tr>
							<tr>
								<td align="center">
									<asp:Button class="button" text="保 存" onclick="Submit_OnClick" runat="server" />
									&nbsp;&nbsp;&nbsp;
									<input type=button class="button" onClick="location.href='background_templateList.aspx?templateDir=<%=Request.QueryString["templateDir"]%>&directoryName=<%=Request.QueryString["directoryName"]%>';" value="返 回" />
								</td>
							</tr>
		    </table>
		  </div>
		</form>
	</body>
</HTML>