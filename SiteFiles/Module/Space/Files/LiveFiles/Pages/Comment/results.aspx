<%@ Page language="c#" trace="false" enableViewState="false" Inherits="SiteServer.Space.Space.Inner.CommentResults" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<TABLE cellSpacing="2" cellPadding="2" width="100%>" border="0">
<style type="text/css">
.is_container{ clear: both; margin: 0 auto; padding: 1px; text-align: center; margin-top: 8px; width:100% }
.is_success{ margin: 0 auto; font: 14px Arial, Helvetica, sans-serif; color: #090; padding: 10px 10px 10px 45px; width: 100%; background: url(<%=IconUrl%>/success.gif) no-repeat left center; text-align: left; line-height: 160%; font-weight: bold; }
.is_failure{ margin: 0 auto; font: 14px Arial, Helvetica, sans-serif; color:#CC0000; padding: 10px 10px 10px 45px; width: 100%; background: url(<%=IconUrl%>/failure.gif) no-repeat left center; text-align: left; line-height: 160%; font-weight: bold; }
</style>
<TBODY><tr><td align="center">
<asp:PlaceHolder ID="PlaceHolderSuccess" runat="server" Visible="false">
<div class="is_container">
    <div class="is_success"><asp:Literal ID="MessageSuccess" runat="server"></asp:Literal></div>
</div>
</asp:PlaceHolder>
<asp:PlaceHolder ID="PlaceHolderFailure" runat="server" Visible="false">
<div class="is_container">
    <div class="is_failure"><asp:Literal ID="MessageFailure" runat="server"></asp:Literal></div>
</div>
</asp:PlaceHolder>
</td></tr></TBODY></TABLE>