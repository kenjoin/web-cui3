<%@ Page Language="C#"  Inherits="BaiRong.BackgroundPages.BackgroundCard" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<!--#include file="../inc/html_head.inc"-->
<user:custom ID="Custom1" type="style" runat="server"></user:custom>
    <title></title>
</head>
<body>
    <form id="myForm" runat="server">
    <div class="column">
    <div class="columntitle">管理点卡</div>
    <table width="100%" border="0" align="center" cellPadding="2" cellSpacing="2">
    <tr  class="summary-title">
      <td>状态:          
            <asp:DropDownList ID="CardStatusDropDownList" AutoPostBack="true" 
              runat="server" 
              OnSelectedIndexChanged="CardStatusDropDownList_SelectedIndexChanged"  >

            </asp:DropDownList>&nbsp;&nbsp;
      <asp:Button class="button" style="MARGIN-BOTTOM: 0px" id="Search" text="搜 索"  runat="server" OnClick="Search_OnClick"/></td>
    </tr>
    </table>
    </div>
    <div class="column" id="contents">
     <div  class="columntitle">管理点卡</div>
     <asp:DataList ID="MyDataList" ShowHeader="true" cellspacing="1" cellpadding="1" Align="center" border="0" Width="100%" runat="server" >
     <HeaderTemplate>
     <tr  class="summary-title" style="HEIGHT: 25px" align="center">
            <td>卡号</td>
            <td>密码</td>
            <td>点卡类型</td>
            <td>生成日期</td>
            <td>有效日期</td>
            <td>使用日期</td>
            <td>状态</td>
            <td>使用会员</td>
            <td><input type="checkbox" onClick="_checkAll(document.getElementById('contents'),this.checked);"/></td>
        </tr>
     </HeaderTemplate>
     <ItemTemplate>
      <tr  onMouseOver="this.className='tdbg-dark';" style="HEIGHT: 25px" onMouseOut="this.className='tdbg';" align="center">
      <td><asp:Literal ID="ltlCardSN" runat="server"></asp:Literal></td>
      <td><asp:Literal ID="ltlCardPassword" runat="server"></asp:Literal></td>
      <td><asp:Literal ID="ltlCardType" runat="server"></asp:Literal></td>
      <td><asp:Literal ID="ltlCreateTime" runat="server"></asp:Literal></td>
      <td><asp:Literal ID="ltlEndTime" runat="server"></asp:Literal></td>
      <td><asp:Literal ID="ltlUseTime" runat="server"></asp:Literal></td>
      <td><asp:Literal ID="ltlStatus" runat="server"></asp:Literal></td>
      <td><asp:Literal ID="ltlUserName" runat="server"></asp:Literal></td>
      <td><input type="checkbox" name="CardIDCollection" value='<%#DataBinder.Eval(Container.DataItem, "CardID")%>' /></td>
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
                <asp:Button class="button" id="AddCard" Text="生成点卡" runat="server" OnClick="AddCard_OnClick"  />
               <asp:Button class="button" id="Delete" Text="删除" runat="server"  />
            </td>
          </tr>
        </table></td>
    </tr>
  </table>
    </form>
</body>
</html>
