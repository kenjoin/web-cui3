<%@ Page language="c#" trace="false" enableViewState="false" Inherits="SiteServer.CMS.Pages.InnerVote" %>

<TABLE cellSpacing="2" cellPadding="2" width="<%=Width%>" border="0">
<style type="text/css">
.is_button {
	padding:0px 4px;
	height:20px;
	cursor:pointer;
	margin-top:2px;
	border:1px #93b9dc solid;
	background:url(<%=IconUrl%>/button_bg.gif) repeat;
	font-size:12px;
	padding-top:2px;
	color:#000000
}
</style>
    <TBODY>
      <TR>
        <TD height="30" align="center" style="<%=TitleStyle%>"><asp:Literal ID="VoteTitle" runat="server"></asp:Literal></TD>
      </TR>
      <TR>
        <TD align="center">
          <ASP:DataList id="MyDataList" runat="server"
			Align="center"
			ShowFooter="false"
  		    ShowHeader="false"
			CellPadding="2"
			BorderWidth="0"
			CellSpacing="2"
            ItemStyle-VerticalAlign="middle">
			<itemtemplate>
            	<table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="20" align="center" valign="middle" style="padding:2px;"><asp:Literal ID="VoteSelect" runat="server"></asp:Literal></td>
                    <td align="left" valign="middle"><asp:Literal ID="VoteItemTitle" runat="server"></asp:Literal></td>
                  </tr>
                </table>
        	</itemtemplate>
          </ASP:DataList>
        </TD>
      </TR>
      <TR>
        <TD align="center">
          <TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
            <TBODY>
              <TR vAlign="middle" height="30">
                <TD align="right"><asp:Literal ID="VoteButton" runat="server"></asp:Literal></TD>
                <TD width="10%">&nbsp;</TD>
                <TD align="left"><asp:Literal ID="ViewButton" runat="server"></asp:Literal></TD>
              </TR>
            </TBODY>
          </TABLE>
        </TD>
      </TR>
    </TBODY>
</TABLE>