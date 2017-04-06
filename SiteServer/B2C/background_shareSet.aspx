<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundShareSet" EnableEventValidation="false" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BShare分享插件设置</title>
    <link rel="stylesheet" href="../style.css" type="text/css" />
    <bairong:Code type="Jquery" runat="server" />
    <user:custom type="style" runat="server"></user:custom>
    <style type="text/css" >
        table{background-color:#CFCFCF}
    table tr td{background-color:#ffffff}
    </style>
 <script language="javascript" type="text/javascript">
     $(function () {
         $("#selectStyle").click(function () {
             
             var posLeft = window.event.clientX - 100;
             var posTop = window.event.clientY-100;
             var uuid = "<%=uuid %>";
             window.open('http://www.bshare.cn/moreStylesEmbed?uuid=' + uuid + '', 'getCode', 'scrollbars=yes,width=780px,height=300px,top=' + posTop + ',left=' + posLeft);
         })
     })
  
 </script>
</head>
<body>
<form id="form1" runat="server">
<div class="column">
<div class="columntitle">分享插件设置</div>
<table width="100%" border="0" align="center" cellpadding="6" cellspacing="1"  class="tbtitle">
  <tr>
    <td  colspan="2" align="left" class="summary-title" ><strong >bShare分享插件</strong></td>
  </tr>
  <tr>
    <td colspan="2"  align="left" >&nbsp;您已经开通bShare服务：</td>
  </tr>
  <tr>
    <td width="20%" align="right"   >&nbsp;<b style="color:#1274BA">用户名：</b></td>
    <td width="80%"  align="left"  >&nbsp;&nbsp;<asp:Label ID="txtName" runat="server"></asp:Label></td>
  </tr>
  <tr>
    <td align="right"  >&nbsp;<b style="color:#1274BA">UUID：</b></td>
    <td  align="left" >&nbsp; <asp:Label ID="txtUuid" runat="server"></asp:Label></td>
  </tr>
  <tr>
    <td colspan="2" align="right"  >&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" align="left" bgcolor="#F9FCEF">前台调用样式/代码：</td>
  </tr>
  <tr>
    <td colspan="2" align="left"  >
   
    <p>内容页面中直接加入<span style="color:red">&lt;stl:action type=&quot;Share&quot;&gt;&lt;/stl:action&gt;
</span><br />
      即可调用分享插件。</p>
      <p>
        <asp:TextBox id="bscode"  runat="server" TextMode="MultiLine" Columns="40" Rows="3" >        </asp:TextBox>
       
       <input  id="selectStyle" value="选择样式" type="button" />
      
       <asp:Button ID="btnSetStyle" runat="server" Text="保存样式" OnClick="btnSetStyle_Click" />
     
       </p>
      
      </td>
  </tr>
  <tr>
    <td colspan="2" align="left"  >样式预览：</td>
  </tr>
  <tr>
    <td colspan="2" align="left"  >

    <asp:Literal runat="server" ID="ltlScriptView"></asp:Literal>
          </td>
  </tr>
  </table>
  </div>
  </form>
</body>
</html>
