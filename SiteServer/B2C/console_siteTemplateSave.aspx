<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.ConsoleSiteTemplateSave" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script language="JavaScript" type="text/JavaScript">
function hideBoxAndShowMessage(butt){
	//butt.disabled = true;
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
</head>
<body>
<form runat="server">
  <div id="success" style="position:absolute;z-index:300;height:120px;width:320px;left:50%;top:160px;margin-left:-150px;margin-top:-80px; display:none">
    <div class="column" style="position:absolute;z-index:300;width:100%;left:4px;top:5px;height:90px;font-size:14px;background-color:#FFFFFF">
      <div class="columntitle">操作提示</div>
      <div class="content" style="height:64px;line-height:150%;" align="center"><BR />
        <img border="0" src="../pic/animated_loading.gif" align="absmiddle" />&nbsp;正在保存, 请稍候... <BR />
        <BR />
      </div>
    </div>
  </div>
  <DIV class="column">
    <div class="columntitle">保存为站点模板向导 </div>
    <table cellpadding="3" width="95%" height="380" align="center">
      <tr>
        <td colspan="2" height="320" align="left" valign="top"><div style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 30px">
            <asp:panel id="Welcome" runat="server" Visible="false">
              <DIV class="mainTitle">欢迎使用保存为站点模板向导</DIV>
              <br>
              <DIV>您能够将此站点的站点文件、站点内容、模板、菜单显示方式、采集规则、投票信息等保存在站点模板中。</DIV>
              <DIV style="PADDING-LEFT: 10px; PADDING-TOP: 10px"> <br>
                站点模板设置：<br>
                <table width="95%" align="center" cellpadding="3" cellspacing="3">
                  <tr>
                    <td width="200" align="left"><bairong:help HelpText="此站点模板的显示名称" Text="站点模板名称：" runat="server" ></bairong:help></td>
                    <td width="76%" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="50" id="SiteTemplateName" runat="server"/>
                      <asp:RequiredFieldValidator
						ControlToValidate="SiteTemplateName"
						ErrorMessage="*"
						Display="Dynamic"
						runat="server"/>
                      <asp:RegularExpressionValidator
						runat="server"
						ControlToValidate="SiteTemplateName"
						ValidationExpression="[^']+"
						ErrorMessage="*"
						Display="Dynamic" /></td>
                  </tr>
                  <tr>
                    <td width="200" align="left"><bairong:help HelpText="保存此站点模板的文件夹名称，必须以T_开头，且以英文或拼音取名。" Text="站点模板文件夹名称：" runat="server" ></bairong:help></td>
                    <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="500" id="SiteTemplateDir" runat="server"/>
                      <asp:RequiredFieldValidator
					ControlToValidate="SiteTemplateDir"
					ErrorMessage="*"
					Display="Dynamic"
					runat="server"/>
                      <asp:RegularExpressionValidator 
					 ControlToValidate="SiteTemplateDir" ValidationExpression="^T_.+" 
					 ErrorMessage="*" Display="Dynamic" runat="server"/>
                      （文件名必须以T_开头，且以英文或拼音取名） </td>
                  </tr>
                  <tr>
                    <td width="200" align="left"><bairong:help HelpText="此站点模板的网站地址。" Text="站点模板网站地址：" runat="server" ></bairong:help></td>
                    <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="50" MaxLength="200" id="WebSiteUrl" runat="server"/>
                      <asp:RegularExpressionValidator
						runat="server"
						ControlToValidate="WebSiteUrl"
						ValidationExpression="[^']+"
						ErrorMessage="*"
						Display="Dynamic" /></td>
                  </tr>
                  <tr>
                    <td width="200" align="left"><bairong:help HelpText="此站点模板的介绍。" Text="站点模板介绍：" runat="server" ></bairong:help></td>
                    <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="50" Rows="4" TextMode="MultiLine" id="Description" runat="server"/>
                      <asp:RegularExpressionValidator
						runat="server"
						ControlToValidate="Description"
						ValidationExpression="[^']+"
						ErrorMessage="*"
						Display="Dynamic" /></td>
                  </tr>
                </table>
              </DIV>
              </asp:panel>
            <asp:panel id="SaveFiles" runat="server" Visible="false">
              <SPAN class="mainTitle">保存站点文件</SPAN> <BR>
              <BR>
              <DIV> 点击下一步将站点的文件保存到站点模板中。<BR>
                <BR>
                <DIV></DIV>
              </DIV>
              </asp:panel>
            <asp:panel id="SaveSiteContents" runat="server" Visible="false">
              <SPAN class="mainTitle">保存站点内容</SPAN> <BR>
              <BR>
              <DIV> 点击下一步将站点的栏目及内容信息保存到站点模板中。<BR>
                <BR>
                <DIV></DIV>
              </DIV>
              </asp:panel>
            <asp:panel id="SaveSiteStyles" runat="server" Visible="false">
              <SPAN class="mainTitle">保存站点信息</SPAN> <BR>
              <BR>
              <DIV> 点击下一步将站点信息（包括模板、辅助表、菜单显示方式、采集规则及投票信息等）保存到站点模板中。<BR>
                <BR>
                <DIV></DIV>
              </DIV>
              </asp:panel>
            <asp:panel id="UploadImageFile" runat="server" Visible="false">
              <DIV class="mainTitle">载入样图文件</DIV>
              <br>
              <DIV>选择样图文件的名称</DIV>
              <DIV style="PADDING-LEFT: 20px; PADDING-TOP: 20px">
                <TABLE width="512">
                  <TR>
                    <td width="150"><bairong:help HelpText="此站点模板的页面样图。" Text="选择样图文件：" runat="server" ></bairong:help></td>
                    <TD align="left"><input type=file  id=SamplePicFile size="35" runat="server"/></TD>
                  </TR>
                </TABLE>
              </DIV>
              </asp:panel>
            <asp:panel id="Done" runat="server" Visible="false">
              <SPAN class="mainTitle"><img src="../Pic/icon/right.gif">站点模板保存成功!</SPAN> <BR>
              <BR>
              <DIV> 您已经完成保存站点模板的操作。<BR>
                站点模版保存在"SiteFiles\SiteTemplates\<%=SiteTemplateDir.Text%>"文件夹中。 <BR>
              </DIV>
              </asp:panel>
            <asp:Panel id="OperatingError" runat="server" Visible="false">
              <span class="mainTitle"></span> <STRONG>发生错误</STRONG> <br>
              <br>
              <div> 执行向导过程中出错 </div>
              <br>
              <DIV><B><U>错误信息</U></B>:
                <asp:Label ID="ErrorLabel" runat="server"></asp:Label>
              </DIV>
              </asp:Panel>
          </div></td>
      </tr>
      <tr style="BACKGROUND-POSITION:center 50%; BACKGROUND-IMAGE:url(../pic/line.gif); BACKGROUND-REPEAT:repeat-x">
        <td width="30%">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2"><table cellpadding="0" cellspacing="0" width="100%" border="0" align="center" >
            <tr >
              <td align="right"><span style="padding-right:30 "><span style="padding-right:30 "></span> <span style="padding-right:30 "></span>
                <asp:Button class="button" ID="Previous" OnClick="PreviousPanel" runat="server" Text="< 上一步"></asp:Button>
                &nbsp;
                <asp:Button class="button" id="Next" onclick="NextPanel" runat="server" text="下一步 >"></asp:button>
                <span style="padding-right:30 "></span></span></td>
            </tr>
          </table></td>
      </tr>
    </table>
  </div>
  </TD>
  </TR>
  </TBODY>
  </TABLE>
  </TD>
  </TR>
  </TBODY>
  </TABLE>
</form>
</body>
</HTML>
