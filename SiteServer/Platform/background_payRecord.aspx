<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundPayRecord" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<!--#include file="../inc/html_head.inc"-->
    <title></title>
    <user:custom ID="Custom1" type="style" runat="server"></user:custom>
</head>
<body>
    <form id="myForm" runat="server">
     <div class="column" id="contents">
     <div  class="columntitle">管理支付记录</div>
     <asp:DataList ID="MyDataList" ShowHeader="true" cellspacing="1" cellpadding="1" Align="center" border="0" Width="100%" runat="server" >
     <HeaderTemplate>
     <tr  class="summary-title" style="HEIGHT: 25px" align="center">
            <td>订单号</td>
            <td>支付者</td>
            <td>支付时间</td>
            <td>支付总额</td>
            <td>支付者IP</td>
            <td>备注</td>
            <td>接口</td>
            <td><input type="checkbox" onClick="_checkAll(document.getElementById('contents'),this.checked);"/></td>
        </tr>
     </HeaderTemplate>
     <ItemTemplate>
      <tr  onMouseOver="this.className='tdbg-dark';" style="HEIGHT: 25px" onMouseOut="this.className='tdbg';" align="center">
      <td><asp:Literal ID="ltlOrderSN" runat="server"></asp:Literal></td>
      <td><asp:Literal ID="ltlUserName" runat="server"></asp:Literal></td>
      <td><asp:Literal ID="ltlPayTime" runat="server"></asp:Literal></td>
      <td><asp:Literal ID="ltlPrice" runat="server"></asp:Literal></td>
      <td><asp:Literal ID="ltlIP" runat="server"></asp:Literal></td>
      <td width="200"><asp:Literal ID="ltlSettingsXML" runat="server"></asp:Literal></td>
      <td><asp:Literal ID="ltlApiType" runat="server"></asp:Literal></td>
      <td><input type="checkbox" name="RecordIDCollection" value='<%#DataBinder.Eval(Container.DataItem, "RecordID")%>' /></td>
      </tr>
     </ItemTemplate>
     </asp:DataList>
     </div>
     <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><bairong:sqlpager id="MySqlPager" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing="0" border="0"></bairong:sqlpager></td>
          </tr>
          <tr>
            <td>
               <asp:Button class="button" id="Delete" Text="删除" runat="server"  />
            </td>
          </tr>
        </table></td>
    </tr>
  </table>
    </form>
</body>
</html>
