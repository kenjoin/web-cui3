<%@ Page Language="C#" Inherits="UserCenter.System.Space.BlogCategory" enableViewState="false" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
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
        var url = 'contents.aspx?Delete=True&ContentIDCollection=' + v;
        delConfirm(url, '确认要执行该操作吗？');
}
</script>
</head>

<body class="main-body">
<bairong:Message runat="server"></bairong:Message>
<div class="path">
  <p>当前位置：空间管理<span>&gt;</span>博客分类</p>
</div>
<div class="main-cont">
  <div class="tab-box">
    <h5 class="tab-nav tab-nav-s1 clear"> <a href="blogContents.aspx"><span>日志</span></a> <a class="current" href="blogCategory.aspx"><span>分类</span></a> </h5>
    <div class="tab-con-s1">
      <div class="set-area">
        <form runat="server">
            <div class="form-row">
              <label for="" class="form-field">分类名称</label>
              <div class="form-cont">
                <asp:TextBox ID="CategoryName" class="input-txt" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                ControlToValidate="CategoryName"
                ErrorMessage=" *"
                Display="Dynamic"
                runat="server"
                />
                <asp:LinkButton class="btn-general highlight" OnClick="AddCategory_OnClick" runat="server"><span>保存</span></asp:LinkButton>
              </div>
            </div>
          </form>
        
        <div class="user-list" >
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table" >
            <colgroup>
            <col />
            <col class="w140" />
            <col class="w50" />
            <col class="w50" />
            <col class="w50" />
            <col class="w50" />
            </colgroup>
            <thead class="tb-tit-bg">
              <tr>
                <th><div class="th-gap">分类名称</div></th>
                <th><div class="th-gap">建立日期</div></th>
                <th><div class="th-gap">上升</div></th>
                <th><div class="th-gap">下降</div></th>
                <th><div class="th-gap"></div></th>
                <th><div class="th-gap"></div></th>
              </tr>
            </thead>
            <tbody id="recordList">
              <asp:Repeater ID="dlContents"  runat="server">
                <itemtemplate>
                  <tr>
                    <td><asp:Literal ID="ltlCategoryName" runat="server"></asp:Literal></td>
                    <td><asp:Literal ID="ltlAddDate" runat="server"></asp:Literal></td>
                    <td><asp:Literal ID="ltlSubtract" runat="server"></asp:Literal></td>
                    <td><asp:Literal ID="ltlAdd" runat="server"></asp:Literal></td>
                    <td><a href="blogCategory.aspx?CategoryName=<%# DataBinder.Eval(Container.DataItem, "CategoryName") %>">编辑</a></td>
                    <td><a href="blogCategory.aspx?Delete=True&CategoryName=<%# DataBinder.Eval(Container.DataItem, "CategoryName") %>">删除</a></td>
                  </tr>
                </itemtemplate>
              </asp:Repeater>
            </tbody>
            <tfoot class="td-foot-bg" >
              <tr>
                <td colspan="6"><div class="pre-next"> 总记录数：
                    <asp:Literal ID="ltlCount" runat="server"></asp:Literal>
                  </div></td>
              </tr>
            </tfoot>
          </table>
          <br />
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
