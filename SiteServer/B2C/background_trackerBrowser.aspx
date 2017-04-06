<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundTrackerBrowser" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head runat="server">
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">浏览器统计</div>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="2"
			BorderWidth="0"
AutoGenerateColumns="false"
			DataKeyField="Browser"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="2" gridlines="none">
      <HeaderStyle HorizontalAlign="center" Height="25" />
      <EditItemStyle CssClass="tdbg-dark" />
      <ItemStyle Height="23"/>
      <Columns>
      <asp:TemplateColumn HeaderText="浏览器">
        <ItemTemplate> <%# (string)DataBinder.Eval(Container.DataItem,"Browser")%> </ItemTemplate>
        <ItemStyle HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="比例">
        <ItemTemplate>
          <TABLE height=8 cellSpacing=0 cellPadding=0 border=0>
            <TBODY>
              <TR>
                <TD align=right><IMG src="../pic/tracker_transparency_bar_l.gif"></TD>
                <TD><TABLE height=8 cellSpacing=0 cellPadding=0 border=0>
                    <TBODY>
                      <TR>
                        <TD width=<%# GetAccessNumBarWidth(Convert.ToInt32(DataBinder.Eval(Container.DataItem,"AccessNum")))%> background=../pic/tracker_transparency_bar.gif height=8></TD>
                      </TR>
                    </TBODY>
                  </TABLE></TD>
                <TD><IMG src="../pic/tracker_transparency_bar_r.gif"></TD>
              </TR>
            </TBODY>
          </TABLE>
        </ItemTemplate>
        <ItemStyle Width="105" HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:BoundColumn
				HeaderText="总访问量"
				DataField="AccessNum"
				ReadOnly="true">
        <ItemStyle Width="70" HorizontalAlign="center" />
      </asp:BoundColumn>
      <asp:TemplateColumn HeaderText="总访问人数">
        <ItemTemplate> <%# GetUniqueAccessNum((string)DataBinder.Eval(Container.DataItem,"Browser"))%> </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="当天访问量">
        <ItemTemplate> <%# GetTodayAccessNum((string)DataBinder.Eval(Container.DataItem,"Browser"))%> </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="当天访问人数">
        <ItemTemplate> <%# GetTodayUniqueAccessNum((string)DataBinder.Eval(Container.DataItem,"Browser"))%> </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </div>
</form>
</body>
</html>
