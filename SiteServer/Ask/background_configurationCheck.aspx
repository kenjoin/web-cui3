<%@ Page Language="C#" Inherits="SiteServer.Ask.BackgroundPages.BackgroundConfigurationCheck" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="MyForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
  <div class="columntitle">审核设置</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="170" align="left"><bairong:help HelpText="审核规则设置" Text="审核规则设置：" runat="server" ></bairong:help></td>
        <td align="left" width="900"><asp:RadioButtonList ID="IsCheckByUserGroup" AutoPostBack="true" OnSelectedIndexChanged="IsCheckByUserGroup_SelectedIndexChanged" RepeatDirection="Horizontal" runat="server">
        	<asp:ListItem Text="统一审核规则" Value="False" Selected="true"></asp:ListItem>
            <asp:ListItem Text="按用户组审核" Value="True"></asp:ListItem>
        </asp:RadioButtonList></td>
      </tr>
      <asp:PlaceHolder ID="phCheck" runat="server">
      <tr>
        <td width="170" align="left"><bairong:help HelpText="是否审核提问" Text="是否审核提问：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsCheckQuestion" RepeatDirection="Horizontal" runat="server">
        	<asp:ListItem Text="是" Value="True"></asp:ListItem>
            <asp:ListItem Text="否" Value="False" Selected="true"></asp:ListItem>
        </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="170" align="left"><bairong:help HelpText="是否审核回答" Text="是否审核回答：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsCheckAnswer" RepeatDirection="Horizontal" runat="server">
        	<asp:ListItem Text="是" Value="True"></asp:ListItem>
            <asp:ListItem Text="否" Value="False" Selected="true"></asp:ListItem>
        </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="170" align="left"><bairong:help HelpText="是否审核评论" Text="是否审核评论：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsCheckComment" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" Value="True"></asp:ListItem>
            <asp:ListItem Text="否" Value="False" Selected="true"></asp:ListItem>
        </asp:RadioButtonList></td>
      </tr>
      </asp:PlaceHolder>
      <asp:PlaceHolder ID="phUserGroup" runat="server">
      <tr>
        <td align="left" colspan="2">
        <asp:DataList ID="dlUserGroup" ShowHeader="true" cellspacing="1" cellpadding="1" Width="100%" Align="center" border="0" runat="server">
          <headertemplate>
            <tr class="summary-title" style="height:25px;">
              <td>&nbsp;会员组名称</td>
              <td align="Center" style="width:80px;">提问</td>
			  <td align="Center" style="width:80px;">回答</td>
              <td align="Center" style="width:80px;">评论</td>
              <td align="Center" style="width:100px;">用户组类型</td>
              <td align="Center" style="width:80px;">星星数</td>
              <td align="Center" style="width:60px;">编辑</td>
            </tr>
          </headertemplate>
          <itemtemplate>
            <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';" style="height:25px;">
              <td>&nbsp;
                <asp:Literal ID="ltlGroupName" runat="server"></asp:Literal>
              </td>
              <td align="Center" style="width:80px;"><asp:Literal ID="ltlIsCheckQuestion" runat="server"></asp:Literal></td>
			  <td align="Center" style="width:80px;"><asp:Literal ID="ltlIsCheckAnswer" runat="server"></asp:Literal></td>
              <td align="Center" style="width:80px;"><asp:Literal ID="ltlIsCheckComment" runat="server"></asp:Literal></td>
              <td align="Center" style="width:100px;"><asp:Literal ID="ltlGroupType" runat="server"></asp:Literal></td>
              <td align="left" style="width:80px;">&nbsp;<asp:Literal ID="ltlStars" runat="server"></asp:Literal></td>
              <td align="Center" style="width:60px;"><asp:Literal ID="ltlEditUrl" runat="server"></asp:Literal></td>
              </td>
            </tr>
          </itemtemplate>
        </asp:DataList>
        </td>
      </tr>
      </asp:PlaceHolder>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="修 改" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</HTML>
