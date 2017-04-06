<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundDBSqlQuery" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="3" width="95%" align="center">
    <tr>
      <td align="left"><ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			AllowPaging="true"
			CellPadding="1"
			BorderWidth="1"
AutoGenerateColumns="false"
			OnPageIndexChanged="MyDataGrid_Page"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="1" gridlines="none">
          <HeaderStyle HorizontalAlign="center" Font-Bold="true" Height="25" />
          <ItemStyle Height="25"/>
          <PagerStyle Visible="false" Mode="NumericPages" PageButtonCount="10" HorizontalAlign="Right" />
        </ASP:DataGrid>
        <table width="600" align="left" style="<%=GetPageStyle()%>">
          <tr>
            <td align="right"><table width="100%" height="25" cellpadding="0" cellspacing="0">
                <tr>
                  <td><asp:LinkButton ID="pageFirst" OnClick="NavigationButtonClick" CommandName="FIRST" Runat="server">首页</asp:LinkButton>
                    |
                    <asp:LinkButton ID="pagePrevious" OnClick="NavigationButtonClick" CommandName="PREVIOUS" Runat="server">前页</asp:LinkButton>
                    |
                    <asp:LinkButton ID="pageNext" OnClick="NavigationButtonClick" CommandName="NEXT" Runat="server">后页</asp:LinkButton>
                    |
                    <asp:LinkButton ID="pageLast" OnClick="NavigationButtonClick" CommandName="LAST" Runat="server">尾页</asp:LinkButton></td>
                  <td align="right"> 分页
                    <asp:Label Enabled=False Runat=server ID="currentPage" /></td>
                </tr>
              </table></td>
          </tr>
        </table></td>
    </tr>
  </table>
  <table cellpadding="3" width="95%" align="center">
    <tr  style="BACKGROUND-POSITION:center 50%; BACKGROUND-IMAGE:url(../pic/line.gif); BACKGROUND-REPEAT:repeat-x">
      <td colspan="2" height="5"></td>
    </tr>
    <tr>
      <td width="150" align="right"><bairong:help HelpText="需要执行的数据库查询字符串，此字符串将对数据库进行查询操作，必须以“SELECT”字符串作为开头。" Text="数据库查询字符串：" runat="server" ></bairong:help></td>
      <td align="left" valign="middle"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="80" Rows="6" id="SqlQuery" TextMode="MultiLine" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="SqlQuery" ErrorMessage="*" Display="Dynamic" runat="server" />
        <br>
        <asp:Button class="button" ID="Submit" Text="查 询" OnClick="Submit_OnClick" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</html>
