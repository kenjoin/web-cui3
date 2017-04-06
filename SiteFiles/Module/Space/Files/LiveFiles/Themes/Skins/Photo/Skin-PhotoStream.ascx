<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<DIV class=Contexts >
  <DIV >
    <DIV style="WIDTH: 230px" >
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
          <TR>
            <TD style="FONT-SIZE: 0px; LINE-HEIGHT: 0px" width=18 height=25><bairong:NoTagText id="OpenLink" runat="server" /></TD>
            <TD><DIV style="BORDER-RIGHT: #f3f3f3 1px solid; PADDING-RIGHT: 4px; BORDER-TOP: #f3f3f3 1px solid; PADDING-LEFT: 4px; FONT-WEIGHT: normal; FONT-SIZE: 12px; PADDING-BOTTOM: 4px; MARGIN: 0px 15px 0px 2px; OVERFLOW: hidden; BORDER-LEFT: #f3f3f3 1px solid; WIDTH: 165px; LINE-HEIGHT: 16px; PADDING-TOP: 3px; BORDER-BOTTOM: #f3f3f3 0px solid; HEIGHT: 14px; font-size:13px; font-weight:bold" ><asp:HyperLink ID="StreamTitleLink" runat="server"></asp:HyperLink></DIV></TD>
          </TR>
        </TBODY>
      </TABLE>
      <DIV id="StreamContent" runat="server" style="DISPLAY: block; FONT-SIZE: 0px; LINE-HEIGHT: 0px; BACKGROUND-COLOR: #f3f3f3" >
        <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
          <TBODY>
            <TR>
              <TD><bairong:NoTagText id="Crap" runat="server" /></TD>
              <TD style="BORDER-TOP: #e3e3e3 1px solid; PADDING-TOP: 10px; BORDER-BOTTOM: #e3e3e3 1px solid" vAlign=top width=170>
			  	<DIV id=prev_next_context_photo_stream >
				  <A id="AjaxPreviousLink" runat="server" href="javascript:undefined;"></A><IMG id="PreviousImageDefault" runat="server" style="BORDER-RIGHT: #ccc 1px solid; BORDER-TOP: #ccc 1px solid; BORDER-LEFT: #ccc 1px solid; BORDER-BOTTOM: #ccc 1px solid; display:none" height=75 width=75><a id="PreviousImageLink" runat="server" href="javascript:undefined;"><IMG id="PreviousImage" runat="server" contentID="0" style="BORDER-RIGHT: #ccc 1px solid; BORDER-TOP: #ccc 1px solid; BORDER-LEFT: #ccc 1px solid; BORDER-BOTTOM: #ccc 1px solid" height=75 width=75></a>
				  <A id="AjaxNextLink" runat="server" href="javascript:undefined;"></A><IMG id="NextImageDefault" runat="server" contentID="0" style="BORDER-RIGHT: #ccc 1px solid; BORDER-TOP: #ccc 1px solid; BORDER-LEFT: #ccc 1px solid; BORDER-BOTTOM: #ccc 1px solid;display:none" height=75 width=75><a id="NextImageLink" runat="server" href="javascript:undefined;"><IMG id="NextImage" runat="server" contentID="0" style="BORDER-RIGHT: #ccc 1px solid; BORDER-TOP: #ccc 1px solid; BORDER-LEFT: #ccc 1px solid; BORDER-BOTTOM: #ccc 1px solid" height=75 width=75></a>
				</DIV>
			  </TD>
              <TD style="BORDER-RIGHT: #e3e3e3 1px solid; BORDER-TOP: #e3e3e3 1px solid; BORDER-BOTTOM: #e3e3e3 1px solid" width=40><DIV id=context_info_context_photo_stream >
                  <DIV style="FONT-SIZE: 12px; COLOR: #c3bebd; LINE-HEIGHT: 1.2em"><BR>
                    <span style="FONT-SIZE: 12px; COLOR: #ccc; LINE-HEIGHT: 1.1em"><span style="FONT-WEIGHT: bold; FONT-SIZE: 11px">共有<br />
                    <bairong:NoTagText id="PhotosCount" runat="server" />
                    </span><span>幅</span></span><BR>
                    <BR>
                    <SPAN>查看</SPAN><BR>
                    <SPAN>
                    <bairong:NoTagText id="SlideshowLink" runat="server" />
                    </SPAN></DIV>
                </DIV></TD>
            </TR>
          </TBODY>
        </TABLE>
      </DIV>
    </DIV>
  </DIV>
</DIV>
