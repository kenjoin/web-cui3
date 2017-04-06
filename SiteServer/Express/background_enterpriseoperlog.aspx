<%@ Page Language="C#" Inherits="SiteServer.Express.BackgroundPages.BackgroundEnterPriseOperLog" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<%--</user:Custom>--%>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<user:Custom Type="showpopwin" runat="server" />
<form id="myForm" style="margin: 0" runat="server">
  <bairong:Message runat="server"> </bairong:Message>
  <div class="column">
    <div class="columntitle"> 日志管理</div>
    <div style="text-align:left; padding:10px 0 10px 20px;"> 时间：
      <bairong:DateTimeTextBox class="colorblur" ID="DateFrom" Size="30" runat="server" />
      &nbsp;--至--&nbsp;
      <bairong:DateTimeTextBox class="colorblur" ID="DateTo" Size="30" runat="server" />
      &nbsp;
      <asp:Button  ID="btnsearch" runat="server"  Text="查 询" onclick="btnsearch_Click" />
    </div>
  </div>
  <div class="column">
    <div class="columntitle"> 日志列表</div>
    <asp:DataList ID="MyDataList" ShowHeader="true" CellSpacing="1" CellPadding="0" Align="center" border="0" Width="100%" runat="server" Style="word-break: break-all">
      <HeaderTemplate>
        <tr class="summary-title" style="height: 25px" align="center" >
          <td style="width:10%;">用户名</td>
          <td style="width:30%;">用户所在企业名称</td>
          <td style="width:30%;">操作内容</td>
          <td style="width:12%">用户所在IP地址</td>
          <td style="width:15%;">时间</td>
          <td style="width:3%;">&nbsp;</td>
        </tr>
      </HeaderTemplate>
      <ItemTemplate>
        <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" style="height: 25px" onMouseOut="this.className='tdbg';" align="center">
          <td><asp:Literal ID="ltlUserName" runat="server"></asp:Literal></td>
          <td><asp:Literal ID="ltlTitle" runat="server"></asp:Literal></td>
          <td><asp:Literal ID="ltlContent" runat="server"></asp:Literal></td>
          <td><asp:Literal ID="ltlUserIP" runat="server"></asp:Literal></td>
          <td><asp:Literal ID="ltlDate" runat="server"></asp:Literal></td>
          <td><asp:CheckBox ID="chk_ID" runat="server" />
            <asp:Literal ID="ltlID" runat="server" Visible="false"></asp:Literal></td>
        </tr>
      </ItemTemplate>
    </asp:DataList>
    <bairong:sqlpager id="MySqlPager" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" class="summary-title" Width="100%" cellspacing="0" border="0"></bairong:sqlpager>
    <%=tips%> </div>
  <div style="text-align:left; padding-left:27px;">
    <%--<asp:Button ID="btnset" runat="server" CssClass="button" Text="设为明星企业" onclick="btnset_Click" />&nbsp;
        <asp:Button ID="btncancel" runat="server" CssClass="button" Text="取消设为明星企业" onclick="btncancel_Click" />--%>
    <asp:Button ID="btndelete" runat="server" CssClass="button" Text="删 除" onclick="btndelete_Click" />
  </div>
</form>
</body>
</html>
