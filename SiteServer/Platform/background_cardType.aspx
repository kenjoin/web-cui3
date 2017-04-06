<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundCardType" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<!--#include file="../inc/html_head.inc"-->
<title></title>
<user:custom type="style" runat="server"></user:custom>
</head>
<body>
    <form id="myForm" runat="server">
     <div class="column">
     <div  class="columntitle">管理点卡类型</div>
      <asp:DataList ID="MyDataList" ShowHeader="true" cellspacing="1" cellpadding="1" Align="center" border="0" Width="100%" runat="server" >
      <HeaderTemplate>
      <tr  class="summary-title" style="HEIGHT: 25px" align="center">
            <td>类型名称</td>
            <td>金额</td>
            <td>点数</td>
            <td>操作</td>
        </tr>
      </HeaderTemplate>
      <ItemTemplate>
         <tr  onMouseOver="this.className='tdbg-dark';" style="HEIGHT: 25px" onMouseOut="this.className='tdbg';" align="center">
                <td><asp:Literal ID="ltlNameType" runat="server"></asp:Literal></td>
                <td><asp:Literal ID="ltlPrice" runat="server"></asp:Literal></td>
                <td><asp:Literal ID="ltlCartCount" runat="server"></asp:Literal></td>

                <td><asp:HyperLink ID="hlEditLink" runat="server" Text="编辑"></asp:HyperLink>
                <a href="background_cardType.aspx?Delete=True&CardTypeID=<%#DataBinder.Eval(Container.DataItem,"CardTypeID") %>" onclick="javascript:return confirm('此操作将删除类型“<%# DataBinder.Eval(Container.DataItem,"NameType")%>”,同时将删除相关充值卡,确认吗？')">删除</a>
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
                <asp:Button class="button" id="AddType" Text="添加点卡类型" runat="server" OnClick="AddType_OnClick" />
               
            </td>
          </tr>
        </table></td>
    </tr>
  </table>
    </form>
</body>
</html>
