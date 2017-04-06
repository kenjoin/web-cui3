<%@ Page SmartNavigation="False" Language="C#" Inherits="SiteServer.Space.Friends.Pages.FriendsMessage" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Friends.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">
  <div id="content">
    <DIV class="clearfix" id="innerContent">
      <DIV id="appList">
        <DIV id="innerAppList">
          <space:FriendsNav runat="server" directoryName="message"></space:FriendsNav>
        </DIV>
      </DIV>
      <DIV id="appPage">
        <table style="width:100%;" cellspacing=0 border=0 >
          <tr>
            <td height=7></td>
          </tr>
          <tr height=18>
            <td width="6"></td>
            <td><table width="100%" border=0 cellspacing=0 class="graytitle">
                <tr class="entryhdr">
                  <th width="2"></th>
                  <th width=100 align="left" nowrap><strong>消息发送人</strong></th>
                  <th align="left" nowrap><strong>消息</strong></th>
                  <th width=130 align="left" nowrap><strong>发送日期</strong></th>
                  <th width=50 align="center" nowrap></th>
                  <th align="Center" style="width:20px;"><input type="checkbox" onClick="_checkAll(document.getElementById('appPage'),this.checked);"></th>
                </tr>
              </table></td>
            <td width="6"></td>
          </tr>
          <tr>
            <td></td>
            <td><table cellspacing=0 border=0 cellpadding="0" width='100%'>
                <asp:DataList ID="MyDataList" runat="server" CellSpacing="0" CellPadding="0" BorderWidth="0"  width="100%" >
                  <itemtemplate>
                    <tr style="height:28px;" class='entry'>
                      <td width="5"></td>
                      <td width='100' align="left"><asp:Literal ID="ltlFrom" runat="server"></asp:Literal></td>
                      <td align="left"><asp:Literal ID="ltlContent" runat="server"></asp:Literal></td>
                      <td width='130' align="left" nowrap><asp:Literal ID="ltlAddDate" runat="server"></asp:Literal></td>
                      <td width='50' align="center" nowrap><asp:Literal ID="ltlWriteBack" runat="server"></asp:Literal></td>
                      <td align="Center" style="width:20px;"><asp:Literal ID="ltlCheckBox" runat="server"></asp:Literal></td>
                    </tr>
                  </itemtemplate>
                  <separatortemplate>
                    <tr>
                      <td colspan=8 class='line' height=1></td>
                    </tr>
                  </separatortemplate>
                </asp:DataList>
              </table>
              <div class="separator"></div>
              <table cellspacing="0" style="" width="100%" height="25" class='subnav'>
                <tr>
                  <td width="5"></td>
                  <td ><bairong:sqlpager id="MySqlPager" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0> </bairong:sqlpager>
                  </td>
                </tr>
              </table>
              <table cellspacing="0" cellpadding="0" width="100%">
                <tr>
                  <td align="right"><a runat="server" id="Delete">删除选中的消息</a><br />
                  </td>
                  <td width="5"></td>
                </tr>
              </table>
              <br />
            </td>
            <td></td>
          </tr>
          <tr>
            <td height=6></td>
          </tr>
        </table>
      </DIV>
    </DIV>
  </div>
</asp:content>
