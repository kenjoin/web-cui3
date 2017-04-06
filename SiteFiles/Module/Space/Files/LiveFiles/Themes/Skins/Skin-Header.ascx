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
		  <asp:HyperLink ID="hlLogin" runat="server" Text="登录"></asp:HyperLink>
          |
          <asp:HyperLink ID="hlRegister" runat="server" Text="注册"></asp:HyperLink>
		  </span>
        </AnonymousTemplate>
        <LoggedInTemplate>
		  <SPAN class="tb_userN" id="tb_userN"><SPAN class="tb_innerUserN" id="dropdown-trigger"><asp:Image ImageUrl="~/sitefiles/bairong/icons/menu/shortcut.gif" ImageAlign="AbsMiddle" runat="server"></asp:Image>菜单<SPAN class="subMenuArrow2">&nbsp;</SPAN></SPAN></SPAN>
		  <span class="txt">
          
          <asp:HyperLink NavigateUrl="~/logout.aspx" runat="server" Text="离开"></asp:HyperLink>
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
<div id="toolbarPadding" style="margin-bottom:20px;"></div>
<div id="wrapper">
<div id="innerWrapper">
