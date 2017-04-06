<%@ Page Language="C#" Inherits="SiteServer.Space.BackgroundPages.BackgroundComments" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" style="margin:0" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">评论审核</div>
    <TABLE width="100%" border=0 align=center cellPadding=2 cellSpacing=2>
      <TBODY>
        <TR class=summary-title align=left>
          <TD align=left style="padding-left:10px; line-height:28px;"> 关键字：
            <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="Keyword"
					MaxLength="500"
					Size="30"
					runat="server"/>
            时间：
            <asp:DropDownList ID="SearchDate" AutoPostBack="true" OnSelectedIndexChanged="Search_OnClick" runat="server">
              <asp:ListItem Text="全部时间" Value="0" Selected="true"></asp:ListItem>
              <asp:ListItem Text="1天内" Value="1"></asp:ListItem>
              <asp:ListItem Text="2天内" Value="2"></asp:ListItem>
              <asp:ListItem Text="3天内" Value="3"></asp:ListItem>
              <asp:ListItem Text="1周内" Value="7"></asp:ListItem>
              <asp:ListItem Text="1个月内" Value="30"></asp:ListItem>
              <asp:ListItem Text="3个月内" Value="90"></asp:ListItem>
              <asp:ListItem Text="半年内" Value="180"></asp:ListItem>
              <asp:ListItem Text="1年内" Value="365"></asp:ListItem>
            </asp:DropDownList>
            审核状态：
            <asp:DropDownList ID="IsChecked" AutoPostBack="true" OnSelectedIndexChanged="Search_OnClick" runat="server">
              <asp:ListItem Text="显示全部" Value="" Selected="true"></asp:ListItem>
              <asp:ListItem Text="已审核的评论" Value="True"></asp:ListItem>
              <asp:ListItem Text="未审核的评论" Value="False"></asp:ListItem>
            </asp:DropDownList>
            每页显示：
            <asp:DropDownList ID="PageNum" AutoPostBack="true" OnSelectedIndexChanged="Search_OnClick" runat="server">
              <asp:ListItem Text="30" Value="30" Selected="true"></asp:ListItem>
              <asp:ListItem Text="50" Value="50"></asp:ListItem>
              <asp:ListItem Text="100" Value="100"></asp:ListItem>
              <asp:ListItem Text="200" Value="200"></asp:ListItem>
              <asp:ListItem Text="300" Value="300"></asp:ListItem>
            </asp:DropDownList>
            <asp:Button class="button" OnClick="Search_OnClick" style="MARGIN-BOTTOM: 0px" id="Search" text="搜 索"  runat="server"/></TD>
        </TR>
      </TBODY>
    </TABLE>
  </DIV>
  <DIV class="column" id="contents">
    <div class="columntitle">评论列表</div>
    <asp:DataList ID="MyDataList" ShowHeader="true" cellspacing="1" cellpadding="1" Align="center" border="0" Width="100%" runat="server">
      <headertemplate>
        <tr class="summary-title" style="height:25px;">
          <td align="Center" style="width:30px;" width="30">&nbsp;</td>
          <td>&nbsp;评论</td>
          <td align="Center" style="width:70px;" width="100">评论人</td>
          <td align="Center" style="width:70px;" width="70">评论日期</td>
          <td align="Center" style="width:70px;" width="70">状 态</td>
          <td align="Center" style="width:20px;"><input type="checkbox" onClick="_checkAll(document.getElementById('contents'),this.checked);"></td>
        </tr>
      </headertemplate>
      <itemtemplate>
        <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';" style="height:25px;">
          <td align="Center" style="width:30px;"><IMG onClick="ToggleVisible('Contents<%# DataBinder.Eval(Container.DataItem, "ID") %>',this,'../pic/icon/toggleUp.gif','../pic/icon/toggleDown.gif'); return false;" alt="点击显示或隐藏内容" src="../pic/icon/toggleDown.gif" border="0" style="cursor:hand;"></td>
          <td>&nbsp;
            <asp:Literal ID="ItemTitle" runat="server"></asp:Literal></td>
          <td align="Center" style="width:70px;"><asp:Literal ID="ItemUserName" runat="server"></asp:Literal></td>
          <td align="Center" style="width:70px;"><asp:Literal ID="ItemAddDate" runat="server"></asp:Literal></td>
          <td align="Center" style="width:70px;"><asp:Literal ID="ItemState" runat="server"></asp:Literal></td>
          <td align="Center" style="width:20px;"><input type="checkbox" name="ContentIDCollection" value='<%#DataBinder.Eval(Container.DataItem, "ID")%>' /></td>
        </tr>
        <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';" id='Contents<%# DataBinder.Eval(Container.DataItem, "ID") %>' style="display:none">
          <td align="Center" style="width:30px;">&nbsp;</td>
          <td colspan="9"><table cellpadding="2" cellspacing="3" border="0" width="100%">
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
            <td><asp:Button class="button" id="Check" Text="审 核" runat="server" />
              &nbsp;
              <asp:Button class="button" id="Delete" Text="删 除" runat="server" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>