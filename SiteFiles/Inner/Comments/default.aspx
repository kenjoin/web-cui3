<%@ Page language="c#" trace="false" enableViewState="false" Inherits="SiteServer.Pages.InnerComments" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.Controls" Assembly="SiteServer.Controls" %>

<div  style="border: #dadcdd 1px solid;background: #fff;">
  <div style="line-height: 30px;padding-left: 15px;padding-right: 15px;height: 30px;font-size: 14px;font-weight: bold; color:#666">
  	<SPAN style="float: right;color: #949494;font-size: 12px;font-weight: normal;">评论总数：<B style="color: #e8581f;"><asp:Literal ID="ltlCount" runat="server"></asp:Literal> </B>条 <asp:HyperLink ID="hlCommentUrl" Target="_blank" runat="server">[ 查看全部 ]</asp:HyperLink></SPAN>网友评论
  </div>

	<asp:DataList ID="MyDataList" Width="100%" runat="server">
      <itemtemplate>
      <div style="border-bottom: #e6e6e6 1px solid;padding-bottom: 10px;line-height: 25px;margin: 15px 20px;padding-left: 5px;">
        <div>
        	<SPAN style="float: right;">
            	<asp:Literal ID="ltlReference" runat="server" Text="引用"></asp:Literal>&nbsp;&nbsp;
                <asp:HyperLink ID="hyGood" title="支持一下" runat="server">支持[<asp:Literal ID="ltlGood" runat="server"></asp:Literal>]</asp:HyperLink>&nbsp;&nbsp;
                <asp:HyperLink ID="hyBad" title="我反对" runat="server">反对[<asp:Literal ID="ltlBad" runat="server"></asp:Literal>]</asp:HyperLink>&nbsp;&nbsp;
                <span style="color:#999"> <asp:Literal ID="ltlFloor" runat="server"></asp:Literal> 楼</span>
            </SPAN>
            <SPAN style="color:#999">网友：<asp:Literal ID="ltlUserName" runat="server" Text="匿名"></asp:Literal> 于
          <asp:Literal id="ltlAddDate" runat="server"></asp:Literal> 评论道：</SPAN>
          <div style="clear:both"></div>
        </div>
        <div><asp:Literal id="ltlContent" runat="server"></asp:Literal></div>
      </div>
    </itemtemplate>
  </asp:DataList>
  <table width="100%" cellspacing="3" align="center">
    <tr>
      <td width='8'></td>
      <td><bairong:ajaxSqlPager id="MySqlPager" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0></bairong:ajaxSqlPager></td>
      <td width='8'></td>
    </tr>
  </table>
</div>
