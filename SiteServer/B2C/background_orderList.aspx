<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundOrderList" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<!--#include file="../inc/html_head.inc"-->
<title></title>
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<bairong:Code type="JQuery" runat="server" /></head>
<body>
<user:custom ID="Custom1" type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <div class="column">
    <div class="columntitle">订单管理</div>
    <table width="100%" border="0" align=center cellPadding="8" cellSpacing="0">
      <tbody>
        <tr class=summary-title align=left>
          <td align=left style="padding-left:20px;">订单号:
            <input type="text" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" />
            &nbsp;&nbsp;
            收货人:
            <input type="text" class="colorblur" onFocus="this.className='colorfocus';" onBlur="this.className='colorblur';" />
            &nbsp;&nbsp;
            订单状态:
            <asp:DropDownList runat="server"></asp:DropDownList>
            &nbsp;&nbsp;
            <input type="button" id="submit" value="检索"  class="button" style="MARGIN-BOTTOM: 0px"  />
            &nbsp;&nbsp; </td>
        </tr>
      </tbody>
    </table>
    <table id="dlContents" width="100%"  cellspacing="2" cellpadding="2" Align="center">
      <tr class="summary-title" style="HEIGHT: 25px" align="center">
        <td>订单号</td>
        <td>下单时间</td>
        <td>订单总额</td>
        <td>收货人</td>
        <td>付款状态</td>
        <td>发货状态</td>
        <td>配送方式</td>
        <td>支付方式</td>
        <td>会员用户名</td>
        <td>订单状态</td>
        <td width="50"></td>
        <td width="50"></td>
        <td width="20"><input type="checkbox" onClick="_checkAll(document.getElementById('dlContents'),this.checked);"></td>
      </tr>
      <tr onMouseOver="this.className='tdbg-dark';" style="HEIGHT: 25px" onMouseOut="this.className='tdbg';">
        <td>12</td>
        <td>12</td>
        <td>12</td>
        <td>12</td>
        <td>12</td>
        <td>12</td>
        <td>12</td>
        <td>12</td>
        <td>12</td>
        <td>12</td>
        <td align="center"><a href="background_orderView.aspx">查看</a></td>
          <td align="center"><a href="background_checkOrder.aspx">编辑</a></td>
        <td><input type="checkbox" name="ContentIDCollection" value='72' /></td>
      </tr>
    </table>
  </div>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><asp:Button class="button" id="AddOrder" Text="添加订单" runat="server" />
              <input class="button" id="Button1" value="删除" type="button"/>
              <input class="button" id="Button2" value="导出" type="button"/></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>
