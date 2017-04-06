<%@ Page Language="C#" Inherits="UserCenter.System.Platform.BuyAction" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/admin/admin.css" rel="stylesheet" type="text/css" />
      <style type="text/css">
    .cardInfo{font-size:12px; color:#444}
    </style>
</head>
<body>
     <form id="form1" runat="server">
<div class="path">
   <p>当前位置：消费中心<span>&gt;</span>充值卡充值<span>&gt;</span>信息确认</p>
</div>
<div class="main-cont">
   <h3 class="title">信息确认</h3>
</div>

<table width="95%" cellpadding="2" cellspacing="12" class="cardInfo" align="center">
<tr>
    <td colspan="2"><b>你申请购买的产品如下，确认无误后请点击“购买并支付”按钮，进行网上支付，如果支付失败，请与管理员联系其它支付方式：</b> </td>
    
</tr>
 <tr>
        <td width="6%">产品名称:</td>
        <td><asp:Literal runat="server" ID="ltlUserName"></asp:Literal></td>
    </tr>
     <tr>
        <td>产品价格:</td>
        <td><asp:Literal runat="server" ID="ltlCardPrice"></asp:Literal></td>
    </tr>
    <tr>
        <td>产品描述</td>
        <td><asp:Literal runat="server" ID="ltlDescription"></asp:Literal></td>
    </tr>
    <tr>
        <td>支付方式:</td>
        <td><asp:DropDownList ID="ApiType" runat="server"  AutoPostBack="true"></asp:DropDownList ></td>
    </tr>
       <tr>
        <td></td>
        <td><asp:LinkButton ID="BuyCard" class="btn-general highlight" runat="server" OnClick="BuyCard_OnClick" ><span>支付购买</span></asp:LinkButton></td>
    </tr>
</table>

    </form>
</body>
</html>
