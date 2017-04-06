<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundComment" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" style="margin:0" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column" id="contents">
    <div class="columntitle">管理评论
      <asp:Literal ID="CommentTarget" runat="server"></asp:Literal>
    </div>
    <asp:DataList ID="MyDataList" ShowHeader="true" cellspacing="1" cellpadding="1" Align="center" border="0" Width="100%" runat="server" style="word-break: break-all">
      <headertemplate>
        <tr class="summary-title" style="height:25px;">
          <td align="Center" style="width:30px;" width="30">&nbsp;</td>
          <td>&nbsp;评论</td>
          <td align="Center" style="width:70px;" width="70">添加日期</td>
          <td align="Center" style="width:30px;">&nbsp;</td>
          <td align="Center" style="width:20px;"><input type="checkbox" onClick="_checkAll(document.getElementById('contents'),this.checked);"></td>
        </tr>
      </headertemplate>
      <itemtemplate>
        <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';" style="height:25px;">
          <td align="Center" style="width:30px;"><IMG onClick="ToggleVisible('Contents<%# DataBinder.Eval(Container.DataItem, "ID") %>',this,'../pic/icon/toggleUp.gif','../pic/icon/toggleDown.gif'); return false;" alt="点击显示或隐藏内容" src="../pic/icon/toggleDown.gif" border="0" style="cursor:hand;"></td>
          <td>&nbsp;
            <asp:Literal ID="ItemTitle" runat="server"></asp:Literal></td>
          <td align="Center" style="width:70px;"><asp:Literal ID="ItemAddDate" runat="server"></asp:Literal></td>
          <td align="Center" style="width:30px;"><asp:Literal ID="ItemEditUrl" runat="server"></asp:Literal></td>
          <td align="Center" style="width:20px;"><input type="checkbox" name="ContentIDCollection" value='<%#DataBinder.Eval(Container.DataItem, "ID")%>' /></td>
        </tr>
        <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';" id='Contents<%# DataBinder.Eval(Container.DataItem, "ID") %>' style="display:none">
          <td colspan="10"><table cellpadding="2" cellspacing="3" border="0" width="100%">
              <asp:Literal ID="TableColumns" runat="server"></asp:Literal>
            </table></td>
        </tr>
      </itemtemplate>
    </asp:DataList>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><bairong:sqlpager id="MySqlPager" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0 class='nav'></bairong:sqlpager></td>
          </tr>
          <tr>
            <td><asp:Button class="button" id="AddComment" Text="添加评论" runat="server" />
              <asp:PlaceHolder ID="CheckPlaceHolder" runat="server" Visible="false">&nbsp;
                <asp:Button class="button" id="Check" Text="审核通过" runat="server" />
              </asp:PlaceHolder>
              <asp:PlaceHolder ID="DeletePlaceHolder" runat="server" Visible="false">&nbsp;
                <asp:Button class="button" id="Delete" Text="删 除" runat="server" />
              </asp:PlaceHolder>
              &nbsp;
              <asp:Button class="button" id="ExportExcel" runat="server" Text="导出Excel"></asp:Button>
              &nbsp;
              <asp:Button class="button" id="Return" CausesValidation="false" OnClick="Return_OnClick" Text="返 回" runat="server" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>