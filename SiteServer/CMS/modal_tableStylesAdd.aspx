<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.Modal.TableStylesAdd" Trace="false" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>批量添加显示样式</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table width="95%" align="center" cellpadding="3" cellspacing="3">
    <tr>
      <td colspan="4" align="left" class="tips"> 多个字段之间用换行分割，字段显示名称可以放到括号中，如：字段名称(显示名称)，不设置显示名称将默认使用字段名称 </td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="保存在数据库中的字段" Text="字段：" runat="server" ></bairong:help></td>
      <td colspan="3" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" id="AttributeNames" TextMode="MultiLine" Rows="12" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="AttributeNames" ErrorMessage="*" Display="Dynamic" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="AttributeNames"
						ValidationExpression="[^',]+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="是否在提交表单中显示此字段。" Text="在提交表单中显示：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList id="IsVisible" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="是" Selected="True" />
          <asp:ListItem Text="否" />
        </asp:RadioButtonList></td>
      <td align="left"><bairong:help HelpText="是否在列表界面中显示此字段。" Text="在列表显示：" runat="server" ></bairong:help></td>
      <td align="left" width="30%"><asp:RadioButtonList id="IsVisibleInList" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="是" />
          <asp:ListItem Text="否" Selected="True" />
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="在表单界面中此字段的表单提交类型。" Text="表单提交类型：" runat="server" ></bairong:help></td>
      <td colspan="3" align="left"><asp:DropDownList ID="InputType" OnSelectedIndexChanged="ReFresh" AutoPostBack="true" runat="server"></asp:DropDownList></td>
    </tr>
    <tr id="RowEditorType" runat="server">
      <td align="left"><bairong:help HelpText="编辑器类型" Text="编辑器类型：" runat="server" ></bairong:help></td>
      <td colspan="3" align="left"><asp:DropDownList id="EditorType" runat="server" /></td>
    </tr>
    <tr id="RowHeightAndWidth" runat="server">
      <td align="left"><bairong:help HelpText="显示宽度" Text="显示宽度：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="3" MaxLength="50" Text="0" id="Width" runat="server" />
        px
        <asp:RegularExpressionValidator
					ControlToValidate="Width"
					ValidationExpression="\d+"
					Display="Dynamic"
					ErrorMessage="*"
					runat="server"/>
        （0代表默认） </td>
      <td align="left"><bairong:help HelpText="显示高度" Text="显示高度：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="3" MaxLength="50" Text="0" id="Height" runat="server" />
        px
        <asp:RegularExpressionValidator
					ControlToValidate="Height"
					ValidationExpression="\d+"
					Display="Dynamic"
					ErrorMessage="*"
					runat="server"/>
        （0代表默认）</td>
    </tr>
    <tr id="RowDefaultValue" runat="server">
      <td align="left"><bairong:help HelpText="在表单界面中此项默认显示的值" Text="默认显示值：" runat="server" ></bairong:help></td>
      <td colspan="3" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" TextMode="MultiLine" id="DefaultValue" runat="server" />
        <span id="DateTip" runat="server"><br>
        {Current}代表当前日期/日期时间</span>
        <asp:RegularExpressionValidator runat="server" ControlToValidate="DefaultValue"
							ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr id="RowRepeat" runat="server">
      <td align="left"><bairong:help HelpText="各项的排列方向。" Text="排列方向：" runat="server" ></bairong:help></td>
      <td align="left"><asp:DropDownList id="IsHorizontal" runat="server">
          <asp:ListItem Text="水平" Selected="True"/>
          <asp:ListItem Text="垂直"  />
        </asp:DropDownList></td>
      <td align="left"><bairong:help HelpText="项显示的列数。" Text="列数：" runat="server" ></bairong:help></td>
      <td align="left"><nobr>
        <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="3" MaxLength="50" Text="0" id="Columns" runat="server" />
        <asp:RegularExpressionValidator
					ControlToValidate="Columns"
					ValidationExpression="\d+"
					Display="Dynamic"
					ErrorMessage="*"
					runat="server"/>
        （0代表未设置此属性）</nobr></td>
    </tr>
    <tr id="RowItemCount" runat="server">
      <td align="left"><bairong:help HelpText="设置选择项需要的项数，设置完项数后需要设置每一项的标题和值。" Text="设置选项数目：" runat="server" ></bairong:help></td>
      <td colspan="3" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="4" Text="2" id="ItemCount" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="ItemCount" ErrorMessage="*" Display="Dynamic" runat="server" />
        <asp:Button class="button" style="margin-bottom:0px;" id="SetCount" text="设 置" onclick="SetCount_OnClick" CausesValidation="false" runat="server" />
        <asp:RegularExpressionValidator ControlToValidate="ItemCount" ValidationExpression="\d+" Display="Dynamic" ErrorMessage="此项必须为数字" runat="server" /></td>
    </tr>
    <tr id="RowSetItems" runat="server">
      <td colspan="4" align="center"><asp:Repeater ID="MyRepeater" runat="server">
          <itemtemplate>
            <table width="100%" border="0" cellspacing="2" cellpadding="2">
              <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';">
                <td align="Center" style="width:20px;"><strong><%# Container.ItemIndex + 1 %></strong></td>
                <td align="left"><table width="100%" border="0" cellspacing="3" cellpadding="3">
                    <tr>
                      <td width="120" align="left"><bairong:help HelpText="设置选项的标题。" Text="选项标题：" runat="server" ></bairong:help></td>
                      <td colspan="3"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="ItemTitle" Columns="40" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ItemTitle") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="ItemTitle" ErrorMessage="*" Display="Dynamic" runat="server" /></td>
                    </tr>
                    <tr>
                      <td width="120" align="left"><bairong:help HelpText="设置选项的值。" Text="选项值：" runat="server" ></bairong:help></td>
                      <td colspan="3"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="ItemValue" Columns="40" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ItemValue") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="ItemValue" ErrorMessage="*" Display="Dynamic" runat="server" /></td>
                    </tr>
                    <tr>
                      <td width="120" align="left"><bairong:help HelpText="设置是否初始化时选定此项。" Text="初始化时选定：" runat="server" ></bairong:help></td>
                      <td colspan="3"><asp:CheckBox ID="IsSelected" runat="server" Checked="False" Text="选定"></asp:CheckBox></td>
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
    <tr>
      <td colspan="4" align="center"><asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
