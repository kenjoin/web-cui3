<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.ConsoleUser" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" Style="margin:0px" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">用户搜索</div>
    <TABLE width="100%" border=0 align=center cellPadding=2 cellSpacing=2>
      <TBODY>
        <TR class=summary-title align=left>
          <TD align=left style="padding-left:10px; line-height:26px;"> 关键字：
            <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="Keyword"
					MaxLength="500"
					Size="25"
					runat="server"/>
            注册时间：
            <asp:DropDownList ID="CreationDate" AutoPostBack="true" OnSelectedIndexChanged="Search_OnClick" runat="server">
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
            最后活动时间：
            <asp:DropDownList ID="LastActivityDate" AutoPostBack="true" OnSelectedIndexChanged="Search_OnClick" runat="server">
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
            每页显示条数：
            <asp:DropDownList ID="PageNum" AutoPostBack="true" OnSelectedIndexChanged="Search_OnClick" runat="server">
              <asp:ListItem Text="默认" Value="0" Selected="true"></asp:ListItem>
              <asp:ListItem Text="30" Value="30"></asp:ListItem>
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
  <DIV class="column">
    <div class="columntitle">用户列表</div>
    <asp:DataList ID="MyDataList" ShowHeader="true" cellspacing="1" cellpadding="1" Align="center" border="0" Width="100%" runat="server" style="word-break: break-all">
      <headertemplate>
        <TR class="summary-title" style="HEIGHT: 25px" align="center">
          <TD>登录名</TD>
          <TD>显示名</TD>
          <asp:Literal ID="ltlType" runat="server"></asp:Literal>
          <TD>用户组</TD>
          <TD>注册时间</TD>
          <TD>最后活动时间</TD>
          <TD>积分</TD>
          <TD>&nbsp;</TD>
          <TD>&nbsp;</TD>
          <TD><INPUT onClick="_checkFormAll(this.checked)" type="checkbox" /></TD>
        </TR>
      </headertemplate>
      <itemtemplate>
        <TR class="tdbg" onMouseOver="this.className='tdbg-dark';" style="HEIGHT: 25px" onMouseOut="this.className='tdbg';">
          <TD style="WIDTH: 120px" align="left"><asp:Literal ID="ltlUserName" runat="server"></asp:Literal></TD>
          <TD style="WIDTH: 120px" align="left"><asp:Literal ID="ltlDisplayName" runat="server"></asp:Literal></TD>
          <asp:Literal ID="ltlType" runat="server"></asp:Literal>
          <TD style="WIDTH: 150px" align="center"><asp:Literal ID="ltlUserGroupName" runat="server"></asp:Literal></TD>
          <TD style="WIDTH: 150px" align="center"><asp:Literal ID="ltlCreationDate" runat="server"></asp:Literal></TD>
          <TD style="WIDTH: 150px" align="center"><asp:Literal ID="ltlLastActivityDate" runat="server"></asp:Literal></TD>
          <TD style="WIDTH: 40px" align="center"><asp:Literal ID="ltlCredits" runat="server"></asp:Literal></TD>
          <TD style="WIDTH: 80px" align="center"><asp:HyperLink NavigateUrl="javascript:undefined;" ID="hlChangePassword" Text="重设密码" runat="server"></asp:HyperLink></TD>
          <TD style="WIDTH: 40px" align="center"><asp:HyperLink ID="hlEditLink" Text="编辑" runat="server"></asp:HyperLink></TD>
          <TD style="WIDTH: 20px" align="center"><asp:Literal ID="ltlSelect" runat="server"></asp:Literal></TD>
        </TR>
      </itemtemplate>
    </asp:DataList>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><bairong:sqlpager id="MySqlPager" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0></bairong:sqlpager></td>
          </tr>
          <tr>
            <td><asp:PlaceHolder ID="phType" runat="server">
                <asp:Button class="button" id="AddToType" Text="设置用户类型" runat="server" />
                &nbsp; </asp:PlaceHolder>
              <asp:Button class="button" id="AddToGroup" Text="设置用户组" runat="server" />
              &nbsp;
              <asp:Button class="button" id="Lock" Text="锁定用户" runat="server" />
              &nbsp;
              <asp:Button class="button" id="UnLock" Text="解除锁定" runat="server" />
              &nbsp;
              <asp:Button class="button" id="SendMail" Text="发送邮件" runat="server" />
              &nbsp;
              <asp:Button class="button" id="Delete" Text="删 除" runat="server" />
              &nbsp;
              <asp:Button class="button" id="Import" Text="导入Excel" runat="server" />
              &nbsp;
              <asp:Button class="button" id="Export" Text="导出Excel" runat="server" /></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>