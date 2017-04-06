<%@ Page Language="C#" Inherits="UserCenter.System.Platform.Payment" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script src="../../sitefiles/bairong/Scripts/global.v1.3.5.js" type="text/javascript"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/admin/admin.css" rel="stylesheet" type="text/css" />

    <title></title>
      <style type="text/css">
    .cardInfo{font-size:12px; color:#444}
    </style>
</head>
<body>
     <form id="form1" runat="server">
<div class="path">
   <p>当前位置：消费中心<span>&gt;</span>在线充值</p>
</div>
<div class="main-cont">
   <h3 class="title">在线充值</h3>
</div>
 <table class="table" width="100%" border="0" cellpadding="0" cellspacing="0" id="dataList">
 <thead class="tb-tit-bg">
  <tr>
                  <th width="5%"><div class="th-gap">选择</div></th>
                  <th><div class="th-gap">点卡类型</div></th>
                  <th><div class="th-gap">点数</div></th>
                  <th><div class="th-gap">购买价格</div></th>
                </tr>
                </thead>
                <tbody  id="recordList">
 <asp:Repeater ID="dlContents"  runat="server">
      <itemtemplate>
      <tr>
      <td><input type="radio" name="CardTypeID" value='<%#DataBinder.Eval(Container.DataItem,"CardTypeID") %>'/></td>
   <td><asp:Literal ID="ltlNameType" runat="server"></asp:Literal></td>
   <td><asp:Literal ID="ltlCartCount" runat="server"></asp:Literal></td>
   <td><asp:Literal ID="ltlPrice" runat="server"></asp:Literal></td>
   </tr>
       </itemtemplate>
</asp:Repeater>
</tbody>
<tfoot class="td-foot-bg">
                    	<tr>
                    		<td colspan="4" height="40">
                            
                            <div class="pre-next">
                      <bairong:sqlpager id="MySqlPager" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing="0" border="0"></bairong:sqlpager>
                      </div>
                      
                      <asp:LinkButton ID="BuyCard" class="btn-general highlight" runat="server"><span>购买</span></asp:LinkButton>
                            </td>
                   		</tr>
                    </tfoot>
</table>

    </form>
</body>
</html>
