<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.MyWeb.Controls" Assembly="SiteServer.Space" %>

<DIV class="mod" style="POSITION: relative">
  <DIV class="modFrame">
    <TABLE class="modTable" cellSpacing="0" cellPadding="0">
      <TBODY>
        <TR>
          <TD class="mbody l"></TD>
          <TD class="mbody c"><DIV class="modCon">
              <DIV id="appList">
                <UL>
                  <asp:Literal ID="Navigation" runat="server"></asp:Literal>
                </UL>
              </DIV>
            </DIV></TD>
          <TD class="mbody r"></TD>
        </TR>
      </TBODY>
      <TFOOT>
        <TR>
          <TD class="mfooter lb"></TD>
          <TD class="mfooter b"></TD>
          <TD class="mfooter rb"></TD>
        </TR>
      </TFOOT>
    </TABLE>
  </DIV>
</DIV>
