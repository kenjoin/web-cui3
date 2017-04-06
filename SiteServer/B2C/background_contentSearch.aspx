<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundContentSearch" %>
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
  <DIV class="column">
    <div class="columntitle">内容搜索</div>
    <TABLE width="100%" border=0 align=center cellPadding=2 cellSpacing=2>
      <TBODY>
        <TR class=summary-title align=left>
          <TD align=left style="padding-left:10px; line-height:28px;"> 栏目：
            <asp:DropDownList ID="NodeIDDropDownList" AutoPostBack="true" OnSelectedIndexChanged="Search_OnClick" runat="server"></asp:DropDownList>
            内容状态：
            <asp:DropDownList ID="State" AutoPostBack="true" OnSelectedIndexChanged="Search_OnClick" runat="server"></asp:DropDownList>
            每页显示：
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
            时间：从
            <bairong:DateTimeTextBox id="DateFrom" class="colorblur" Columns="12" runat="server" />
            &nbsp;到&nbsp;
            <bairong:DateTimeTextBox id="DateTo" class="colorblur" Columns="12" runat="server" />
            目标：
            <asp:DropDownList ID="SearchType" runat="server"> </asp:DropDownList>
            关键字：
            <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="Keyword"
					MaxLength="500"
					Size="37"
					runat="server"/>
            <asp:Button class="button" OnClick="Search_OnClick" style="MARGIN-BOTTOM: 0px" id="Search" text="搜 索"  runat="server"/></TD>
        </TR>
      </TBODY>
    </TABLE>
  </DIV>
  <DIV class="column" id="contents">
    <div class="columntitle">内容列表(共<strong>
      <asp:Literal ID="TotalNum" runat="server"></asp:Literal>
      </strong>篇内容)</div>
    <asp:DataList ID="MyDataList" ShowHeader="true" cellspacing="1" cellpadding="1" Align="center" border="0" Width="100%" runat="server">
      <headertemplate>
        <tr class="summary-title" style="height:25px;">
          <td>&nbsp;所属栏目</td>
          <td>&nbsp;内容标题(点击查看)</td>
          <asp:Literal ID="ColumnHeadRows" runat="server"></asp:Literal>
          <td align="Center" style="width:30px;">&nbsp;</td>
          <asp:Literal ID="HeadCommentRow" runat="server"></asp:Literal>
          <td align="Center" style="width:20px;"><input type="checkbox" onClick="_checkAll(document.getElementById('contents'),this.checked);"></td>
        </tr>
      </headertemplate>
      <itemtemplate>
        <tr class="tdbg" style="height:25px;">
          <td align="Left" style="width:80px;"><asp:Literal ID="ItemChannel" runat="server"></asp:Literal></td>
          <td>&nbsp;
            <asp:Literal ID="ItemTitle" runat="server"></asp:Literal></td>
          <asp:Literal ID="ColumnItemRows" runat="server"></asp:Literal>
          <td align="Center" style="width:30px;"><asp:Literal ID="ItemEidtUrl" runat="server"></asp:Literal></td>
          <asp:Literal ID="ItemCommentRow" runat="server"></asp:Literal>
          <td align="Center" style="width:20px;"><input type="checkbox" name="ContentIDCollection" value='<%#DataBinder.Eval(Container.DataItem, "ID")%>' /></td>
        </tr>
      </itemtemplate>
    </asp:DataList>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><bairong:sqlpager id="MySqlPager" PagerStyle="NextPrev" PagingMode="NonCached" Unit="篇文章" runat="server" Width="100%" cellspacing=0 border=0></bairong:sqlpager></td>
          </tr>
          <tr>
            <td><asp:Button class="button" id="AddContent" OnClick="AddContent_OnClick" Text="添加信息" runat="server" />
              &nbsp;
              <asp:Button class="button" id="SelectButton" Text="选择显示项" runat="server" />
              &nbsp;
              <asp:Button class="button" id="AddToGroup" Text="添加到内容组" runat="server" />
              &nbsp;
              <asp:Button class="button" id="Translate" Text="转 移" runat="server" />
              &nbsp;
              <asp:PlaceHolder ID="TaxisButtonPlaceHolder" runat="server">
                <asp:Button class="button" id="TaxisButton" Text="排 序" runat="server" />
                &nbsp;</asp:PlaceHolder>
              <asp:PlaceHolder ID="CheckPlaceHolder" runat="server">
                <asp:Button class="button" id="Check" Text="审 核" runat="server" />
                &nbsp;</asp:PlaceHolder>
              <asp:Button class="button" id="Delete" Text="删 除" runat="server" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>