<%@ Page Language="C#" Inherits="UserCenter.System.CMS.Contents"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="../css/admin/admin.css" rel="stylesheet" type="text/css" />
<link href="../js/datepick/jquery.datepick.css" rel="stylesheet" type="text/css" />
<script src="../js/jquery.min.js" type="text/javascript"></script>
<script src="../js/datepick/jquery.datepick.min.js"  type="text/javascript"></script>
<script src="../js/admin-all.js"  type="text/javascript" ></script>
<script type="text/javascript">
$(function() {
	bindSelectAll('#selectAll','#recordList > tr > td > input[type=checkbox]');
});

$(function () {
    $('#start,#end').datepick({
        'dateFormat': 'yyyy-mm-dd',
        'dayNames': ['日', '一', '二', '三', '四', '五', '六'],
        'dayNamesMin': ['日', '一', '二', '三', '四', '五', '六'],
        'dayNamesShort': ['日', '一', '二', '三', '四', '五', '六'],
        'monthNames': ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
        'monthNamesShort': ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
        'prevText': '上一月',
        'nextText': '下一月',
        'currentText': '今天',
        'closeText': '关闭',
        'clearText': '清空'
    });
})
function delInfo() { 
     var v = getSelectedValues('#recordList > tr > td > input[type=checkbox]');
        if (!v) {
            alert('最少选中其中一项');
            return;
        }
        var url = 'contents.aspx?PublishmentSystemID=<%=base.PublishmentSystemID%>&Delete=True&ContentIDCollection=' + v;
        delConfirm(url, '确认要执行该操作吗？');
}
</script>
</head>
<body class="main-body">
<bairong:Message runat="server"></bairong:Message>
<form runat="server">
  <div class="path">
    <p>当前位置：内容投稿<span>&gt;</span>我的投稿</p>
  </div>
  <div class="main-cont">
    <div class="tab-box">
      <asp:Literal ID="ltlContentType" runat="server"></asp:Literal>
      <div class="tab-con-s1">
        <div class="set-area" >
          <div class="search-area">
            <div class="item">
              <label for="disabled"><strong>投稿站点</strong></label>
              <asp:DropDownList ID="ddlPublishmentSystemID" CssClass="select w100" runat="server"></asp:DropDownList>
              <label for="start"><strong>时间</strong></label>
              <input type="text" name="start" id="start" readonly="readonly" value="" class="ipt-txt w70" runat="server" />
              &nbsp;&nbsp;--&nbsp;&nbsp;
              <input type="text" name="end" id="end"  readonly="readonly" class="ipt-txt w70" value="" runat="server" />
              <label><strong>关键字</strong></label>
              <asp:TextBox ID="Keyword" class="ipt-txt w120" runat="server"></asp:TextBox>
              <asp:LinkButton OnClick="Search_OnClick" runat="server" CssClass="btn-general"><span>搜索</span></asp:LinkButton>
            </div>
          </div>
          <div class="user-list" >
            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table" >
              <colgroup>
              <col class="w50" />
              <col />
              <col class="w130" />
              <col class="w90" />
              <col class="w70" />
              <col class="w140" />
              </colgroup>
              <thead class="tb-tit-bg">
                <tr>
                  <th><div class="th-gap"></div></th>
                  <th><div class="th-gap">内容标题</div></th>
                  <th><div class="th-gap">栏目</div></th>
                  <th><div class="th-gap">发布时间</div></th>
                  <th><div class="th-gap">状态</div></th>
                  <th><div class="th-gap">操作</div></th>
                </tr>
              </thead>
              <tbody id="recordList">
                <asp:PlaceHolder ID="phContents" runat="server">
                  <asp:Repeater ID="dlContents"  runat="server">
                    <itemtemplate>
                      <tr>
                        <td><asp:Literal ID="ltlID" runat="server"></asp:Literal></td>
                        <td><asp:Literal ID="ltlContent" runat="server"></asp:Literal></td>
                        <td><asp:Literal ID="ltlChannel" runat="server"></asp:Literal></td>
                        <td><asp:Literal ID="ltlDateTime" runat="server"></asp:Literal></td>
                        <td><asp:Literal ID="ltlState" runat="server"></asp:Literal></td>
                        <td><asp:Literal ID="ltlOperate" runat="server"></asp:Literal></td>
                      </tr>
                    </itemtemplate>
                  </asp:Repeater>
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="phNoData" runat="server">
                  <tr>
                    <td colspan="6"><p class="no-data">无投稿内容，请更换搜索条件</p></td>
                  </tr>
                </asp:PlaceHolder>
              </tbody>
              <tfoot class="td-foot-bg" >
                <tr>
                  <td colspan="6"><div class="pre-next">
                      <bairong:sqlpager id="spContents" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0></bairong:sqlpager>
                      总记录数：
                      <asp:Literal ID="ltlCount" runat="server"></asp:Literal>
                    </div>
                    <span class="check-all">
                    <input class="ipt-checkbox" type="checkbox" value="" id="selectAll" />
                    全选</span> <a class="btn-general highlight" href="contentSelect.aspx" id="unshield"><span>添加投稿</span></a><a class="btn-general" href="javascript:;" id="disable_batch" onclick="delInfo()"><span>删除</span></a></td>
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
