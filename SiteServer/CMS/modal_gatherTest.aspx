<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.Modal.GatherTest" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title id="MyTitle" runat="server"></title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script language="JavaScript" type="text/JavaScript">
function hideBoxAndShowMessage(){
    var selects = document.getElementsByTagName("SELECT");
    var objects = document.getElementsByTagName("OBJECT");
    for(var i = 0; i < selects.length; i++) {
        selects[i].style.visibility="hidden";
    }
    for(var i = 0; i < objects.length; i++) {
        objects[i].style.visibility="hidden";
    }
    document.getElementById('success').style.display = 'block';
}
</script>
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <div id="success" style="position:absolute;z-index:300;height:120px;width:320px;left:50%;top:160px;margin-left:-150px;margin-top:-80px; display:none">
    <div class="column" style="position:absolute;z-index:300;width:100%;left:4px;top:5px;height:90px;font-size:14px;background-color:#FFFFFF">
      <div class="columntitle">操作提示</div>
      <div class="content" style="height:64px;line-height:150%;" align="center"><BR />
        <img border="0" src="../pic/animated_loading.gif" align="absmiddle" />&nbsp;正在获取页面, 请稍候... <BR />
        <BR />
      </div>
    </div>
  </div>
  <table cellpadding="0" width="100%" align="center">
    <tr align="left">
      <td colspan="2"><asp:Label width="100%" id="Message" Style="TEXT-ALIGN:center;" runat="server" /></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="选择采集地址开始测试" Text="采集地址：" runat="server" ></bairong:help></td>
      <td align="left"><asp:DropDownList ID="GatherUrls" runat="server"></asp:DropDownList>
        &nbsp;
        <asp:Button class="button" id="GetContentUrls"  style="margin-bottom:0px;" text="获取链接" OnClick="GatherUrls_Click" runat="server" /></td>
    </tr>
  </table>
  <br>
  <table cellpadding="1" cellspacing="1" width="100%" height="330">
    <tr>
      <td align="left" valign="top"><asp:Repeater ID="ContentUrlRepeater" runat="server">
          <itemtemplate>
          <div style="height:25px">
              <bairong:NoTagText id="ContentItem" runat="server" />
              &nbsp;
              <asp:Button class="button" id="GetContent" text="获取内容" OnClick="GetContent_Click" runat="server" style="margin-bottom:0px;" />
            </div>
        </itemtemplate>
        </asp:Repeater></td>
      <td align="left" valign="top"><bairong:NoTagText id="Content" runat="server" /></td>
    </tr>
  </table>
  <table cellpadding="0" width="100%" align="center">
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Cancel" text="关 闭" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
