<%@ Page Language="C#" Inherits="UserCenter.System.Platform.Map" %>
<div class="map-cont clear">
  <ul class="adobe-content">
    <li class="odd">
      <h4> 首页</h4>
      <em>个人信息</em><span class="arr">&gt;</span> <a href="javascript:;" rel="e:reload,data:0|0"> 用户首页</a>|<a href="javascript:;" rel="e:reload,data:0|1">修改账户信息</a>|<a href="javascript:;"
                    rel="e:reload,data:0|2">更换头像</a>|<a href="javascript:;" rel="e:reload,data:0|3">修改密码</a> </li>
    <li><em>系统功能</em><span class="arr">&gt;</span> <a href="javascript:;" rel="e:reload,data:0|4"> 短消息管理</a><asp:PlaceHolder ID="phAttachment" runat="server">|<a href="javascript:;" rel="e:reload,data:0|5">文档附件管理</a></asp:PlaceHolder></li>
    <asp:PlaceHolder ID="phContribute" runat="server">
    <li class="odd">
      <h4> 内容投稿</h4>
      <em>内容投稿</em><span class="arr">&gt;</span> <a href="javascript:;" rel="e:reload,data:0|1"> 添加投稿</a>|<a href="javascript:;" rel="e:reload,data:1|1">我的投稿</a> </li>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="phSpace" runat="server">
    <li>
      <h4> 空间管理</h4>
      <em>空间管理</em><span class="arr">&gt;</span> <a href="javascript:;" rel="e:reload,data:2|0"> 撰写日志</a>|<a href="javascript:;" rel="e:reload,data:2|1"> 博客日志</a>|<a href="javascript:;" rel="e:reload,data:2|2">博客分类</a>|<a href="javascript:;"
                    rel="e:reload,data:2|3">评论管理</a>|<a href="javascript:;" rel="e:reload,data:2|4">留言管理</a>|<a
                        href="javascript:;" rel="e:reload,data:2|4">空间设置</a> </li>
    </asp:PlaceHolder>
  </ul>
</div>
