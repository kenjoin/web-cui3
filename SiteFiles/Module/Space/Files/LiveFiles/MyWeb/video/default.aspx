<%@ Page Language="C#" Inherits="SiteServer.Space.MyWeb.Pages.MyWebVideo" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.MyWeb.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">
	
<div id="content">
    <DIV class="clearfix" id="innerContent">
      <DIV id="innerAppList">
        <space:MyWebNav runat="server" directoryName="video"></space:MyWebNav>
      </DIV>
      <DIV id="appPage">
        <DIV id="innerAppPage">
          <div style="padding-left:10px; padding-top:10px;">
          <space:MyWebVideoContents runat="server" />
          </div>
        </DIV>
      </DIV>
    </DIV>
  </div>
  
</asp:content>