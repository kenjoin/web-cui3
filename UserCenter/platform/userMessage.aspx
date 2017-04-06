<%@ Page Language="C#" Inherits="UserCenter.System.Platform.UserMessage" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/admin/admin.css" rel="stylesheet" type="text/css" />
<bairong:Code  type="JQuery" runat="server" />
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
        var url = 'userMessage.aspx?Delete=True&IDCollection=' + v;
        delConfirm(url, '确认要执行该操作吗？');
}
</script>
</head>
<body>
<bairong:Message runat="server"></bairong:Message>
<form id="Form1" runat="server">
  <div class="path"><p>当前位置：系统功能<span>&gt;</span>短消息</p></div>
  <div class="main-cont" >
    <div class="tab-box">
      <asp:Literal ID="ltlMessageType" runat="server"></asp:Literal>
      <div class="tab-con-s1">
        <div class="set-area">
          <div class="user-list">
            <table class="table" width="100%" border="0" cellpadding="0" cellspacing="0" id="dataList">
              <colgroup>
              <col class="w30" />
              <col class="w130" />
              <col />
              <col class="w130" />
              <col class="w50" />
              </colgroup>
              <thead class="tb-tit-bg">
                <tr>
                  <th> </th>
                  <th><div class="th-gap">消息发送人</div></th>
                  <th><div class="th-gap">内容摘要</div></th>
                  <th><div class="th-gap">日期</div></th>
                  <th><div class="th-gap">&nbsp;</div></th>
                </tr>
              </thead>
              <tbody  id="recordList">
                <asp:Repeater ID="dlContents"  runat="server">
                  <itemtemplate>
                    <tr>
                      <td class="cx"><input type="checkbox" onClick="setListCheck(this)" id="IDCollection" value='<%#DataBinder.Eval(Container.DataItem, "ID")%>'/></td>
                      <td class="dt" style="width:154px;"><asp:Literal ID="ltlMessageFrom" runat="server"></asp:Literal></td>
                      <td class="gt tf"><asp:Literal ID="ltlContent" runat="server"></asp:Literal></td>
                      <td class="dt" style="width:150px;"><asp:Literal ID="ltlAddDate" runat="server"></asp:Literal></td>
                      <td class="dt" style="width:80px;"><asp:Literal ID="ltlButton" runat="server"></asp:Literal></td>
                    </tr>
                  </itemtemplate>
                </asp:Repeater>
              </tbody>
              <tfoot class="td-foot-bg">
                    	<tr>
                    		<td colspan="5">
                            
                            <div class="pre-next">
                      <bairong:sqlpager id="spContents" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0></bairong:sqlpager>
                      总记录数：
                      <asp:Literal ID="ltlCount" runat="server"></asp:Literal>
                    </div>
                    <span class="check-all">
                    <input class="ipt-checkbox" type="checkbox" value="" id="selectAll" />
                    全选</span> <a class="btn-general highlight" href="userMessageAdd.aspx" id="unshield"><span>发送消息</span></a><a class="btn-general" href="javascript:;" id="disable_batch" onClick="delInfo()"><span>删除</span></a>
                            </td>
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
