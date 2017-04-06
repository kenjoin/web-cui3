<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundPayment" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<!--#include file="../inc/html_head.inc"-->
    <title></title>
    <user:custom type="style" runat="server"></user:custom>
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
     <div  class="columntitle">管理支付接口</div>
     <asp:DataList ID="MyDataList" ShowHeader="true" cellspacing="1" cellpadding="1" Align="center" border="0" Width="100%" runat="server" >
        <HeaderTemplate>
        <tr  class="summary-title" style="HEIGHT: 25px" align="center">
            <td>支付方式名称</td>
            <td>支付方式描述</td>
            <td>接口类型</td>
            <td>状态</td>
            <td>上升</td>
            <td>下降</td>
            <td>操作</td>
        </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr  onMouseOver="this.className='tdbg-dark';" style="HEIGHT: 25px" onMouseOut="this.className='tdbg';">
                <td><asp:Literal runat="server" ID="ltlName"></asp:Literal></td>
                <td><asp:Literal runat="server" ID="ltlDescription"></asp:Literal></td>
                <td><asp:Literal runat="server" ID="ltlApiType"></asp:Literal></td>
                <td><asp:Literal runat="server" ID="ltlIsEnable"></asp:Literal></td>
                <td><asp:Literal runat="server" ID="ltlUp"></asp:Literal></td>
                <td><asp:Literal runat="server" ID="ltlDown"></asp:Literal></td>
                <td><asp:HyperLink ID="hlEditLink" runat="server" Text="编辑"></asp:HyperLink>
                <a href="background_payment.aspx?Delete=True&PaymentType=<%# DataBinder.Eval(Container.DataItem,"PaymentType")%>" onclick="javascript:return confirm('此操作将删除接口“<%# DataBinder.Eval(Container.DataItem,"PaymentName")%>”确认吗？')";>删除</a>
                </td>
            </tr>
        </ItemTemplate>
     </asp:DataList>
     </div>
     <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><bairong:sqlpager id="MySqlPager" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0></bairong:sqlpager></td>
          </tr>
          <tr>
            <td>
                <asp:Button class="button" id="AddType" Text="添加接口" runat="server" OnClick="AddType_OnClick" />
               
            </td>
          </tr>
        </table></td>
    </tr>
  </table>
    
    </form>
</body>
</html>
