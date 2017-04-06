<%@ Page Language="C#" Inherits="UserCenter.BackgroundPages.Modal.UserTableMetadataView" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<title id="MyTitle" runat="server"></title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table width="95%" align="center" cellpadding="4" cellspacing="4">
    <asp:PlaceHolder ID="phAttribute" runat="server">
      <tr>
        <td width="140" align="left"><bairong:help HelpText="需要添加的字段名称" Text="字段名：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Label id="lblAttributeName" runat="server" /></td>
      </tr>
      <tr>
        <td width="140" align="left"><bairong:help HelpText="此辅助表的名称" Text="辅助表名：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Label id="AuxiliaryTableENName" runat="server" /></td>
      </tr>
      <tr>
        <td width="140" align="left"><bairong:help HelpText="此字段的数据类型" Text="数据类型：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Label id="DataType" runat="server" /></td>
      </tr>
      <tr>
        <td width="140" align="left"><bairong:help HelpText="此字段的数据长度" Text="数据长度：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Label id="DataLength" runat="server" /></td>
      </tr>
      <tr>
        <td width="140" align="left"><bairong:help HelpText="此字段是否允许为空，如果不允许为空，建议添加数据库默认值。" Text="是否允许为空：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Label id="CanBeNull" runat="server" /></td>
      </tr>
      <tr>
        <td width="140" align="left"><bairong:help HelpText="此字段的默认值" Text="数据库默认值：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Label id="DBDefaultValue" runat="server" /></td>
      </tr>
      <tr style="BACKGROUND-POSITION:center 50%; BACKGROUND-IMAGE:url(../pic/line.gif); BACKGROUND-REPEAT:repeat-x">
        <td width="140" align="left">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td width="140" align="left"><bairong:help HelpText="显示在表单界面中的名称" Text="显示名称：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Label id="DisplayName" runat="server" /></td>
      </tr>
      <tr>
        <td width="140" align="left"><bairong:help HelpText="显示在表单界面中的帮助提示信息" Text="显示帮助提示：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Label id="HelpText" runat="server" /></td>
      </tr>
      <tr>
        <td width="140" align="left"><bairong:help HelpText="是否在表单界面中显示此字段。" Text="是否显示：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Label id="IsVisible" runat="server" /></td>
      </tr>
      <tr>
        <td width="140" align="left"><bairong:help HelpText="设置是否对此字段启用表单验证" Text="需要验证：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Label id="IsValidate" runat="server" /></td>
      </tr>
      <tr>
        <td width="140" align="left"><bairong:help HelpText="在表单界面中此字段的表单提交类型。" Text="表单提交类型：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Label id="InputType" runat="server" /></td>
      </tr>
      <tr id="RowDefaultValue" runat="server">
        <td width="140" align="left"><bairong:help HelpText="在表单界面中此项默认显示的值" Text="默认显示值：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Label id="DefaultValue" runat="server" /></td>
      </tr>
      <tr id="RowIsHorizontal" runat="server">
        <td width="140" align="left"><bairong:help HelpText="各项的排列方向。" Text="排列方向：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Label id="IsHorizontal" runat="server" /></td>
      </tr>
      <tr id="RowSetItems" runat="server">
        <td colspan="2" align="center"><asp:Repeater ID="MyRepeater" runat="server">
            <itemtemplate>
              <table width="100%" border="0" cellspacing="2" cellpadding="2">
                <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';">
                  <td align="Center" style="width:20px;"><strong><%# Container.ItemIndex + 1 %></strong></td>
                  <td align="left"><table width="100%" border="0" cellspacing="3" cellpadding="3">
                      <tr>
                        <td width="120" align="left"><bairong:help HelpText="选项的标题。" Text="选项标题：" runat="server" ></bairong:help></td>
                        <td colspan="3"><asp:Label id="ItemTitle" runat="server" /></td>
                      </tr>
                      <tr>
                        <td width="120" align="left"><bairong:help HelpText="选项的值。" Text="选项值：" runat="server" ></bairong:help></td>
                        <td colspan="3"><asp:Label id="ItemValue" runat="server" /></td>
                      </tr>
                      <tr>
                        <td width="120" align="left"><bairong:help HelpText="是否初始化时选定此项。" Text="初始化时选定：" runat="server" ></bairong:help></td>
                        <td colspan="3"><asp:Label id="IsSelected" runat="server" /></td>
                      </tr>
                    </table></td>
                </tr>
              </table>
            </itemtemplate>
            <SeparatorTemplate>
              <table width="100%" align="center" cellspacing="0" cellpadding="0">
                <tr>
                  <td class="mframe-b-mid">&nbsp;</td>
                </tr>
              </table>
            </SeparatorTemplate>
          </asp:Repeater></td>
      </tr>
    </asp:PlaceHolder>
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Ok" text="确 定" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
