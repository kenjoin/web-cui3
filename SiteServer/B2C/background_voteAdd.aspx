<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundVoteAdd" %>
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
<body >
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">
      <asp:Literal id="literalTitle" runat="server" />
      投票&nbsp;<a href="http://help.siteserver.cn/function/197/749.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看添加/修改投票帮助" align="absmiddle"></a></div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="160" align="left"><bairong:help HelpText="投票的名称" Text="投票名称：" runat="server" ></bairong:help></td>
        <td colspan="3" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" id="VoteName" runat="server"/>
          <asp:RequiredFieldValidator ControlToValidate="VoteName" ErrorMessage="请设置投票名称" Display="Dynamic"
										runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="VoteName"
										ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="此投票的标题名称" Text="标题：" runat="server" ></bairong:help></td>
        <td colspan="3" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" TextMode="MultiLine" id="TheTitle" runat="server" Rows="5"/>
          <asp:RequiredFieldValidator ControlToValidate="TheTitle" ErrorMessage="请设置投票标题" Display="Dynamic"
										runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="TheTitle"
										ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="设置用户投票的方式，可以是单选或多选。" Text="投票类型：" runat="server" ></bairong:help></td>
        <td align="left" colspan="3"><asp:RadioButtonList id="VoteType" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="ReFresh" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr id="MaxVoteItemNumRow" runat="server">
        <td width="160" align="left"><bairong:help HelpText="设置用户用户最多能够选择的选项数目，0代表不限制。" Text="对多可选择项数：" runat="server" ></bairong:help></td>
        <td width="80%" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="MaxVoteItemNum" Columns="4" Text="0" runat="server"></asp:TextBox>
          项
          <asp:RequiredFieldValidator ControlToValidate="MaxVoteItemNum" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator ControlToValidate="MaxVoteItemNum" ValidationExpression="\d+" Display="Dynamic" ErrorMessage="此项必须为数字" runat="server" />
          （0代表不限制） </td>
      </tr>
      <tr>
        <td  width="160" align="left"><bairong:help HelpText="投票限制类型" Text="投票限制：" runat="server" ></bairong:help></td>
        <td width="80%" align="left"><asp:RadioButtonList ID="VoteRestrictType" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="设置用户投票项的类型，可以是文字型、图片型或图文混合型。" Text="投票项类型：" runat="server" ></bairong:help></td>
        <td align="left" colspan="3"><asp:DropDownList id="VoteItemType" AutoPostBack="true" OnSelectedIndexChanged="ReFresh" runat="server"></asp:DropDownList></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="设置需要投票的项数，设置完项数后需要设置每一投票项的标题和显示颜色。" Text="设置投票项数目：" runat="server" ></bairong:help></td>
        <td align="left" colspan="3"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="4" Text="4" id="ItemCount" runat="server" />
          <asp:RequiredFieldValidator ControlToValidate="ItemCount" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:Button class="button" style="margin-bottom:0px;" id="SetCount" text="设 置" onclick="SetCount_OnClick" CausesValidation="false" runat="server" />
          <asp:RegularExpressionValidator ControlToValidate="ItemCount" ValidationExpression="\d+" Display="Dynamic" ErrorMessage="此项必须为数字" runat="server" /></td>
      </tr>
      <tr>
        <td colspan="8" align="center"><asp:Repeater ID="MyRepeater" runat="server">
            <itemtemplate>
              <table width="100%" border="0" cellspacing="2" cellpadding="2">
                <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';">
                  <td align="Center" style="width:20px;"><strong><%# Container.ItemIndex + 1 %></strong></td>
                  <td align="left"><table width="100%" border="0" cellspacing="3" cellpadding="3">
                      <tr id="VoteItemTitleRow" runat="server">
                        <td width="120" align="left"><bairong:help HelpText="设置投票项的标题。" Text="标题：" runat="server" ></bairong:help></td>
                        <td colspan="3"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="ItemTitle" Columns="60" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ItemTitle") %>'></asp:TextBox>
                          <asp:RequiredFieldValidator ID="ItemTitleRequired" ControlToValidate="ItemTitle" ErrorMessage="*" Display="Dynamic" runat="server" /></td>
                      </tr>
                      <tr id="VoteItemImageUrlRow" runat="server">
                        <td width="120" align="left"><bairong:help HelpText="设置投票项的图片地址。" Text="图片地址：" runat="server" ></bairong:help></td>
                        <td colspan="3"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="ItemImageUrl" Columns="60" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"ItemImageUrl") %>'></asp:TextBox>
                          <asp:RequiredFieldValidator ID="ItemImageUrlRequired" ControlToValidate="ItemImageUrl" ErrorMessage="*" Display="Dynamic" runat="server" /></td>
                      </tr>
                      <tr>
                        <td width="120" align="left"><bairong:help HelpText="设置投票项的链接。" Text="链接：" runat="server" ></bairong:help></td>
                        <td colspan="3"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="NavigationUrl" Columns="60" runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"NavigationUrl") %>'></asp:TextBox></td>
                      </tr>
                      <tr>
                        <td width="120" align="left"><bairong:help HelpText="设置投票项显示时的颜色。" Text="颜色：" runat="server" ></bairong:help></td>
                        <td width="170"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="15" MaxLength="50" Text='<%# DataBinder.Eval(Container.DataItem,"DisplayColor") %>' id="DisplayColor" runat="server" />
                          <asp:RegularExpressionValidator runat="server" ControlToValidate="DisplayColor"
								ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
                          <a href="javascript:undefined;" onClick="javascript:var TempReturnValue=window.showModalDialog('../inc/color.htm','ResWin','dialogWidth:18.5em; dialogHeight:17.5em;');if (typeof(TempReturnValue)!='undefined') this.parentElement.firstChild.value=TempReturnValue;" style="text-decoration:underline">选择</a></td>
                        <td width="60" align="left"><bairong:help HelpText="设置投票项的票数。" Text="票数：" runat="server" ></bairong:help></td>
                        <td ><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="15" MaxLength="50" Text='<%# DataBinder.Eval(Container.DataItem,"VoteNum") %>' id="VoteNum" runat="server" />
                          <asp:RequiredFieldValidator ControlToValidate="VoteNum" ErrorMessage="*" Display="Dynamic" runat="server" />
                          <asp:RegularExpressionValidator ControlToValidate="VoteNum" ValidationExpression="\d+" Display="Dynamic" ErrorMessage="此项必须为数字" runat="server" /></td>
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
        <td colspan="4" align="center"><table width="95%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><asp:Literal id="VoteItems" runat="server" /></td>
            </tr>
          </table></td>
      </tr>
      <tr>
        <td colspan="4" align="center"><asp:Button class="button" id="Submit" text="添 加" onclick="Submit_OnClick" runat="server" />
          &nbsp;&nbsp;&nbsp;
          <input type=button class="button" onClick="location.href='background_vote.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>';" value="返 回" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
