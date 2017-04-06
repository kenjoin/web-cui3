<%@ Page Language="C#" Inherits="SiteServer.Space.Space.Inner.UserInfo" ContentType="text/html" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<DIV>
  <DIV style="MARGIN-BOTTOM: 5px; TEXT-ALIGN: center"><asp:Literal ID="ltlImage" runat="server"></asp:Literal></DIV>
  <DIV style="padding:10px;"><asp:Literal ID="ltlSignature" runat="server"></asp:Literal></DIV>
  <DIV id="UserInfoModuleDetail" style="MARGIN-BOTTOM: 5px; OVERFLOW: visible" style="<%=GetDetailStyle()%>">
    
    <asp:DataList ID="dlUser" RepeatColumns="2" Width="100%" CellPadding="2" CellSpacing="2" ItemStyle-Height="28" HorizontalAlign="Center" runat="server">
    	<itemtemplate>
        	<asp:Literal id="ltlDataKey" runat="server" />：<asp:Literal id="ltlDataValue" runat="server" />
        </itemtemplate>
    </asp:DataList>
  </DIV>
  <table align="right">
      <tbody>
        <tr>
          <asp:Literal ID="ltlAction" runat="server"></asp:Literal>
        </tr>
      </tbody>
    </table>
</DIV>
