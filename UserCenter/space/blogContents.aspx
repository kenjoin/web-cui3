<%@ Page Language="C#" Inherits="UserCenter.System.Space.BlogContents" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/admin/admin.css" rel="stylesheet" type="text/css" />
<script src="../js/jquery.min.js" type="text/javascript"></script>
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
        var url = 'blogContents.aspx?Delete=True&ContentIDCollection=' + v;
        delConfirm(url, '确认要执行该操作吗？');
}
</script>
</head>
<body class="main-body">
<bairong:Message runat="server"></bairong:Message>
<form runat="server">
  <div class="path">
    <p>当前位置：空间管理<span>&gt;</span>博客日志</p>
  </div>
  <div class="main-cont">
    <div class="tab-box">
      <h5 class="tab-nav tab-nav-s1 clear"> <a class="current" href="blogContents.aspx"><span>日志</span></a> <a href="blogCategory.aspx"><span>分类</span></a> </h5>
      <div class="tab-con-s1">
        <div class="set-area">
          <div class="search-area">
            <div class="item">
              <label for="disabled"><strong>选择分类</strong></label>
              <asp:DropDownList ID="CategoryName" DataValueField="CategoryName" DataTextField="CategoryName" AutoPostBack="true" OnSelectedIndexChanged="CategoryName_OnSelectedIndexChanged" runat="server"></asp:DropDownList>
            </div>
          </div>
          <div class="user-list">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table" >
              <colgroup>
              <col class="w50" />
              <col />
              <col class="w130" />
              <col class="w140" />
              <col class="w50" />
              <col class="w50" />
              <col class="w50" />
              <col class="w70" />
              <col class="w50" />
              </colgroup>
              <thead class="tb-tit-bg">
                <tr>
                  <th><div class="th-gap"></div></th>
                  <th><div class="th-gap">日志标题</div></th>
                  <th><div class="th-gap">分类</div></th>
                  <th><div class="th-gap">发布时间</div></th>
                  <th><div class="th-gap">置顶</div></th>
                  <th><div class="th-gap">上升</div></th>
                  <th><div class="th-gap">下降</div></th>
                  <th><div class="th-gap">状态</div></th>
                  <th><div class="th-gap"></div></th>
                </tr>
              </thead>
              <tbody id="recordList">
                <asp:PlaceHolder ID="phContents" runat="server">
                  <asp:Repeater ID="dlContents"  runat="server">
                    <itemtemplate>
                      <tr>
                        <td><asp:Literal ID="ltlID" runat="server"></asp:Literal></td>
                        <td><asp:Literal ID="ltlBlogTitle" runat="server"></asp:Literal></td>
                        <td><asp:Literal ID="ltlCategoryName" runat="server"></asp:Literal></td>
                        <td><asp:Literal ID="ltlAddDate" runat="server"></asp:Literal></td>
                        <td align="center"><asp:LinkButton Visible='<%# GetTopVisible((int)DataBinder.Eval(Container.DataItem, "Taxis")) %>' OnClick="CommandButton_Click" CommandName="Top" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"ID")%>' runat="server"><%# GetTopHtml((int)DataBinder.Eval(Container.DataItem, "Taxis")) %></asp:LinkButton></td>
                        <td align="center"><asp:LinkButton Visible='<%# GetUpVisible((int)DataBinder.Eval(Container.DataItem, "Taxis")) %>' OnClick="CommandButton_Click" CommandName="Subtract" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"ID")%>' runat="server"><img src="../../livefiles/images/icon/up.gif" border="0" alt="上升" /></asp:LinkButton></td>
                        <td align="center"><asp:LinkButton Visible='<%# GetDownVisible((int)DataBinder.Eval(Container.DataItem, "Taxis")) %>' OnClick="CommandButton_Click" CommandName="Add" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"ID")%>' runat="server"><img src="../../livefiles/images/icon/down.gif" border="0" alt="下降" /></asp:LinkButton></td>
                        <td><asp:Literal ID="ltlState" runat="server"></asp:Literal></td>
                        <td><a href="blogAdd.aspx?ContentID=<%# (int)DataBinder.Eval(Container.DataItem, "ID") %>">编辑</a></td>
                      </tr>
                    </itemtemplate>
                  </asp:Repeater>
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="phNoData" runat="server">
                  <tr>
                    <td colspan="9"><p class="no-data">您还未添加博客日志</p></td>
                  </tr>
                </asp:PlaceHolder>
              </tbody>
              <tfoot class="td-foot-bg">
                <tr>
                  <td colspan="9"><div class="pre-next">
                      <bairong:sqlpager id="spContents" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0></bairong:sqlpager>
                      总记录数：
                      <asp:Literal ID="ltlCount" runat="server"></asp:Literal>
                    </div>
                    <span class="check-all">
                    <input class="ipt-checkbox" type="checkbox" value="" id="selectAll" />
                    全选</span> <a class="btn-general highlight" href="blogAdd.aspx" id="unshield"><span>发表日志</span></a><a class="btn-general" href="javascript:;" id="disable_batch" onClick="delInfo()"><span>删除</span></a></td>
                </tr>
              </tfoot>
            </table>
            <br />
          </div>
        </div>
      </div>
    </div>
  </div>
</form>
</body>
</html>
