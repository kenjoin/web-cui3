<%@ Page Language="C#"  Inherits="SiteServer.CMS.BackgroundPages.BackgroundShareStatistics" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>BShare分享插件</title>
<link rel="stylesheet" href="../style.css" type="text/css" />
<script src="../Inc/main.js" type="text/javascript"></script>
<user:custom  type="style" runat="server"></user:custom>
</head>
<body>
<form id="form1" runat="server">
<div class="column">
<div class="columntitle">统计信息</div>
<table width="100%" border="0" align="center" cellpadding="3" cellspacing="0" class="tbtitle" >

  <tr>
    <td colspan="2" align="left" bgcolor="#F9FCEF"  class="summary-title">
     &nbsp;&nbsp;&nbsp;时间：从
                    <bairong:DateTimeTextBox id="DateFrom" class="colorblur" Columns="12" runat="server" />
                    &nbsp;到&nbsp;
                    <bairong:DateTimeTextBox id="DateTo" class="colorblur" Columns="12" runat="server" />
       &nbsp;&nbsp;<span>输入指定页面的地址:<asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></span>
      
        <asp:Button ID="btnCheck" runat="server" Text="查询" OnClick="btnCheck_Click" />
    </td>
  </tr>

  <tr>
    <td colspan="2" align="center" bgcolor="#FFFFFF">
    <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" id="head1" style="margin-top:20px">
        <tr>
          <td colspan="2" align="left"><table border="0" cellpadding="0" cellspacing="0" style="height:28px;">
              <tr>
                <td width="84" align="center" style="background:url(../Pic/itemnote2.gif)">&nbsp;平台统计&nbsp;</td>
                <td width="84" align="center" style="background:url(../Pic/itemnote1.gif)"><a href="#" onclick="ShowItem2()"><u>分享统计</u></a></td>
              </tr>
            </table></td>
        </tr>
      </table>
      <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" id="head2" style="display:none;margin-top:20px;line-height:28px;" >
        <tr>
          <td colspan="2" align="left"><table style="height:28" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="84" align="center" style="background:url(../Pic/itemnote1.gif)"><a href="#" onclick="ShowItem1()"><u>平台统计</u></a>&nbsp;</td>
                <td width="84" align="center"  style="background:url(../Pic/itemnote2.gif)">分享统计</td>
              </tr>
            </table></td>
         
        </tr>
      </table>
      <table width="98%"  border="0" align="center" cellpadding="2" cellspacing="2" id="needset" style="border:1px solid #cfcfcf;background:#ffffff;margin-top:-5px;">
        <tr>
          <td width="400%" height="24" align="left" class="bline"><table width="498" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="152">&nbsp;bURL社交影响力分析：</td>
                <td width='346'>&nbsp;</td>
              </tr>
              <tr>
                <td colspan="2"> 说明：数据格式“平台.(访问占用百分比)-访问次数”。 <br />
                  <asp:Literal ID="ltlPlatform" runat="server"></asp:Literal></td>
              </tr>
            </table></td>
        </tr>
      </table>
      <table width="98%"  border="0" align="center" cellpadding="2" cellspacing="2" id="adset" style="border:1px solid #cfcfcf;background:#ffffff; margin-top:-5px;display:none">
        <tr>
          <td height="24" class="bline" align="left" ><table width="498" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="22"><strong>分享统计信息：</strong></td>
              </tr>
              <tr>
                <td height="22"><p>分享量统计表:</p>
                  <p><asp:Literal ID="ltlShareCounts" runat="server"></asp:Literal></p>
                  <p>点击统计表</p>
                  <p><asp:Literal ID="ltlClickCoutns" runat="server"></asp:Literal></p></td>
              </tr>
            </table></td>
        </tr>
      </table></td>
  </tr>
 
</table>
</div>
</form>
</body>
</html>

