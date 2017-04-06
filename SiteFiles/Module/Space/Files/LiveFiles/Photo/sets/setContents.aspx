<%@ Page SmartNavigation="False" Language="C#" Inherits="SiteServer.Space.Photo.Pages.PhotoSetContents" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>
<asp:content contentplaceholderid="ContentHolder" runat="server">
<style>
#ViewSet {
	MARGIN: 10px;
}
#ViewSet #About {
	PADDING-RIGHT: 35px;
	PADDING-LEFT: 25px;
	PADDING-BOTTOM: 25px;
	PADDING-TOP: 25px
}
#ViewSet #About .Desc {
	FONT-SIZE: 16px
}
#ViewSet #Contents {
	PADDING-RIGHT: 0px;
	PADDING-BOTTOM: 0px;
	PADDING-TOP: 20px
}
</style>
<TABLE id=ViewSet cellSpacing=0 align=center border=0>
  <TBODY>
    <TR vAlign=top>
      <TD id=About><bairong:NoTagText id="SetPhoto" runat="server" />
        <P class=Desc>
          <bairong:NoTagText id="SetDescription" runat="server" />
        </P>
        <P>
          <bairong:NoTagText id="PhotoCount" runat="server" />
          幅图片 |
          <bairong:NoTagText id="DetailView" runat="server" />
          |
          <bairong:NoTagText id="SetManager" runat="server" />
        </P>
      </TD>
      <TD id=Contents width="100%">
      <space:PhotoSquareContents runat="server" />
        </TD>
    </TR>
  </TBODY>
</TABLE>
</asp:content>
