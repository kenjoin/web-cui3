<%@ Page Language="C#" Inherits="UserCenter.System.Platform.Recharge" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/admin/admin.css" rel="stylesheet" type="text/css" media="screen"/>
<bairong:Code  type="JQuery" runat="server" />
<script language="javascript" charset="gb2312" src="/sitefiles/bairong/scripts/global.v1.3.5.js"></script>
    <style type="text/css">
    .cardInfo{font-size:12px; color:#444}
    </style>

</head>
<body>
<user:custom  type="showpopwin" runat="server" />
    <form id="form1" runat="server">
<div class="path">
   <p>当前位置：消费中心<span>&gt;</span>充值卡充值</p>
</div>
<div class="main-cont">
   <h3 class="title">充值卡充值</h3>
</div>
<table width="95%" cellpadding="2" cellspacing="12" class="cardInfo" align="center">
 <tr>
        <td width="10%">充值的用户名:</td>
        <td><asp:Literal runat="server" ID="ltlUserName"></asp:Literal></td>
    </tr>
     <tr>
        <td>当前可用点券:</td>
        <td><asp:Literal runat="server" ID="ltlCard"></asp:Literal></td>
    </tr>
    <tr>
        <td>输入充值卡卡号:</td>
        <td><asp:TextBox ID="CardSN" runat="server"  class="input-txt" size="30"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="CardSN"></asp:RequiredFieldValidator>
       </td>
    </tr>
     <tr>
        <td>输入充值卡密码:</td>
        <td><asp:TextBox ID="CardPassword" runat="server" TextMode="Password"  class="input-txt" size="30"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="CardPassword"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td></td>
        <td><asp:LinkButton id="charge" class="btn-general highlight" OnClick="charge_OnClick" runat="server"><span>充值</span></asp:LinkButton></td>
    </tr>
</table>

    </form>
</body>
</html>
