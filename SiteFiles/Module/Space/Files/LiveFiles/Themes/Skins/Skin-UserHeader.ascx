<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<a name="top"></a>
<div id="toolBar" class="toolBar clearfix">
  <div id="innerToolBar" class="innerToolBar clearfix">
    <div id="tb_logo"> <asp:Literal ID="ltlLogo" runat="server"></asp:Literal> </div>
    <div id="tb_user" class="clearfix">
	
      <space:LoginView runat="Server">
        <AnonymousTemplate>
          <span class="txt">
		  <asp:HyperLink ID="hlLogin" NavigateUrl="~/login.aspx" runat="server" Text="登录"></asp:HyperLink>
          |
          <asp:HyperLink ID="hlRegister" NavigateUrl="~/register.aspx" runat="server" Text="注册"></asp:HyperLink>
		  </span>
        </AnonymousTemplate>
        <LoggedInTemplate>
		  <SPAN id="tb_welcome"><bairong:NoTagText id="Welcome" runat="server" /></SPAN>
		  <SPAN class="tb_userN" id="tb_userN"><SPAN class="tb_innerUserN" id="dropdown-trigger"><asp:Image ImageUrl="~/sitefiles/bairong/icons/menu/shortcut.gif" ImageAlign="AbsMiddle" runat="server"></asp:Image>菜单<SPAN class="subMenuArrow2">&nbsp;</SPAN></SPAN></SPAN>
		  <span class="txt">
          <asp:HyperLink ID="hlUserCenter" runat="server" style="text-decoration:none" Target="_usercenter" Text="进入用户中心"></asp:HyperLink>
          &nbsp;|&nbsp;
          <asp:HyperLink ID="hlLogout" runat="server" style="text-decoration:none" Text="离开"></asp:HyperLink>
		  </span>
        </LoggedInTemplate>
      </space:LoginView>
      </div>
    <div id="tb_tool" style="display:none;"></div>
    <div id="tb_sys">
      <asp:Literal ID="ltlHeader" runat="server"></asp:Literal>
    </div>
  </div>
</div>
<div id="toolbarPadding"></div>
<div id="wrapper">
<div id="innerWrapper">
<div id="topPadding"></div>
<div id="header">
  <div id="playerBox">
    <div id="innerPlayerBox"></div>
  </div>
  <div id="innerHeader">
    <div id="blogLogo">
      <space:UserLink NavigateUrl="default.aspx" runat="server">
        <asp:Image ID="IconUrl" Width="48" Height="48" runat="server" />
      </space:UserLink>
    </div>
    <h1 id="blogTitle">
      <bairong:AjaxTextEditor id="SpaceName" EmptyText="点击添加个人主页标题" runat="server" />
    </h1>
    <div id="blogUrl">
      
    </div>
    <div id="blogDesc">
      <bairong:AjaxTextEditor id="SpaceDescription" Multiple="true" EmptyText="点击添加个人主页简介" runat="server" />
    </div>
    <div style="height:6px;"></div>
  </div>
</div>
<DIV id="navBar">
  <DIV id="innerNavBar">
    <UL id="mainNav">
      <UL>
        <asp:Repeater ID="MenuRepeater" runat="server">
        <itemtemplate>
          <bairong:NoTagText id="MenuItem" runat="server" />
        </itemtemplate>
      </asp:Repeater>
      </UL>
    </UL>
	<space:Commands id="Commands" runat="server" />
    <DIV class="clear"></DIV>
  </DIV>
</DIV>
