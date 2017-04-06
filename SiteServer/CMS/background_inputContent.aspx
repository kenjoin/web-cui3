<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundInputContent" %>
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
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column" id="contents">
    <div class="columntitle">
      <asp:Literal ID="ltlInputName" runat="server" />
    </div>
    <asp:DataList ID="MyDataList" ShowHeader="true" cellspacing="1" cellpadding="1" Align="center" border="0" Width="100%" runat="server" style="word-break: break-all">
      <headertemplate>
        <tr class="summary-title" style="height:25px;">
          <asp:Literal ID="ColumnHeadRows" runat="server"></asp:Literal>
          <td align="Center" style="width:80px;">添加时间</td>
          <td align="Center" style="width:40px;">&nbsp;</td>
          <td align="Center" style="width:40px;">&nbsp;</td>
          <asp:Literal ID="HeadRowReply" runat="server"></asp:Literal>
          <td align="right" style="width:20px;"><input type="checkbox" onClick="_checkAll(document.getElementById('contents'),this.checked);"></td>
        </tr>
      </headertemplate>
      <itemtemplate>
        <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';" style="height:25px;">
          <asp:Literal ID="ColumnItemRows" runat="server"></asp:Literal>
          <td align="Center" style="width:80px;"><asp:Literal ID="ItemDateTime" runat="server"></asp:Literal></td>
          <td align="Center" style="width:40px;"><asp:Literal ID="ItemEidtRow" runat="server"></asp:Literal></td>
          <td align="Center" style="width:40px;"><asp:Literal ID="ItemViewRow" runat="server"></asp:Literal></td>
          <asp:Literal ID="ItemRowReply" runat="server"></asp:Literal>
          <td align="right" style="width:20px;"><input type="checkbox" name="ContentIDCollection" value='<%#DataBinder.Eval(Container.DataItem, "ID")%>' /></td>
        </tr>
      </itemtemplate>
    </asp:DataList>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><bairong:sqlpager id="MySqlPager" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0></bairong:sqlpager></td>
          </tr>
          <tr>
            <td><asp:Button class="button" id="AddButton" Text="添加信息" runat="server" />
              &nbsp;
              <asp:Button class="button" id="ImportExcel" runat="server" Text="导入Excel"></asp:Button>
              &nbsp;
              <asp:Button class="button" id="ExportExcel" runat="server" Text="导出Excel"></asp:Button>
              &nbsp;
              <asp:Button class="button" id="TaxisButton" Text="排 序" runat="server" />
              &nbsp;
              <asp:Button class="button" id="Check" OnClick="Check_OnClick" Text="审 核" runat="server" />
              &nbsp;
              <asp:Button class="button" id="Delete" OnClick="Delete_OnClick" Text="删 除" runat="server" />
              &nbsp;
              <asp:Button class="button" id="SelectListButton" Text="选择列表项" runat="server" />
              &nbsp;
              <asp:Button class="button" id="SelectFormButton" Text="选择表单项" runat="server" />
              &nbsp; </td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>