<%@ Page Language="C#" Inherits="SiteServer.Space.Space.Inner.Comments" ContentType="text/html" enableViewState="false" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<DIV id="entrycommentlist"><A name="comment"></A>

  <DIV id="messageWrapper"></DIV>
  <DIV class="item-title">
    <H3 style="float:left">评论内容</H3>
    <div style="float:right"><a href="javascript:undefined;" onclick="this.parentNode.parentNode.parentNode.parentNode.style.display='none';return false" title="单击隐藏此项的引用通告">
      <space:ClientIcon ImageUrl="close.gif" runat="server" alt="关闭"></space:ClientIcon>
      </a></div>
    <DIV class="clear"></DIV>
  </DIV>
  <DIV id="commentlist">
    <asp:DataList ID="MyDataList" Width="100%" runat="server">
    <itemtemplate>
        <DIV class="info-content">
          <DIV style="MARGIN-BOTTOM: 10px">
            <bairong:NoTagText id="Content" runat="server"></bairong:NoTagText>
          </DIV>
          <DIV class="cmtIco">
            <bairong:NoTagText id="Icon" nowrap="true" runat="server"></bairong:NoTagText>
          </DIV>
          <DIV class="info-title">
            <H3>发布者
              <bairong:NoTagText id="Commentator" runat="server"></bairong:NoTagText>
              <bairong:NoTagText id="Email" runat="server"></bairong:NoTagText>
              <BR />
              <bairong:NoTagText id="AddDate" runat="server"></bairong:NoTagText>
            </H3>
            <DIV class="clear"></DIV>
          </DIV>
          <DIV class="clear"></DIV>
        </DIV>
		<HR />
    </itemtemplate>
  </asp:DataList>
    <STYLE type="text/css"> 
.cmtIco {FLOAT: left;OVERFLOW: hidden;WIDTH: 50px;MARGIN-RIGHT: 10px}.cmtIco IMG {BORDER-RIGHT: #ccc 1px solid;BORDER-TOP: #ccc 1px solid;VERTICAL-ALIGN: middle;BORDER-LEFT: #ccc 1px solid;BORDER-BOTTOM: #ccc 1px solid;HEIGHT: 48px}.cmtIco SPAN {DISPLAY: block;OVERFLOW: hidden;WIDTH: 64px;CURSOR: pointer;WHITE-SPACE: nowrap}
</STYLE>
  </DIV>
  <table width="100%" border=0 cellspacing=0>
  <tr>
    <td width='8'></td>
    <td><bairong:ajaxSqlPager id="MySqlPager" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0></bairong:ajaxSqlPager></td>
    <td width='8'></td>
  </tr>
</table>

</DIV>
