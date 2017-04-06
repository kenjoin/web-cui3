<%@ Page Language="C#" Inherits="UserCenter.System.Pages.IndexPage" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户中心</title>
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<link type="text/css" rel="stylesheet" href="css/admin/admin.css" media="screen" />
<link rel="shortcut icon" href="favicon.ico" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/admin/admin.js"></script>
<script type="text/javascript" src="js/admin-all.js"></script>
<script type="text/javascript">
    $(function () {

        admin.index.init();
        $('#map').click(function () {
            Xwb.use('MgrDlg', {
                dlgcfg: {
                    title: '管理导航',
                    cs: ' win-fixed map '
                },
                modeUrl: 'platform/map.aspx',
                actiontrig: function (e) {
                    if (e.get('e') == 'reload') {
                        var arr = e.get('data').split('|');
                        //admin.index.selectMainMenu(Number(arr[0]),arr.length == 2 ? Number(arr[1]):null );
                        //this.dlg.close();
                        location.href = "?_=" + Math.random() + "#" + arr.join(',');
                    }
                },
                afterDisplay: function () {
                    this.dlg.jq().css({ 'marginLeft': '0px', 'marginTop': '0px' });
                    this.dlg.center();
                }
            });
        });
    });
</script>
</head>

<body>
<div id="header">
  <h1>用户中心</h1>
  <ul>
    <li><a href="#">首页</a></li>
    <%if (base.IsContribute){%><li><a href="#">订单管理</a></li><%}%>
    <%if (base.IsContribute){%><li><a href="#">内容投稿</a></li><%}%>
    <%if (base.IsSpace){%><li><a href="#">空间管理</a></li><%}%>
  </ul>
  <p> <span>欢迎回来： <%=DisplayName%></span> <span class="line">|</span> <a href="javascript:;" id="map">地图导航</a> <span class="line">|</span> <a href="platform/password.aspx" target="mainframe" class="home">修改密码</a> <span class="line">|</span> <a href="logout.aspx">退出</a> </p>
</div>
<div id="mainDiv" class="main-frame">
  <iframe src="platform/default.aspx" id="mainframe" name="mainframe" width="100%" height="100%" frameborder="0"></iframe>
</div>
<div id="side-menu" >
  <div class="menu-group">
    <h2 class="first">个人信息</h2>
    <ul>
      <li><a href="platform/default.aspx"  target="mainframe">用户首页</a></li>
      <li><a href="platform/attributes.aspx" target="mainframe">修改账户信息</a></li>
      <li><a href="platform/avatar.aspx" target="mainframe">更换头像</a></li>
      <li><a href="platform/password.aspx" target="mainframe">修改密码</a></li>
    </ul>
    <h2>系统功能</h2>
    <ul>
      <li><a href="platform/userMessage.aspx" target="mainframe">短消息管理</a></li>
      <asp:PlaceHolder ID="phAttachment" runat="server">
      <li><a href="platform/filemain.aspx" target="mainframe">文档附件管理</a></li>
      </asp:PlaceHolder>
      <li><a href="cms/inputContents.aspx" target="mainframe">提交消息管理</a></li>
    </ul>
    <h2>消费中心</h2>
    <ul>
        <li><a href="platform/recharge.aspx" target="mainframe">充值卡充值</a></li>
        <li><a href="platform/payment.aspx" target="mainframe">在线充值</a></li>
        <li><a href="platform/addCardRecord.aspx" target="mainframe">消费记录</a></li>
    </ul>
    <h2>快速链接</h2>
    <ul>
      <asp:Literal ID="ltlLinks" runat="server"></asp:Literal>
    </ul>
  </div>
<%--  <%if (base.IsContribute){%>
  <div class="menu-group">
    <h2 class="first">订单管理</h2>
    <ul>
      <li><a href="b2c/order.aspx" target="mainframe">我的订单</a></li>
      <li><a href="b2c/favorites.aspx" target="mainframe" >我的收藏</a></li>
      <li><a href="cms/contents.aspx" target="mainframe" >我的优惠券</a></li>
      <li><a href="cms/contents.aspx" target="mainframe" >我的到货通知</a></li>
      <li><a href="cms/contents.aspx" target="mainframe" >我的积分</a></li>
      <li><a href="cms/contents.aspx" target="mainframe" >我的反馈</a></li>
      <li><a href="cms/contents.aspx" target="mainframe" >我的咨询</a></li>
      <li><a href="cms/contents.aspx" target="mainframe" >我的价格举报</a></li>
    </ul>
  </div>
  <%}%>--%>
  <%if (base.IsContribute){%>
  <div class="menu-group">
    <h2 class="first">内容投稿</h2>
    <ul>
      <li><a href="cms/contentSelect.aspx" target="mainframe">添加投稿</a></li>
      <li><a href="cms/contents.aspx" target="mainframe" >我的投稿</a></li>
    </ul>
  </div>
  <%}%>
  <%if (base.IsSpace){%>
  <div class="menu-group">
    <h2 class="first">空间管理</h2>
    <ul>
      <li><a href="space/blogAdd.aspx" target="mainframe">撰写日志</a></li>
      <li><a href="space/blogContents.aspx" target="mainframe">博客日志</a></li>
      <li><a href="space/blogCategory.aspx" target="mainframe">博客分类</a></li>
      <li><a href="space/commentBlog.aspx" target="mainframe">评论管理</a></li>
      <li><a href="space/word.aspx" target="mainframe">留言管理</a></li>
      <li><a href="space/settingSpace.aspx" target="mainframe">空间设置</a></li>
    </ul>
  </div>
  <%}%>
</div>
<script type='text/javascript'>
    if (!window.Xwb) Xwb = {};
    Xwb.cfg = {
        basePath: ''
    }
    Xwb.request.basePath = Xwb.cfg.basePath;

    //初始化 自适应窗口大小
    var autoSize = function () {
        var height = document.documentElement.clientHeight - 89;
        $('#side-menu').css('height', height + 'px');
        $('#mainDiv').css('height', height + 'px');
    }
    autoSize();
    $(window).resize(autoSize);

</script>
</body>
</html>
