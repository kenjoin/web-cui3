<%@ Page Language="C#" Inherits="UserCenter.System.Platform.AddCardRecord" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/admin/admin.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div class="path">
    <p>当前位置：消费中心<span>&gt;</span>增加点卡记录</p>
  </div>
   <div class="main-cont">
    <div class="tab-box">
      <h5 class="tab-nav tab-nav-s1 clear"> <a class="current" href="addCardRecord.aspx"><span>增加点卡记录</span></a> <a href="consumeCardRecord.aspx"><span>消费点卡记录</span></a> </h5>
      <div class="tab-con-s1">
        <div class="set-area">
         <div class="search-area">
            <div class="item">
              <label for="start"><strong>时间</strong></label>
              <asp:DropDownList ID="DrpTime" runat="server"  OnSelectedIndexChanged="DrpTime_SelectedIndexChanged" AutoPostBack="true">
              </asp:DropDownList>

            </div>
          </div>
          <div class="user-list" style="width:100%">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table" id="dataList"  >
               <thead class="tb-tit-bg">
                   <tr>
                  <th><div class="th-gap">记录时间</div></th>
                  <th><div class="th-gap">IP地址</div></th>
                  <th><div class="th-gap">购买点数</div></th>
                  <th><div class="th-gap">说明</div></th>
                </tr>
              </thead>
              <tbody id="recordList">
       <asp:Repeater ID="dlContents"  runat="server">
      <itemtemplate>
         <tr>
        <td><asp:Literal runat="server" ID="ltlBuyTime"></asp:Literal></td>
        <td><asp:Literal runat="server" ID="ltlIP"></asp:Literal></td>
        <td><asp:Literal runat="server" ID="ltlCardCount"></asp:Literal></td>
        <td><asp:Literal runat="server" ID="ltlCardMethod"></asp:Literal></td>
    </tr>
  
        </itemtemplate>
</asp:Repeater>
              </tbody>
              <tfoot class="td-foot-bg">
                    	<tr>
                    		<td colspan="4">
                            
                            <div class="pre-next">
                      <bairong:sqlpager id="MySqlPager" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing="0" border="0"></bairong:sqlpager>
                      </div>

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
