<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundVoteView" %>
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
    <div class="columntitle">查看投票(总票数：<strong><%=TotalVoteNum%></strong> )</div>
    <asp:Label id="TheTitle" runat="server"/>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowFooter="false"
  		    ShowHeader="false"
			CellPadding="2"
			BorderWidth="0"
AutoGenerateColumns="false"
			DataKeyField="VoteItemID"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="2" gridlines="none">
      <ItemStyle Height="25"/>
      <Columns>
      <asp:TemplateColumn>
        <ItemTemplate> <%# Container.ItemIndex + 1%> </ItemTemplate>
        <ItemStyle HorizontalAlign="left"/>
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ltlItemHtml" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle HorizontalAlign="left"/>
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <TABLE height=13 cellSpacing=0 borderColorDark=#ffffff cellPadding=0 width=<%# GetDisplayColorWidth(Convert.ToInt32(DataBinder.Eval(Container.DataItem,"VoteNum")))%> bgColor=<%#DataBinder.Eval(Container.DataItem,"DisplayColor")%> borderColorLight=#000000 border=0>
            <TBODY>
              <TR>
                <TD style="BORDER-RIGHT: 1px solid; BORDER-TOP: 1px solid; BORDER-LEFT: 1px solid; BORDER-BOTTOM: 1px solid" vAlign=center width="100%"></TD>
              </TR>
            </TBODY>
          </TABLE>
        </ItemTemplate>
        <ItemStyle HorizontalAlign="left" Width="300"/>
      </asp:TemplateColumn>
      <asp:TemplateColumn >
        <ItemTemplate> <%# DataBinder.Eval(Container.DataItem,"VoteNum")%>票（<%# GetDisplayColorWidth(Convert.ToInt32(DataBinder.Eval(Container.DataItem,"VoteNum")))%>） </ItemTemplate>
        <ItemStyle Width="100" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </DIV>
  <table width="95%" align="center" cellspacing="0" cellpadding="0" >
    <tr>
      <td align="center" >&nbsp;
        <input type=button class="button" onClick="location.href='background_vote.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>';" value="返 回" /></td>
        </td>
    </tr>
  </table>
</form>
</body>
</html>