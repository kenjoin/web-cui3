﻿<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundTagStyleMenuAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<user:custom type="showpopwin" runat="server" />
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">
      <asp:Literal id="literalTitle" runat="server" />
      菜单样式</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="200"  align="left"><bairong:help HelpText="此菜单显示方式的名称" Text="菜单显示方式名称：" runat="server" ></bairong:help></td>
        <td  align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="MenuDisplayName" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="MenuDisplayName" ErrorMessage="*" Display="Dynamic"
                                    runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="MenuDisplayName"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td width="200"  align="left"><bairong:help HelpText="设置菜单的方向，可选垂直或水平。" Text="菜单显示类型：" runat="server" ></bairong:help></td>
        <td  align="left"><asp:DropDownList id="Vertical" runat="server"> </asp:DropDownList></td>
      </tr>
      <tr>
        <td width="200"  align="left"><bairong:help HelpText="应用于菜单项的字体" Text="字体：" runat="server" ></bairong:help></td>
        <td  align="left"><asp:DropDownList id="FontFamily" runat="server"> </asp:DropDownList></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="应用于菜单项的字体大小，必须为数字。" Text="字体大小：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" Text="0" id="FontSize" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="FontSize" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
                                    ControlToValidate="FontSize"
                                    ValidationExpression="\d+"
                                    Display="Dynamic"
                                    ErrorMessage="字体大小必须为数字"
                                    runat="server"/></td>
      </tr>
      <tr>
        <td width="200"  align="left"><bairong:help HelpText="设置菜单项是否以粗体显示" Text="粗体：" runat="server" ></bairong:help></td>
        <td  align="left"><asp:DropDownList id="FontWeight" runat="server"> </asp:DropDownList></td>
      </tr>
      <tr>
        <td width="200"  align="left"><bairong:help HelpText="设置菜单项是否以斜体显示" Text="斜体：" runat="server" ></bairong:help></td>
        <td  align="left"><asp:DropDownList id="FontStyle" runat="server"> </asp:DropDownList></td>
      </tr>
      <tr>
        <td width="200"  align="left"><bairong:help HelpText="设置菜单项的水平排列方式" Text="水平排列方式：" runat="server" ></bairong:help></td>
        <td  align="left"><asp:DropDownList id="MenuItemHAlign" runat="server"> </asp:DropDownList></td>
      </tr>
      <tr>
        <td width="200"  align="left"><bairong:help HelpText="设置菜单项的垂直排列方式" Text="垂直排列方式：" runat="server" ></bairong:help></td>
        <td  align="left"><asp:DropDownList id="MenuItemVAlign" runat="server"> </asp:DropDownList></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="设置菜单在一般状态下的文本颜色" Text="一般状态下文本颜色：" runat="server" ></bairong:help></td>
        <td align="left" colspan="2"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="15" MaxLength="50" id="FontColor" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="FontColor"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
          <a href="javascript:undefined;" onClick="javascript:var TempReturnValue=window.showModalDialog('../inc/color.htm','ResWin','dialogWidth:18.5em; dialogHeight:17.5em;');if (typeof(TempReturnValue)!='undefined') document.getElementById('<%=FontColor.ClientID%>').value=TempReturnValue;" style="text-decoration:underline">选择</a></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="设置菜单在一般状态下的单元格颜色" Text="一般状态下单元格颜色：" runat="server" ></bairong:help></td>
        <td align="left" colspan="2"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="15" MaxLength="50" id="MenuItemBgColor" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="MenuItemBgColor"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
          <a href="javascript:undefined;" onClick="javascript:var TempReturnValue=window.showModalDialog('../inc/color.htm','ResWin','dialogWidth:18.5em; dialogHeight:17.5em;');if (typeof(TempReturnValue)!='undefined') document.getElementById('<%=MenuItemBgColor.ClientID%>').value=TempReturnValue;" style="text-decoration:underline">选择</a></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="设置菜单在鼠标滑过状态下的文本颜色" Text="滑过状态下文本颜色：" runat="server" ></bairong:help></td>
        <td align="left" colspan="2"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="15" MaxLength="50" id="FontColorHilite" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="FontColorHilite"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
          <a href="javascript:undefined;" onClick="javascript:var TempReturnValue=window.showModalDialog('../inc/color.htm','ResWin','dialogWidth:18.5em; dialogHeight:17.5em;');if (typeof(TempReturnValue)!='undefined') document.getElementById('<%=FontColorHilite.ClientID%>').value=TempReturnValue;" style="text-decoration:underline">选择</a></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="设置菜单在鼠标滑过状态下的单元格颜色" Text="滑过状态下单元格颜色：" runat="server" ></bairong:help></td>
        <td align="left" colspan="2"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="15" MaxLength="50" id="MenuHiliteBgColor" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="MenuHiliteBgColor"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
          <a href="javascript:undefined;" onClick="javascript:var TempReturnValue=window.showModalDialog('../inc/color.htm','ResWin','dialogWidth:18.5em; dialogHeight:17.5em;');if (typeof(TempReturnValue)!='undefined') document.getElementById('<%=MenuHiliteBgColor.ClientID%>').value=TempReturnValue;" style="text-decoration:underline">选择</a></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="设置菜单的水平相对位置，可以为负值。" Text="水平菜单位置：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" Text="0" id="XPosition" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="XPosition" ErrorMessage="*" Display="Dynamic" runat="server" /></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="设置菜单的垂直相对位置，可以为负值。" Text="垂直菜单位置：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" Text="0" id="YPosition" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="YPosition" ErrorMessage="*" Display="Dynamic" runat="server" /></td>
      </tr>
      <tr>
        <td width="200"  align="left"><bairong:help HelpText="若要在鼠标指针不在其上时隐藏弹出菜单，请确保选中了“在发生 onMouseOut 事件时隐藏菜单”。若要让菜单显示，则取消对该选项的选择。" Text="在发生onMouseOut事件时隐藏菜单：" runat="server" ></bairong:help></td>
        <td  align="left"><asp:DropDownList id="HideOnMouseOut" runat="server"> </asp:DropDownList></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="为菜单按钮设置一个特定的宽度（以像素为单位）。“单元格宽度”是根据最宽的项自动设置的；若要增加单元格宽度，请在弹出菜单中选择“像素”然后输入一个比在“单元格宽度”文本框中显示的值更大的值。" Text="单元格宽度：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" Text="0" id="MenuWidth" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="MenuWidth" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
                                    ControlToValidate="MenuWidth"
                                    ValidationExpression="\d+"
                                    Display="Dynamic"
                                    ErrorMessage="单元格宽度必须为数字"
                                    runat="server"/></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="为菜单按钮设置一个特定的高度（以像素为单位）。若要增加单元格高度，请在弹出菜单中选择“像素”然后输入一个比在“单元格高度”文本框中显示的值更大的值。" Text="单元格高度：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" Text="0" id="MenuItemHeight" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="MenuItemHeight" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
                                    ControlToValidate="MenuItemHeight"
                                    ValidationExpression="\d+"
                                    Display="Dynamic"
                                    ErrorMessage="单元格高度必须为数字"
                                    runat="server"/></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="指定单元格内容和其边框之间的像素数" Text="单元格边距：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" Text="0" id="MenuItemPadding" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="MenuItemPadding" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
                                    ControlToValidate="MenuItemPadding"
                                    ValidationExpression="\d+"
                                    Display="Dynamic"
                                    ErrorMessage="单元格边距必须为数字"
                                    runat="server"/></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="指定相邻单元格之间的像素数" Text="单元格间距：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" Text="0" id="MenuItemSpacing" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="MenuItemSpacing" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
                                    ControlToValidate="MenuItemSpacing"
                                    ValidationExpression="\d+"
                                    Display="Dynamic"
                                    ErrorMessage="单元格间距必须为数字"
                                    runat="server"/></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="指定菜单项中的文本在单元格中的缩进距离（以像素为单位）。" Text="文本缩进：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" Text="0" id="MenuItemIndent" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="MenuItemIndent" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
                                    ControlToValidate="MenuItemIndent"
                                    ValidationExpression="\d+"
                                    Display="Dynamic"
                                    ErrorMessage="文本缩进必须为数字"
                                    runat="server"/></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="设置从用户将鼠标指针移动到触发图像或链接上，到菜单出现之间的时间间隔。该值以毫秒为单位，因此默认设置 1000 相当于 1 秒。对于所需的每秒延迟，都添加 000；例如，对于 3 秒延迟，请键入 3000。" Text="菜单延迟：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" Text="0" id="HideTimeout" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="HideTimeout" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
                                    ControlToValidate="HideTimeout"
                                    ValidationExpression="\d+"
                                    Display="Dynamic"
                                    ErrorMessage="菜单延迟必须为数字"
                                    runat="server"/></td>
      </tr>
      <tr>
        <td width="200"  align="left"><bairong:help HelpText="确定菜单中项周围是否显示边框。如果要在菜单项周围显示边框，则确保“菜单边框”为显示边框。" Text="菜单边框：" runat="server" ></bairong:help></td>
        <td  align="left"><asp:DropDownList id="MenuBgOpaque" runat="server"> </asp:DropDownList></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="设置边框的宽度（以像素为单位）。" Text="边框宽度：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" Text="0" id="MenuBorder" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="MenuBorder" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
                                    ControlToValidate="MenuBorder"
                                    ValidationExpression="\d+"
                                    Display="Dynamic"
                                    ErrorMessage="边框宽度必须为数字"
                                    runat="server"/></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="设置菜单的阴影颜色" Text="阴影颜色：" runat="server" ></bairong:help></td>
        <td align="left" colspan="2"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="15" MaxLength="50" id="BGColor" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="BGColor"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
          <a href="javascript:undefined;" onClick="javascript:var TempReturnValue=window.showModalDialog('../inc/color.htm','ResWin','dialogWidth:18.5em; dialogHeight:17.5em;');if (typeof(TempReturnValue)!='undefined') document.getElementById('<%=BGColor.ClientID%>').value=TempReturnValue;" style="text-decoration:underline">选择</a></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="设置菜单的边框颜色" Text="边框颜色：" runat="server" ></bairong:help></td>
        <td align="left" colspan="2"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="15" MaxLength="50" id="MenuBorderBgColor" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="MenuBorderBgColor"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
          <a href="javascript:undefined;" onClick="javascript:var TempReturnValue=window.showModalDialog('../inc/color.htm','ResWin','dialogWidth:18.5em; dialogHeight:17.5em;');if (typeof(TempReturnValue)!='undefined') document.getElementById('<%=MenuBorderBgColor.ClientID%>').value=TempReturnValue;" style="text-decoration:underline">选择</a></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="设置菜单在高亮显示时的颜色" Text="高亮显示颜色：" runat="server" ></bairong:help></td>
        <td align="left" colspan="2"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="15" MaxLength="50" id="MenuLiteBgColor" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="MenuLiteBgColor"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
          <a href="javascript:undefined;" onClick="javascript:var TempReturnValue=window.showModalDialog('../inc/color.htm','ResWin','dialogWidth:18.5em; dialogHeight:17.5em;');if (typeof(TempReturnValue)!='undefined') document.getElementById('<%=MenuLiteBgColor.ClientID%>').value=TempReturnValue;" style="text-decoration:underline">选择</a></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="设置当菜单有子菜单时菜单项右边显示的小图标" Text="子菜单显示图片：" runat="server" ></bairong:help></td>
        <td align="left" colspan="2"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="200" id="ChildMenuIcon" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="MenuLiteBgColor"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
          <%--                                <a href="javascript:OpenPictureSelect('<%=Request.QueryString["PublishmentSystemID"]%>
          ','<%=ChildMenuIcon.ClientID%>');" style="text-decoration:underline">选择</a> --%>
          <asp:HyperLink ID="SelectImage" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">选择</asp:HyperLink>
          <IMG class="preview" id="preview_ChildMenuIcon" src='<%=GetPreviewImageSrc("FloatImage")%>' alt=图片预览 align="absmiddle" name="preview_ImageUrl" width=88 height=70></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="此菜单显示方式的简介" Text="菜单显示简介：" runat="server" ></bairong:help></td>
        <td  align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="50" TextMode="MultiLine" id="Description" runat="server" Rows="3" />
          <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" ControlToValidate="Description"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr >
        <td width="200" align="left"><bairong:help HelpText="将此菜单显示设置为默认的菜单显示方式" Text="是否默认菜单显示：" runat="server" ></bairong:help></td>
        <td  align="left"><asp:RadioButtonList id="IsDefault" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" />
            <asp:ListItem Text="否" Selected="True" />
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td colspan="4" align="center"><asp:Button class="button" id="Submit" text="添 加" onclick="Submit_OnClick" runat="server" />
          &nbsp;&nbsp;&nbsp;
          <input type=button class="button" onClick="location.href='background_tagStyleMenu.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>';" value="返 回" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
