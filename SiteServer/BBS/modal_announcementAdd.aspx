<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.Modal.AnnouncementAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<bairong:Code type="JQuery" runat="server" />
<script type="text/javascript">
function highlight(id){
	$('#h_' + id).css({border:"#999 1px solid"});
	$("#highlight_" + id).val("true");	
}
$(document).ready(function(){
	$("#highlight_td a").toggle(
		function(){
			$(this).css({border:"#999 1px solid"});
			$("#highlight_" + $(this).html()).val("true");
		}, 
		function(){
			$(this).css({border:"#F4F4F4 1px solid"});
			$("#highlight_" + $(this).html()).val("false");
		}
	);
	<%=GetScripts()%>
});
</script>

</head>
<body>
<form runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="5" cellspacing="5" border="0" width="100%">
      <tr>
        <td width="80" align="right"> 公告标题： </td>
        <td align="left"><asp:TextBox ID="tbTitle" class="colorblur"  style="height:20px; padding:2px; vertical-align:middle;" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60"  runat="server" Width="200px"></asp:TextBox>
          <asp:RequiredFieldValidator ControlToValidate="tbTitle"
                            ErrorMessage=" *" Display="Dynamic" runat="server" /></td>
      </tr>
      <tr>
        <td width="80" align="right"> 高亮： </td>
        <td align="left" id="highlight_td"><a style="border:#F4F4F4 1px solid; color:#333; padding:2px 6px; text-decoration:none; font:12px/1.5 'DejaVu Sans','Lucida Grande',Tahoma,'Hiragino Sans GB',STHeiti,SimSun,sans-serif; font-weight:700" title="文字加粗" href="javascript:;" id="h_B">B</a> <a style="border:#F4F4F4 1px solid; color:#333; padding:2px 8px; line-height:18px; text-decoration:none; font:12px/1.5 'DejaVu Sans','Lucida Grande',Tahoma,'Hiragino Sans GB',STHeiti,SimSun,sans-serif; font-style:italic" title="文字斜体" href="javascript:;">I</a> <a style="border:#F4F4F4 1px solid; color:#333; padding:2px 6px; text-decoration:underline; font:12px/1.5 'DejaVu Sans','Lucida Grande',Tahoma,'Hiragino Sans GB',STHeiti,SimSun,sans-serif;" title="文字下划线" href="javascript:;">U</a>
            <input type="hidden" id="highlight_B" name="highlight_B" value="" />
            <input type="hidden" id="highlight_I" name="highlight_I" value="" />
            <input type="hidden" id="highlight_U" name="highlight_U" value="" />
      </tr>
      <tr>
        <td width="80" align="right"> 颜色： </td>
        <td align="left">
        	<asp:TextBox ID="tbColor" class="colorblur"  style="height:20px; padding:2px; vertical-align:middle;" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60"  runat="server" Width="60px"></asp:TextBox>
        </td>
      </tr>
      <tr>
        <td align="right"> 公告链接： </td>
        <td align="left"><asp:TextBox ID="tbLinkUrl" class="colorblur"  style="height:20px; padding:2px; vertical-align:middle;" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60"  runat="server" Width="200px"></asp:TextBox>
          <asp:RequiredFieldValidator ControlToValidate="tbLinkUrl"
                            ErrorMessage=" *" Display="Dynamic" runat="server" /></td>
      </tr>
      <tr>
        <td align="right"> 新窗口打开： </td>
        <td align="left"><asp:RadioButtonList ID="rblIsBlank" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" Value="True" Selected="true"></asp:ListItem>
            <asp:ListItem Text="否" Value="False"></asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td height="25" colspan="2" align="center"><asp:Button ID="Submit" Text="添 加" class="button" runat="server" OnClick="Submit_Click" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" />
        </td>
    </tr>
  </table>
</form>
</body>
</html>
