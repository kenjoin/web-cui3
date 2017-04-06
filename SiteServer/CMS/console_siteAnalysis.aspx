<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.ConsoleSiteAnalysis" enableViewState = "false" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">选择时间段&nbsp;<a href="http://help.siteserver.cn/manage/223/808.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看站点数据统计帮助" align="absmiddle"></a></div>
    <div style="padding:3px; text-align:left"> 开始时间：
      <bairong:DateTimeTextBox id="StartDate" class="colorblur" Columns="30" runat="server" />
      &nbsp;&nbsp;
      结束时间：
      <bairong:DateTimeTextBox id="EndDate" class="colorblur" Columns="30" runat="server" />
      &nbsp;&nbsp;
      <asp:Button class="button" id="Analysis" style="margin-bottom:0px;" OnClick="Analysis_OnClick" Text="分 析" runat="server" />
    </div>
  </DIV>
  <DIV class="column">
    <div class="columntitle">站点数据统计</div>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="2"
			AllowPaging="false"
			BorderWidth="0"
AutoGenerateColumns="false"
			DataKeyField="PublishmentSystemID"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="2" gridlines="none">
      <HeaderStyle HorizontalAlign="center" Height="25" />
      <EditItemStyle CssClass="tdbg-dark" />
      <ItemStyle Height="25"/>
      <Columns>
      <asp:TemplateColumn
				HeaderText="站点名称">
        <ItemTemplate> <%#DataBinder.Eval(Container.DataItem, "PublishmentSystemName")%> </ItemTemplate>
        <ItemStyle Width="250" HorizontalAlign="left"/>
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="新增信息数目">
        <ItemTemplate>
          <asp:Literal ID="ltlNewContentNum" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="100" HorizontalAlign="center"/>
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="更新信息数目">
        <ItemTemplate>
          <asp:Literal ID="ltlUpdateContentNum" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="100" HorizontalAlign="center"/>
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="新增评论数目">
        <ItemTemplate>
          <asp:Literal ID="ltlNewRemarkNum" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="100" HorizontalAlign="center"/>
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="合计">
        <ItemTemplate>
          <asp:Literal ID="ltlHorizentalTotalNum" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="100" HorizontalAlign="center"/>
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </DIV>
  <DIV class="column">
    <div class="columntitle">总计</div>
    <table cellspacing="2" cellpadding="2" Align="center" border="0" style="width:100%">
      <tr class="summary-title" align="Center" style="height:25px;">
        <td>所有站点</td>
        <td>新增信息数目</td>
        <td>更新信息数目</td>
        <td>新增评论数目</td>
        <td>合计</td>
      </tr>
      <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';" style="height:25px;">
        <td align="Center" style="width:250px;"> 总计 </td>
        <td align="Center" style="width:100px;"><%=GetVerticalNum(NEW_CONTENT)%></td>
        <td align="Center" style="width:100px;"><%=GetVerticalNum(UPDATE_CONTENT)%></td>
        <td align="Center" style="width:100px;"><%=GetVerticalNum(NEW_REMARK)%></td>
        <td align="Center" style="width:100px;"><%=GetVerticalTotalNum()%></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</html>