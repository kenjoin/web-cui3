<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.B2C.BackgroundPages.BackgroundTemplateAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
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
<style type="text/css">
.CodeMirror-line-numbers { width: 22px; color: #aaa; background-color: #eee; text-align: right; padding-right: .3em; font-size: 10pt; font-family: monospace; padding-top: .4em; line-height: 16px; }
</style>
<script src="../../SiteFiles/bairong/Scripts/CodeMirror/js/codemirror.js" type="text/javascript"></script>
</head>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">
      <asp:Literal id="literalTitle" runat="server" />模板</div>
    <table width="100%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="155" align="left"><bairong:help HelpText="此模板的名称" Text="模板名称：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="50" id="TemplateName" runat="server" />
          <asp:RequiredFieldValidator id="RequiredFieldValidator" ControlToValidate="TemplateName" ErrorMessage="*" Display="Dynamic"
										runat="server" />
          <asp:RegularExpressionValidator id="RegularExpressionValidator" runat="server" ControlToValidate="TemplateName"
										ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
        <td width="396" align="right"></td>
      </tr>
      <tr>
        <td width="155" align="left"><bairong:help HelpText="模板的不同类型对应不同的应用范围" Text="模板类型：" runat="server" ></bairong:help></td>
        <td colspan="3" align="left"><%=TemplateTypeString%>
          <input type="hidden" runat="server" id="TemplateType" /></td>
      </tr>
      <tr>
        <td width="155" align="left"><bairong:help HelpText="模板对应的文件名" Text="模板文件：" runat="server" ></bairong:help></td>
        <td colspan="3" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="50" id="RelatedFileName" runat="server" />
          <asp:RequiredFieldValidator
										 ControlToValidate="RelatedFileName" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator 
										 ControlToValidate="RelatedFileName" ValidationExpression="(^T_[^'\.]+)|([^'\.]+[\\/]+T_[^'\.]+)" 
										 ErrorMessage="必须以T_开头，并且不能有文件扩展名" Display="Dynamic" runat="server"/>
          （路径以/分隔，文件名以T_开头） </td>
      </tr>
      <tr id="CreatedFileFullNameRow" runat="server">
        <td width="155" align="left"><bairong:help id="CreatedFileFullNameHelp" HelpText="生成的文件名" Text="生成文件名：" runat="server" ></bairong:help></td>
        <td colspan="3" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="50" id="CreatedFileFullName" runat="server" />
          <asp:RequiredFieldValidator
										 ControlToValidate="CreatedFileFullName" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator 
										 ControlToValidate="CreatedFileFullName" ValidationExpression="[^'\.]+" 
										 ErrorMessage="不能有文件扩展名<br>" Display="Dynamic" runat="server"/>
          <bairong:NoTagText id="CreatedFileFullNameText" Text="（以“~/”开头代表系统根目录，以“@/”开头代表站点根目录）" runat="server" /></td>
      </tr>
      <tr>
        <td width="155" align="left"><bairong:help HelpText="模板对应的文件扩展名" Text="文件扩展名：" runat="server" ></bairong:help></td>
        <td colspan="3" align="left"><asp:DropDownList ID="CreatedFileExtNameDropDownList" runat="server"></asp:DropDownList>
          <span id="CreatedFileExtNameHolder" runat="server">&nbsp;
          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="16" MaxLength="50" id="CreatedFileExtName" runat="server" />
          <asp:RequiredFieldValidator
										 ControlToValidate="CreatedFileExtName" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator 
										 ControlToValidate="CreatedFileExtName" ValidationExpression="^\.[^'\.\\/]+" 
										 ErrorMessage="*" Display="Dynamic" runat="server"/>
          </span></td>
      </tr>
      <tr id="RuleIDRow" runat="server">
        <td width="155" align="left"><bairong:help HelpText="制定模版所属的模版方案" Text="所属模版方案：" runat="server" ></bairong:help></td>
        <td colspan="3" align="left"><asp:DropDownList id="RuleID" runat="server"></asp:DropDownList></td>
      </tr>
      <tr>
        <td width="155" align="left"><bairong:help HelpText="网页的编码" Text="网页编码：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:DropDownList id="Charset" runat="server"></asp:DropDownList></td>
        <td align="right" style="padding-right:20px;"><a id="reindent" href="javascript:void(0);">对代码应用格式</a></td>
      </tr>
      <tr>
        <td colspan="4" align="center"><div style="border: 1px solid #CCC; width:98%">
            <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" width="100%" TextMode="MultiLine" id="Content" runat="server" Height="420" Wrap="false" />
          </div>
          <script type="text/javascript">
$(document).ready(function(){
var isTextArea = false;
var editor = CodeMirror.fromTextArea('Content', {
    height: "420px",
	parserfile: ["parsexml.js"],
    stylesheet: ["../../SiteFiles/bairong/Scripts/CodeMirror/css/xmlcolors.css"],
    path: "../../SiteFiles/bairong/Scripts/CodeMirror/js/",
    continuousScanning: 500,
    lineNumbers: true
  });
$('#reindent').click(function(){
	if (!isTextArea) editor.reindent();
});
});
</script></td>
      </tr>
      <tr>
        <td colspan="4" align="center"><asp:Button class="button" id="Submit" text="添 加" onclick="Submit_OnClick" runat="server" />
          &nbsp;&nbsp;&nbsp;
          <%if (Request.QueryString["TemplateID"] != null){%>
          <asp:Button class="button" id="Restore" text="恢 复" onclick="Restore_OnClick" runat="server" />
          &nbsp;&nbsp;&nbsp;
          <%}%>
          <input type=button class="button" onClick="location.href='background_template.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>';" value="返 回" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>