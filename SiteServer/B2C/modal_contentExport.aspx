<%@ Page Language="C#" Trace="false" Inherits="SiteServer.B2C.BackgroundPages.Modal.ContentExport" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>

<html>
<head>
<title>导出内容</title>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv=content-type content=text/html;charset=utf-8>
<script type="text/javascript" language="javascript">
function checkAll(layer, bcheck)
{
	for(var i=0; i<layer.children.length; i++)
	{
		if (layer.children[i].children.length>0)
		{
			checkAll(layer.children[i],bcheck);
		}else{
			if (layer.children[i].type=="checkbox")
			{
					layer.children[i].checked = bcheck;
			}
		}
	}
}
</script>
</head>
<body>
<form id="MyForm" enctype="multipart/form-data" method="post" runat="server">
<bairong:Message runat="server"></bairong:Message>
  <table cellpadding="3" width="95%" align="center">
    <tr>
      <td align="center" class="tips">导出压缩包能够将内容以及内容相关的图片、附件等文件一道导出，导出Access或Excel则仅能导出内容。
      </td>
    </tr>
    <tr>
      <td align="center" valign="top" ><table align="center" width="95%">
		  <tr>
            <td align="left"><bairong:help HelpText="选择导出类型" Text="导出类型：" runat="server" ></bairong:help>            </td>
            <td align="left">
				<asp:RadioButtonList ID="ExportType" AutoPostBack="true" OnSelectedIndexChanged="ExportType_SelectedIndexChanged" runat="server" RepeatDirection="Horizontal">
					<asp:ListItem Text="导出压缩包" Value="ContentZip"></asp:ListItem>
                    <asp:ListItem Text="导出Access" Value="ContentAccess" Selected="true"></asp:ListItem>
					<asp:ListItem Text="导出Excel" Value="ContentExcel" Selected="false"></asp:ListItem>
				</asp:RadioButtonList>            </td>
          </tr>
          <asp:PlaceHolder ID="phDisplayAttributes" runat="server">
          <tr>
            <td align="left" colspan="2">
                <bairong:help HelpText="选择需要导出的字段" Text='选择需要导出的字段：<input type="checkbox" id="check_groups" onClick=checkAll(document.getElementById("Group"),this.checked);><label for="check_groups">全选</label>'  runat="server" ></bairong:help>
          <span id="Group">
         <asp:CheckBoxList ID="DisplayAttributeCheckBoxList" RepeatColumns="2" RepeatDirection="Horizontal" Width="100%" runat="server"/>
         </span>
            </td>
        </tr>
          </asp:PlaceHolder>
      </table></td>
    </tr>
    <tr>
      <td align="center"><asp:Button class="button" id="Ok" text="导 出" onclick="Ok_OnClick" runat="server"/>
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" />
      </td>
    </tr>
  </table>
</form>
</body>
</html>
