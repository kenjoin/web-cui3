﻿<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.ConsoleLogTask" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form id="myForm" style="margin:0" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">日志查询</div>
    <TABLE width="100%" border=0 align=center cellPadding=2 cellSpacing=2>
      <TBODY>
        <TR align=left>
          <TD align=left style="padding-left:10px; line-height:35px;"> 站点：
            <asp:DropDownList ID="PublishmentSystem" AutoPostBack="true" OnSelectedIndexChanged="Search_OnClick" runat="server"></asp:DropDownList>
            类型：
            <asp:DropDownList ID="ServiceType" AutoPostBack="true" OnSelectedIndexChanged="Search_OnClick" runat="server"></asp:DropDownList></TD>
        </TR>
        <TR align=left>
          <TD align=left style="padding-left:10px; line-height:35px;">时间：从
            <bairong:DateTimeTextBox id="DateFrom" class="colorblur" Columns="12" runat="server" />
            &nbsp;到&nbsp;
            <bairong:DateTimeTextBox id="DateTo" class="colorblur" Columns="12" runat="server" />
            关键字：
            <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="Keyword"
					MaxLength="500"
					size="37"
					runat="server"/>
            <asp:Button class="button" OnClick="Search_OnClick" style="MARGIN-BOTTOM: 0px" ID="Search" Text="搜 索"  runat="server"/></TD>
        </TR>
      </TBODY>
    </TABLE>
  </DIV>
  <DIV id="contents" class="column">
    <div class="columntitle">任务运行日志</div>
    <asp:DataList ID="MyDataList" ShowHeader="true" cellspacing="1" cellpadding="1" Align="center" border="0" Width="100%" runat="server" style="word-break: break-all">
      <headertemplate>
        <tr class="summary-title" style="height:25px;">
          <asp:Literal ID="ltlPublishmentSystem" runat="server"></asp:Literal>
          <td align="Center" style="width:100px;" width="100">&nbsp;任务类型</td>
          <td align="Center" style="width:100px;" width="100">任务名称</td>
          <td align="Center" style="width:150px;" width="150">日期</td>
          <td align="Center" style="width:150px;" width="150">&nbsp;动作</td>
          <td>&nbsp;描述</td>
          <td align="Center" style="width:20px;"><input type="checkbox" onClick="_checkAll(document.getElementById('contents'),this.checked);"></td>
        </tr>
      </headertemplate>
      <itemtemplate>
        <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';" style="height:25px;">
          <asp:Literal ID="ltlPublishmentSystem" runat="server"></asp:Literal>
          <td align="Center" style="width:100px;" width="100"><asp:Literal ID="ltlServiceType" runat="server"></asp:Literal></td>
          <td align="Center" style="width:100px;"><asp:Literal ID="ltlTaskName" runat="server"></asp:Literal></td>
          <td align="Center" style="width:150px;"><asp:Literal ID="ltlAddDate" runat="server"></asp:Literal></td>
          <td align="Center" style="width:150px;" width="150">&nbsp;
            <asp:Literal ID="ltlAction" runat="server"></asp:Literal></td>
          <td>&nbsp;
            <asp:Literal ID="ltlMessage" runat="server"></asp:Literal></td>
          <td align="Center" style="width:20px;"><input type="checkbox" name="IDCollection" value='<%#DataBinder.Eval(Container.DataItem, "ID")%>' /></td>
        </tr>
      </itemtemplate>
    </asp:DataList>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td colspan="3"><bairong:sqlpager id="MySqlPager" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0 class='nav'></bairong:sqlpager></td>
          </tr>
          <tr>
            <td><asp:Button class="button" id="Delete" Text="删 除" runat="server" />
              &nbsp;
              <asp:Button class="button" id="DeleteAll" Text="删除全部" runat="server" />
              &nbsp;&nbsp;</td>
            <td align="right"><asp:Literal ID="ltlState" runat="server"></asp:Literal></td>
            <td width="180" align="right"><asp:Button class="button" ID="Setting" runat="server" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>