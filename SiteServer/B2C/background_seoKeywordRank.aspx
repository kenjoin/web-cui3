<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundSeoKeywordRank" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form id="myForm" style="margin:0" runat="server">
<DIV class="column">
<div class="columntitle">关键字排名查询</div>
<form method="post">
  <table width="90%" align="center" cellspacing="2" cellpadding="2">
    <tr>
      <td width="0"></td>
      <td width="0" align="right"><bairong:help HelpText="查询关键字排名的网址" Text="排名网址：" runat="server" ></bairong:help></td>
      <td width="0" align="left"><input name="SiteUrl" type="text" value="<%=GetSiteUrl()%>" id="SiteUrl" style="width:220px;" class="colorblur" onFocus="this.className='colorfocus';" onBlur="this.className='colorblur';" />
        &nbsp;</td>
      <td width="0" align="right"><bairong:help HelpText="查询关键字排名的搜索引擎" Text="搜索引擎：" runat="server" ></bairong:help></td>
      <td width="0" align="left"><select name="SearchEngine" id="SearchEngine">
          <%=GetSearchEngine()%>
        </select></td>
      <td width="3%"></td>
    </tr>
    <tr>
      <td width="0"></td>
      <td width="0" align="right"><bairong:help HelpText="需要查询的关键字" Text="关键字：" runat="server" ></bairong:help></td>
      <td width="0" align="left"><input name="Keyword" type="text" value="<%=GetKeyword()%>" id="Keyword" class="colorblur" onFocus="this.className='colorfocus';" onBlur="this.className='colorblur';" />
        &nbsp;</td>
      <td width="0" align="right"><bairong:help HelpText="需要查询的关键字" Text="搜索页数：" runat="server" ></bairong:help></td>
      <td width="0" align="left"><input name="PageNum" type="text" value="<%=GetPageNum()%>" id="PageNum" style="width:60px;" class="colorblur" onFocus="this.className='colorfocus';" onBlur="this.className='colorblur';" />
        &nbsp;</td>
      <td></td>
    </tr>
    <tr>
      <td width="0"></td>
      <td colspan="4" align="center"><span class="mframe-m-mid">
        <input type="submit" class="button" value="查 询" style="margin-bottom:0px;">
        </span></td>
      <td></td>
    </tr>
  </table>
</form>
<br>
<div id="DetailControl" runat="server">
  <DIV class="column">
    <div class="columntitle">排名详情</div>
    <strong>
    <asp:Label ID="ResultsMessage" runat="server"></asp:Label>
    </strong><br>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="2"
			BorderWidth="0"
AutoGenerateColumns="false"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="2" gridlines="none">
      <HeaderStyle HorizontalAlign="left" Height="25" />
      <EditItemStyle CssClass="tdbg-dark" />
      <ItemStyle Height="23"/>
      <Columns>
      <asp:TemplateColumn
				HeaderText="排名">
        <ItemTemplate> &nbsp;&nbsp;<%# Container.ItemIndex + 1%> </ItemTemplate>
        <ItemStyle HorizontalAlign="left" Width="50" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="网址">
        <ItemTemplate> <a href="<%#((string[])Container.DataItem)[1] %>" target="_blank"><%#((string[])Container.DataItem)[0] %></a> </ItemTemplate>
        <ItemStyle HorizontalAlign="left" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </div>
</div>
</form>
</body>
</html>