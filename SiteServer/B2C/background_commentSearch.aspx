<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundCommentSearch" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script language="javascript" src="../Inc/rows.js"></script>
<script type="text/javascript" >
	function init(){
	 loopRows(document.getElementById('MyDataList'), function(cur){ cur.onclick = chkSelect; });
	}
	window.onload = init;
</script>
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" style="margin:0" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">评论管理&nbsp;<a href="http://help.siteserver.cn/manage/189.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看评论管理帮助" align="absmiddle"></a></div>
    <TABLE width="100%" border=0 align=center cellPadding=2 cellSpacing=2>
      <TBODY>
        <TR class=summary-title align=left>
          <TD align=left style="padding-left:10px; line-height:28px;"> 栏目：
            <asp:DropDownList ID="NodeIDDropDownList" AutoPostBack="true" OnSelectedIndexChanged="Search_OnClick" runat="server"></asp:DropDownList>
            类型：
            <asp:DropDownList ID="TypeDropDownList" AutoPostBack="true" OnSelectedIndexChanged="Search_OnClick" runat="server"></asp:DropDownList>
            每页显示条数：
            <asp:DropDownList ID="PageNum" AutoPostBack="true" OnSelectedIndexChanged="Search_OnClick" runat="server">
              <asp:ListItem Text="默认" Value="0" Selected="true"></asp:ListItem>
              <asp:ListItem Text="10" Value="10"></asp:ListItem>
              <asp:ListItem Text="16" Value="16"></asp:ListItem>
              <asp:ListItem Text="20" Value="20"></asp:ListItem>
              <asp:ListItem Text="30" Value="30"></asp:ListItem>
              <asp:ListItem Text="50" Value="50"></asp:ListItem>
              <asp:ListItem Text="100" Value="100"></asp:ListItem>
              <asp:ListItem Text="200" Value="200"></asp:ListItem>
              <asp:ListItem Text="300" Value="300"></asp:ListItem>
            </asp:DropDownList>
            <br>
            关键字：
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
            <asp:CheckBox ID="IsSearchChildren" Text="含子栏目" Checked="true" AutoPostBack="true" OnCheckedChanged="Search_OnClick" runat="server"></asp:CheckBox>
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
          <td align="Center" style="width:70px;" width="70">添加日期</td>
          <td align="Center" style="width:30px;">&nbsp;</td>
          <td align="Center" style="width:20px;"><input type="checkbox" onClick="_checkAll(document.getElementById('contents'),this.checked);"></td>
        </tr>
      </headertemplate>
      <itemtemplate>
        <tr class="tdbg" style="height:25px;">
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
            <td><asp:PlaceHolder ID="CheckPlaceHolder" runat="server" Visible="false">
                <asp:Button class="button" id="Check" Text="审核通过" runat="server" />
              </asp:PlaceHolder>
              <asp:PlaceHolder ID="DeletePlaceHolder" runat="server" Visible="false">&nbsp;
                <asp:Button class="button" id="Delete" Text="删 除" runat="server" />
              </asp:PlaceHolder></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>