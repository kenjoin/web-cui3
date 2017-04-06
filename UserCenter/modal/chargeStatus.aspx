<%@ Page Language="C#" Inherits="UserCenter.System.Modal.ChargeStatus" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

 <link href="../css/admin/admin.css" rel="stylesheet" type="text/css" media="screen"/>
<style type="text/css">
*{font-size:12px;}

</style>
 
</head>
<body>
    <form id="form1" runat="server">
    <div class="path">
      <p>当前位置：消费中心<span>&gt;</span>充值卡充值<span>&gt;</span>充值信息</p>
   </div>
   <div class="main-cont">
   <h3 class="title">充值信息</h3>
</div>

    <asp:Panel  runat="server" ID="sucess">
    <div class="bottombg"></div>
    <table  width="80%" cellpadding="2" cellspacing="12" class="cardInfo" align="center">
        <tr>
            <th colspan="2" class="suc" valign="middle">
                充值成功</th>
        </tr>
        <tr>
          <td width="30%">充值卡卡号:</td>
          <td><asp:Literal ID="ltlcardSN" runat="server"></asp:Literal></td>
        </tr>
         <tr>
          <td>充值类型:</td>
          <td><asp:Literal ID="ltlcardType" runat="server"></asp:Literal></td>
        </tr>
          <tr>
          <td>充值卡面值:</td>
          <td><asp:Literal ID="ltlPrice" runat="server"></asp:Literal></td>
        </tr>
          <tr>
             <td>充值点数:</td>
             <td><asp:Literal ID="ltlCount" runat="server"></asp:Literal></td>
        </tr> 
         <tr>
             <td></td>
             <td><input  class="button" value="返回"  onclick="location.href='<%=returnUrl %>'" type="button" /></td>
        </tr> 

    </table>
    
    <div class="topbg"></div>
   </asp:Panel>
    <asp:Panel  runat="server" ID="fail">
    <div class="bottombg"></div>
         <table  width="80%" cellpadding="2" cellspacing="12" class="cardInfo" align="center">
        <tr>
            <th colspan="2" class="fai">
                充值失败</th>
        </tr>
        <tr>
            <td>
             产生错误的可能原因：卡号或密码错误.
            </td>
            
        </tr>
                 <tr>
             <td></td>
             <td><input  class="button" value="返回"  onclick="location.href='<%=returnUrl %>'" type="button" /></td>
        </tr>
        </table>
    <div class="topbg"></div>
    </asp:Panel>
    </form>
</body>
</html> 
