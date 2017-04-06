<%@ Page Language="c#" Inherits="SiteServer.Space.Space.Pages.Error"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.Controls" Assembly="SiteServer.Controls" %>
 
 <asp:content contentplaceholderid="ScriptHolder" runat="server">
      
  <asp:PlaceHolder ID="ErrorDetailPlaceHolder" runat="server">
		<html>
<head>
<title>错误提示</title>
<link rel="stylesheet" href="style.css" type="text/css" />
<user:custom ID="Custom1" type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=gb2312"/>
</head>
<body>
<DIV class="column">
	<table width="100%"  style="text-align:center;" cellpadding="4" cellspacing="4" border="0">
	<tr>
	  <td align="center"><asp:Label id="ErrorMessage" ForeColor="#FF0000" runat="server"/></td>
	</tr>
	<%--<tr>
	  <td align="left"><asp:Label id="ErrorDetail" ForeColor="#FF0000" runat="server"/></td>
	</tr>--%>
	</table>	
</DIV>
</body>
</html>
		
 </asp:PlaceHolder> 
 
 </asp:content>
 
  <asp:content contentplaceholderid="StyleHolder" runat="server">
     
  </asp:content>


