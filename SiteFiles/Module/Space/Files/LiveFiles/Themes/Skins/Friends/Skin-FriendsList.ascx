<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Friends.Controls" Assembly="SiteServer.Space" %>

<DIV id="entrycommentlist"><A name="comment"></A>
  <DIV id="messageWrapper"></DIV>
  <DIV class="item-title">
    <H3 style="float:left"><asp:Literal ID="ltlModuleName" runat="server"></asp:Literal></H3>
    <DIV class="clear"></DIV>
  </DIV>
  <DIV id="commentlist" style="margin:0 10px;">
     <asp:DataList ID="MyDataList" Width="100%" CellPadding="0" CellSpacing="0" ItemStyle-VerticalAlign="top" runat="server">
        <itemtemplate>
         <DIV class="info-content">
          <DIV class="cmtIco">
            <asp:Image ID="FriendIcon" Height="48" Width="48" runat="server" ImageAlign="Middle"></asp:Image>
          </DIV>
          <DIV class="info-title">
              <bairong:NoTagText id="FriendName" runat="server" /><br />
			  <bairong:NoTagText id="SpaceName" runat="server"></bairong:NoTagText>
          </DIV>
        </DIV>
        </itemtemplate>
        <separatortemplate>
        	<HR style="height: 1px;border: none;border-top: 1px solid #cecece;" />
        </separatortemplate>
      </asp:DataList>
    <STYLE type="text/css"> 
.cmtIco {FLOAT: left;OVERFLOW: hidden;WIDTH: 50px;MARGIN-RIGHT: 10px}.cmtIco IMG {BORDER-RIGHT: #ccc 1px solid;BORDER-TOP: #ccc 1px solid;VERTICAL-ALIGN: middle;BORDER-LEFT: #ccc 1px solid;BORDER-BOTTOM: #ccc 1px solid;HEIGHT: 48px}.cmtIco SPAN {DISPLAY: block;OVERFLOW: hidden;WIDTH: 64px;CURSOR: pointer;WHITE-SPACE: nowrap}
</STYLE>
  </DIV>
</DIV>
<table width="100%" border=0 cellspacing=0>
  <tr>
    <td width='8'></td>
    <td><bairong:sqlpager id="MySqlPager" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0></bairong:sqlpager></td>
    <td width='8'></td>
  </tr>
</table>