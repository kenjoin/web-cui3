<%@ Page language="c#" trace="false" Inherits="SiteServer.CMS.Pages.InnerVoteResults" %>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<link rel="stylesheet" href="<%=IconUrl%>/style.css" type="text/css" />
<link rel="stylesheet" href="<%=IconUrl%>/blue.css" type="text/css" />
<title id="htmlTitle" runat="server"></title>
</head>
<body>
<form id="MyForm" runat="server">
<asp:PlaceHolder ID="phCannotVote" runat="server" Visible="false">
<DIV class="column">
<div class="columntitle">投票</div>
<TABLE cellSpacing="2" cellPadding="2" width="100%" border="0">
  <TBODY>
    <TR align="center">
      <TD height="30">
        对不起，您已经参加了投票!
      </TD>
    </TR>
    <tr align="center">
        <td align="center" >&nbsp;<input type=button class="button" onClick="window.close();return false;" value="关 闭" />								</td>
  </tr>
    </TBODY>
</TABLE>
</DIV>
</asp:PlaceHolder>
<asp:PlaceHolder ID="phValidateCode" runat="server">
<DIV class="column">
<div class="columntitle">投票</div>
<TABLE cellSpacing="2" cellPadding="2" width="100%" border="0">
  <TBODY>
    <TR align="center">
      <TD style="color:Red">
        <asp:Literal ID="ltlMessage" runat="server"/>
      </TD>
    </TR>
    <TR align="center">
      <TD height="80">
        投票请输入验证码：<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="ValidateCode" Width="60" runat="server"/> 
			<asp:Literal ID="ValidateCodeImage" runat="server"></asp:Literal>
			<asp:RequiredFieldValidator
				ControlToValidate="ValidateCode"
				ErrorMessage="*"
				Display="Dynamic"
				runat="server"/>
      </TD>
    </TR>
    <TR align="center">
    <TD>
    	&nbsp;<asp:Button class="button" id="Submit" text="提交投票" onclick="Submit_OnClick" runat="server" />
    </TD>
    </TR>
    </TBODY>
</TABLE>
</DIV>
</asp:PlaceHolder>
<asp:PlaceHolder ID="phResults" runat="server">
<DIV class="column">
<div class="columntitle">总票数：<strong><%=TotalVoteNum%></strong></div>
<TABLE cellSpacing="2" cellPadding="2" width="100%" border="0">
  <TBODY>
    <TR align="center">
      <TD height="40">
        <asp:Label ID="VoteTitle" runat="server"></asp:Label>
      </TD>
    </TR>
    <TR align="center">
      <TD><ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowFooter="false"
  		    ShowHeader="false"
			CellPadding="2"
			BorderWidth="0"
AutoGenerateColumns="false"
			DataKeyField="VoteItemID"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="2" >
		<ItemStyle Height="25"/>
	
		<Columns>
			<asp:TemplateColumn>
				<ItemTemplate>
					<asp:Literal ID="ltlTitle" runat="server"></asp:Literal>
				</ItemTemplate>
				<ItemStyle HorizontalAlign="left"/>
			</asp:TemplateColumn>
			<asp:TemplateColumn>
				<ItemTemplate>
					<asp:Literal ID="ltlColor" runat="server"></asp:Literal>
				</ItemTemplate>
				<ItemStyle Width="30%" HorizontalAlign="left"/>
			</asp:TemplateColumn>
			<asp:TemplateColumn >
				<ItemTemplate>
					<asp:Literal ID="ltlCount" runat="server"></asp:Literal>
				</ItemTemplate>
				<ItemStyle Width="70" HorizontalAlign="center" />
			</asp:TemplateColumn>
		</Columns>
	</ASP:DataGrid>
    </TD>
    </TR>
    </TBODY>
    </TABLE>
</DIV>

<table width="95%" align="center" cellspacing="0" cellpadding="0" >
  <tr>
    <td align="center" >&nbsp;<input type=button class="button" onClick="window.close();return false;" value="关 闭" />								</td>
  </tr>
</table>
</asp:PlaceHolder>
</form>

</body>
</html>