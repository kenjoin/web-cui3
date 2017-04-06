<%@ Page language="c#" trace="false" Inherits="SiteServer.CMS.Pages.InnerVoteCheckCode" %>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<link rel="stylesheet" href="<%=IconUrl%>/style.css" type="text/css" />
<link rel="stylesheet" href="<%=IconUrl%>/blue.css" type="text/css" />
<title id="htmlTitle" runat="server"></title>
</head>
<body>
<form id="MyForm" runat="server">
<DIV class="column">
<div class="columntitle"><asp:Label ID="VoteTitle" runat="server"></asp:Label></div>
<TABLE cellSpacing="2" cellPadding="2" width="100%" border="0">
  <TBODY>
    <TR align="center">
      <TD height="20">
        
      </TD>
    </TR>
    <TR align="center">
    <TD>
    	投票请输入验证码：<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="ValidateCode" runat="server"/> 
			<asp:Literal ID="ValidateCodeImage" runat="server"></asp:Literal>
			<asp:RequiredFieldValidator
				ControlToValidate="ValidateCode"
				ErrorMessage="*"
				Display="Dynamic"
				runat="server"/>
    </TD>
    </TR>
    </TBODY>
    </TABLE>
</DIV>

<table width="95%" align="center" cellspacing="0" cellpadding="0" >
  <tr>
    <td align="center" >&nbsp;<input type=button class="button" onClick="window.close();return false;" value="提交投票" />								</td>
  </tr>
</table>
</form>

</body>
</html>