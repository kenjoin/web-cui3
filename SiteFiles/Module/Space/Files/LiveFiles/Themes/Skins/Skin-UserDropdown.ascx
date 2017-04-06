<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<div id="person_panel" class="r" style="display:none;">
  <div id="person_panel_arrow"></div>
  <div id="person_panel_content">
    <ul id="person_panel_ul" class="personmenu">
    </ul>
  </div>
</div>
<div id="dropdown" class="r" style="display:none;">
  <div id="dropdown-menu">
    <dl>
      <dd id="RowBlog" runat="server"><span class="menu-title">我的博客...</span>
        <ul class="menu">
          <bairong:NoTagText id="DropdownListBlog" runat="server" />
        </ul>
      </dd>
      <dd id="RowPhoto" runat="server"><span class="menu-title">我的相册...</span>
        <ul class="menu">
          <bairong:NoTagText id="DropdownListPhoto" runat="server" />
        </ul>
      </dd>
      <dd id="RowFavorite" runat="server"><span class="menu-title">我的收藏...</span>
        <ul class="menu">
          <bairong:NoTagText id="DropdownListFavorite" runat="server" />
        </ul>
      </dd>
      <dd id="RowFriends" runat="server"><span class="menu-title">我的好友...</span>
        <ul class="menu">
          <bairong:NoTagText id="DropdownListFriends" runat="server" />
        </ul>
      </dd>
	  <dd id="RowOther" runat="server"><span class="menu-title">其他...</span>
        <ul class="menu">
          <bairong:NoTagText id="DropdownListOthers" runat="server" />
        </ul>
      </dd>
      <!--<dd><span class="menu-title">其他...</span>
        <ul class="menu">
          <li><a href="http://www.yupoo.com/help/learn_more.html" target="_blank">新手上路</a></li>
          <li><a href="http://www.yupoo.com/forums/">意见反馈</a></li>
          <li><a href="http://www.yupoo.com/help/" target="_blank">站点帮助</a></li>
          <li><a href="http://www.yupoo.com/help/guide.html" target="_blank">社区指南</a></li>
          <li><a href="http://www.yupoo.com/apidoc/" target="_blank">API 文档</a></li>
          <li><a href="http://www.yupoo.com/help/cc.html" target="_blank">创作共用协议</a></li>
          <li class="divide"><a href="http://www.yupoo.com/help/links.html" target="_blank">合作伙伴</a></li>
        </ul>
      </dd>-->
      <dt><a id="dropdown-closer" href="javascript:undefined;">关闭</a></dt>
    </dl>
    <div class="clear"></div>
  </div>
</div>

<script type="text/javascript">
//<![CDATA[
	if (window.personmenu_init) personmenu_init();
	if (window.dropdown_init) dropdown_init();
//]]>
</script>
