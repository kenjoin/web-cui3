<%@ Page Language="C#" Inherits="UserCenter.System.Space.CommentPhoto" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/admin/admin.css" rel="stylesheet" type="text/css" />
<bairong:Code type="JQuery" runat="server" />
<script src="../js/admin-all.js"  type="text/javascript" ></script>
<script type="text/javascript">
$(function() {
	bindSelectAll('#selectAll','#recordList > tr > td > input[type=checkbox]');
});

function delInfo() { 
	var v = getSelectedValues('#recordList > tr > td > input[type=checkbox]');
	if (!v) {
		alert('最少选中其中一项');
		return;
	}
	var url = 'commentPhoto.aspx?Delete=True&CommentIDCollection=' + v;
	delConfirm(url, '确认要执行该操作吗？');
}
</script>
</head>
<body class="main-body">
<bairong:Message runat="server"></bairong:Message>
<form runat="server">
  <div class="path">
    <p>当前位置：空间管理<span>&gt;</span>评论管理</p>
  </div>
  <div class="main-cont">
    <div class="tab-box">
      <h5 class="tab-nav tab-nav-s1 clear"> <a href="commentBlog.aspx"><span>博客评论</span></a> <a href="commentPhoto.aspx" class="current"><span>相册评论</span></a> </h5>
      <div class="tab-con-s1">
        <div class="set-area">
          <div class="user-list">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table" >
              <colgroup>
              <col class="w50" />
              <col />
              <col class="w140" />
              <col class="w140" />
              <col class="w140" />
              </colgroup>
              <thead class="tb-tit-bg">
                <tr>
                  <th><div class="th-gap"></div></th>
                  <th><div class="th-gap">评论内容</div></th>
                  <th><div class="th-gap">图片</div></th>
                  <th><div class="th-gap">评论人</div></th>
                  <th><div class="th-gap">评论时间</div></th>
                </tr>
              </thead>
              <tbody id="recordList">
                <asp:PlaceHolder ID="phContents" runat="server">
                  <asp:Repeater ID="dlContents"  runat="server">
                    <itemtemplate>
                      <tr>
                        <td><asp:Literal ID="ltlID" runat="server"></asp:Literal></td>
                        <td><asp:Literal ID="ltlContent" runat="server"></asp:Literal></td>
                        <td><asp:Literal ID="ltlPhoto" runat="server"></asp:Literal></td>
                        <td><asp:Literal ID="ltlAddUser" runat="server"></asp:Literal></td>
                        <td><asp:Literal ID="ltlAddDate" runat="server"></asp:Literal></td>
                      </tr>
                    </itemtemplate>
                  </asp:Repeater>
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="phNoData" runat="server">
                  <tr>
                    <td colspan="5"><p class="no-data">暂无图片评论</p></td>
                  </tr>
                </asp:PlaceHolder>
              </tbody>
              <tfoot class="td-foot-bg" >
                <tr>
                  <td colspan="5"><div class="pre-next">
                      <bairong:sqlpager id="spContents" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0></bairong:sqlpager>
                      总记录数：
                      <asp:Literal ID="ltlCount" runat="server"></asp:Literal>
                    </div>
                    <span class="check-all">
                    <input class="ipt-checkbox" type="checkbox" value="" id="selectAll" />
                    全选</span> <a class="btn-general" href="javascript:;" id="disable_batch" onclick="delInfo()"><span>删除</span></a></td>
                </tr>
              </tfoot>
            </table>
          </div>

        </div>
      </div>
    </div>
  </div>
</form>
</body>
</html>