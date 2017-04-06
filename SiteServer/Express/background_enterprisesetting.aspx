<%@ Page Language="C#" Inherits="SiteServer.Express.BackgroundPages.BackgroundEnterPriseSetting" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<%--</user:Custom>--%>
<bairong:Code Type="Prototype" runat="server" />
<bairong:Code Type="Scriptaculous" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<user:Custom Type="showpopwin" runat="server" />
<form id="myForm" style="margin: 0" runat="server">
  <bairong:Message runat="server"> </bairong:Message>
  <div class="column">
    <div class="columntitle"> 企业管理</div>
    <div style="text-align:left; padding:10px 0 10px 20px;">企业名称：
      <asp:TextBox ID="txtsearch" runat="server" Width="250px"></asp:TextBox>
      &nbsp;
      <asp:Button  ID="btnsearch" runat="server"  Text="查 询" onclick="btnsearch_Click" />
    </div>
  </div>
  <div class="column">
    <div class="columntitle"> 企业列表</div>
    <asp:DataList ID="MyDataList" ShowHeader="true" CellSpacing="1" CellPadding="0" Align="center" border="0" Width="100%" runat="server" Style="word-break: break-all">
      <HeaderTemplate>
        <tr class="summary-title" style="height: 25px" align="center" >
          <td style="width:60%;">企业名称</td>
          <td style="width:15%;">是否明星企业</td>
          <td style="width:10%;">是否显示</td>
          <td style="width:10%;">&nbsp;</td>
          <td style="width:5%;">&nbsp;</td>
        </tr>
      </HeaderTemplate>
      <ItemTemplate>
        <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" style="height: 25px" onMouseOut="this.className='tdbg';" align="center">
          <td><asp:Literal ID="ltlTitle" runat="server"></asp:Literal></td>
          <td><asp:Literal ID="ltlStar" runat="server"></asp:Literal></td>
          <td><asp:Literal ID="ltlVisible" runat="server"></asp:Literal></td>
          <td><a href="background_enterprisesetting.aspx?UserName=<%# DataBinder.Eval(Container.DataItem,"UserName")%>&Delete=True" onClick="javascript:return confirm('此操作将删除公司“<%# DataBinder.Eval(Container.DataItem,"Title")%>”所有相关信息，不可恢复，确认吗？');">删除</a></td>
          <td><asp:CheckBox ID="chk_ID" runat="server" />
            <asp:Literal ID="ltlUserName" runat="server" Visible="false"></asp:Literal></td>
        </tr>
      </ItemTemplate>
    </asp:DataList>
    <bairong:sqlpager id="MySqlPager" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" class="summary-title" Width="100%" cellspacing="0" border="0"></bairong:sqlpager>
    <%=tips%> </div>
  <div style="text-align:left; padding-left:27px;">
    <asp:Button ID="btnset" runat="server" CssClass="button" Text="设为明星企业" onclick="btnset_Click" />
    &nbsp;
    <asp:Button ID="btncancel" runat="server" CssClass="button" Text="取消设为明星企业" onclick="btncancel_Click" />
    &nbsp;
    <asp:Button ID="btnvisibleyes" runat="server" CssClass="button" Text="企业显示"  onclick="btnvisibleyes_Click" />
    &nbsp;
    <asp:Button ID="btnvisibleno" runat="server"  CssClass="button" Text="企业不显示" onclick="btnvisibleno_Click" />
    <%-- <asp:Button ID="btndelete" runat="server" CssClass="button" Text="删除" onclick="btncancel_Click" />--%>
  </div>
</form>
</body>
</html>
