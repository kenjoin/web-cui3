<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundLink" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:Custom Type="style" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script language="JavaScript" type="text/JavaScript">
       function checkstate(frm,state){
          frm=eval(frm);
          var a = 0;
          var messon="确定要"+state+"所选中的问题吗？";
          var messoff="您还没有选择操作的对象！";
          for(var i=0;i<frm.length;i++){
            var cb=frm.elements[i];
            if(cb.value == "on"){if(cb.checked){ a = a + 1;}
            }
          }
          if(a == 0){alert(messoff);return false;}
          else{
            if(confirm(messon))
            { return true;}
            else{return false;}	  
          }
          return true;
        }
    </script>
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myform" runat="server">
  <bairong:Message runat="server"> </bairong:Message>
  <div class="column">
    <div class="columntitle"> 友情链接列表（共<asp:Literal ID="ltlCounts" runat="server"></asp:Literal>项）</div>
    <asp:DataList ID="linksData" ShowHeader="true" CellSpacing="1" CellPadding="1"
            Width="100%" Align="center" border="0" runat="server">
      <HeaderTemplate>
        <tr style="height: 25px;" class="summary-title">
          <td align="center">序号</td>
          <td align="center">链接名称</td>
          <td align="center">链接地址</td>
          <td align="center">LOGO</td>
          <td></td><td></td><td></td>
          <td align="center"></td>
        </tr>
      </HeaderTemplate>
      <ItemTemplate>
        <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" style="height: 25px" onMouseOut="this.className='tdbg';">
          <td align="center" style="width: 30px;"><asp:Literal ID="ltlNum" runat="server"></asp:Literal>
            <asp:Literal ID="ltlID" runat="server" Visible="false"></asp:Literal></td>
          <td align="center"><asp:Literal ID="ltlLinkName" runat="server"></asp:Literal></td>
          <td align="center" ><asp:Literal ID="ltlLinkUrl" runat="server"></asp:Literal></td>
          <td align="center" ><asp:Literal ID="ltlIconUrl" runat="server"></asp:Literal></td>
          <td align="center" ><asp:HyperLink ID="hlUpLink" runat="server"><img src="../Pic/icon/up.gif" border="0" alt="上升" /></asp:HyperLink></td>
          <td align="center" ><asp:HyperLink ID="hlDownLink" runat="server"><img src="../Pic/icon/down.gif" border="0" alt="下降" /></asp:HyperLink></td>
          <td align="center" style="width: 80px;"><asp:Literal ID="ltlEdit" runat="server"></asp:Literal></td>
          <td align="center" style="width: 50px;"><asp:CheckBox ID="chk_ID" runat="server" /></td>
        </tr>
      </ItemTemplate>
    </asp:DataList>
    <bairong:SqlPager ID="spContents" PagerStyle="NextPrev" PagingMode="NonCached" runat="server"
            Width="100%" CellSpacing="0" border="0" class="summary-title"> </bairong:SqlPager>
  </div>
  <div style="text-align:left; padding-left:27px;">
    <asp:Button ID="btnAdd" CssClass="button" runat="server" Text="添 加"/>
    &nbsp;
    <asp:Button ID="btnDelete" CssClass="button" runat="server" Text="删 除" OnClick="btnDelete_Click" />
  </div>
</form>
</body>
</html>
