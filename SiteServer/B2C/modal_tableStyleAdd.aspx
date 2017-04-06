<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.TableStyleAdd" Trace="false" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title id="MyTitle" runat="server"></title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table width="100%" align="center" cellpadding="3" cellspacing="3">
    <tr>
      <td align="left"><bairong:help HelpText="保存在数据库中的字段名称" Text="字段名称：" runat="server" ></bairong:help></td>
      <td colspan="3" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="tbAttributeName" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="tbAttributeName" ErrorMessage="*" Display="Dynamic" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="tbAttributeName"
						ValidationExpression="[a-zA-Z0-9_]+" ErrorMessage="字段名称只允许包含字母、数字以及下划线" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="显示在表单界面中的名称" Text="显示名称：" runat="server" ></bairong:help></td>
      <td colspan="3" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="tbDisplayName" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="tbDisplayName" ErrorMessage="*" Display="Dynamic" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="tbDisplayName"
							ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="显示在表单界面中的帮助提示信息" Text="显示帮助提示：" runat="server" ></bairong:help></td>
      <td colspan="3" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" id="tbHelpText" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="tbHelpText"
							ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="是否在提交表单中显示此字段。" Text="在表单中显示：" runat="server" ></bairong:help></td>
      <td align="left"><asp:RadioButtonList id="rblIsVisible" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="是" Selected="True" />
          <asp:ListItem Text="否" />
        </asp:RadioButtonList></td>
      <td align="left"><bairong:help HelpText="是否在列表界面中显示此字段。" Text="在列表中显示：" runat="server" ></bairong:help></td>
      <td align="left" width="30%"><asp:RadioButtonList id="rblIsVisibleInList" RepeatDirection="Horizontal" runat="server">
          <asp:ListItem Text="是" />
          <asp:ListItem Text="否" Selected="True" />
        </asp:RadioButtonList></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="在表单界面中此字段的表单提交类型。" Text="表单提交类型：" runat="server" ></bairong:help></td>
      <td align="left"><asp:DropDownList ID="ddlInputType" OnSelectedIndexChanged="ReFresh" AutoPostBack="true" runat="server"></asp:DropDownList></td>
      <asp:PlaceHolder ID="phIsFormatString" Visible="false" runat="server">
        <td align="left"><bairong:help HelpText="是否可设置此字段的文字显示格式。" Text="可否设置格式：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList id="rblIsFormatString" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="可设置" />
            <asp:ListItem Text="不可设置" Selected="True" />
          </asp:RadioButtonList></td>
      </asp:PlaceHolder>
    </tr>
    <tr id="rowEditorType" runat="server">
      <td align="left"><bairong:help HelpText="编辑器类型" Text="编辑器类型：" runat="server" ></bairong:help></td>
      <td colspan="3" align="left"><asp:DropDownList id="ddlEditorType" runat="server" /></td>
    </tr>
    <tr id="rowRelatedField" runat="server">
      <td align="left"><bairong:help HelpText="联动字段" Text="联动字段：" runat="server" ></bairong:help></td>
      <td align="left"><asp:DropDownList id="ddlRelatedFieldID" runat="server" /></td>
      <td align="left"><bairong:help HelpText="显示方式" Text="显示方式：" runat="server" ></bairong:help></td>
      <td align="left"><asp:DropDownList id="ddlRelatedFieldStyle" runat="server" /></td>
    </tr>
    <tr id="rowHeightAndWidth" runat="server">
      <td align="left"><bairong:help HelpText="显示宽度" Text="显示宽度：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="3" MaxLength="50" Text="0" id="tbWidth" runat="server" />
        px
        <asp:RegularExpressionValidator
					ControlToValidate="tbWidth"
					ValidationExpression="\d+"
					Display="Dynamic"
					ErrorMessage="*"
					runat="server"/>
        （0代表默认） </td>
      <td align="left"><bairong:help HelpText="显示高度" Text="显示高度：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="3" MaxLength="50" Text="0" id="tbHeight" runat="server" />
        px
        <asp:RegularExpressionValidator
					ControlToValidate="tbHeight"
					ValidationExpression="\d+"
					Display="Dynamic"
					ErrorMessage="*"
					runat="server"/>
        （0代表默认）</td>
    </tr>
    <tr id="rowDefaultValue" runat="server">
      <td align="left"><bairong:help HelpText="在表单界面中此项默认显示的值" Text="默认显示值：" runat="server" ></bairong:help></td>
      <td colspan="3" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" TextMode="MultiLine" id="tbDefaultValue" runat="server" />
        <span id="DateTip" runat="server"><br>
        {Current}代表当前日期/日期时间</span>
        <asp:RegularExpressionValidator runat="server" ControlToValidate="tbDefaultValue"
							ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr id="rowRepeat" runat="server">
      <td align="left"><bairong:help HelpText="各项的排列方向。" Text="排列方向：" runat="server" ></bairong:help></td>
      <td align="left"><asp:DropDownList id="ddlIsHorizontal" runat="server">
          <asp:ListItem Text="水平" Selected="True"/>
          <asp:ListItem Text="垂直"  />
        </asp:DropDownList></td>
      <td align="left"><bairong:help HelpText="项显示的列数。" Text="列数：" runat="server" ></bairong:help></td>
      <td align="left"><nobr>
        <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="3" MaxLength="50" Text="0" id="tbColumns" runat="server" />
        <asp:RegularExpressionValidator
					ControlToValidate="tbColumns"
					ValidationExpression="\d+"
					Display="Dynamic"
					ErrorMessage="*"
					runat="server"/>
        （0代表未设置此属性）</nobr></td>
    </tr>
    <tr id="rowItemsType" runat="server">
      <td align="left"><bairong:help HelpText="设置选择项需要的项数，设置完项数后需要设置每一项的标题和值。" Text="设置选项：" runat="server" ></bairong:help></td>
      <td colspan="3" align="left">
      <asp:DropDownList ID="ddlItemType" OnSelectedIndexChanged="ReFresh" AutoPostBack="true" runat="server">
      	<asp:ListItem Text="快速设置" Value="True" Selected="True"/>
        <asp:ListItem Text="详细设置" Value="False" />
      </asp:DropDownList>&nbsp;&nbsp;
      <asp:PlaceHolder ID="phItemCount" runat="server">
      共有
      <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="4" id="tbItemCount" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="tbItemCount" ErrorMessage="*" Display="Dynamic" runat="server" /> 个选项&nbsp;
        <asp:Button class="button" style="margin-bottom:0px;" id="SetCount" text="设 置" onclick="SetCount_OnClick" CausesValidation="false" runat="server" />
        <asp:RegularExpressionValidator ControlToValidate="tbItemCount" ValidationExpression="\d+" Display="Dynamic" ErrorMessage="此项必须为数字" runat="server" />
      </asp:PlaceHolder>
      </td>
    </tr>
    <tr id="rowItemsRapid" runat="server">
      <td align="left"><bairong:help HelpText="设置选项可选值。" Text="选项可选值：" runat="server" ></bairong:help></td>
      <td colspan="3" align="left">
      <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" id="tbItemValues" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="tbItemValues" ErrorMessage="*" Display="Dynamic" runat="server" /><span class="grey">英文“,”分隔</span>
      </td>
    </tr>
    <tr id="rowItems" runat="server">
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
