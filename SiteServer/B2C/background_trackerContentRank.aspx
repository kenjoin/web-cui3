<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundTrackerContentRank" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>

<html>
<head runat="server">
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<bairong:Code type="fancybox" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form id="myForm" runat="server">
<bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
<div class="columntitle">内容流量排名</div>
<ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="2"
			BorderWidth="0"
AutoGenerateColumns="false"
			AllowPaging="true"
			DataKeyField="PageContentID"
			OnPageIndexChanged="MyDataGrid_Page"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="2" gridlines="none">
          <HeaderStyle HorizontalAlign="center" Height="25" />
          <EditItemStyle CssClass="tdbg-dark" />
          <ItemStyle Height="23"/>
		  <PagerStyle Mode="NumericPages" PageButtonCount="10" HorizontalAlign="Right" />
		  
          <Columns>
          <asp:TemplateColumn HeaderText="内容标题">
            <ItemTemplate><asp:Literal ID="ltlTitle" runat="server"></asp:Literal></asp:Literal></ItemTemplate>
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
          <asp:TemplateColumn HeaderText="当天访问量">
            <ItemTemplate> <%# GetTodayAccessNum(Convert.ToInt32(DataBinder.Eval(Container.DataItem,"PageContentID")))%> </ItemTemplate>
            <ItemStyle Width="70" HorizontalAlign="center" />
          </asp:TemplateColumn>
          </Columns>
        </ASP:DataGrid>
      </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><asp:LinkButton ID="pageFirst" OnClick="NavigationButtonClick" CommandName="FIRST" Runat="server">首页</asp:LinkButton>
            |
              <asp:LinkButton ID="pagePrevious" OnClick="NavigationButtonClick" CommandName="PREVIOUS" Runat="server">前页</asp:LinkButton>
            |
            <asp:LinkButton ID="pageNext" OnClick="NavigationButtonClick" CommandName="NEXT" Runat="server">后页</asp:LinkButton>
            |
            <asp:LinkButton ID="pageLast" OnClick="NavigationButtonClick" CommandName="LAST" Runat="server">尾页</asp:LinkButton>
            </td>
            <td align="right"> 分页
                <asp:Label Enabled=False Runat=server ID="currentPage" />    
          </td>
          </tr>
      </table></td>
    </tr>
  </table>
</form>
</body>
</html>
