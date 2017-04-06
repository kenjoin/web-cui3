<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundOrderAdd" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<!--#include file="../inc/html_head.inc"-->
<title></title>
<user:custom ID="Custom1" type="style" runat="server"></user:custom>
<bairong:Code ID="Code1" type="JQuery" runat="server" />
<script type="text/javascript">
    function fnInvoice() {
        if ($("#Invoice").attr("checked") == true) {
            $(".InvoiceType").show();
        }
        else {
            $(".InvoiceType").hide();
        }
    }
    function fnaddress() {
        if ($("#mainaddress").attr("checked") == true) {
            $("#detailinfo").hide();
        }
    }
    function fnAddress() {
        if ($("#elseaddress").attr("checked") == true) {
            $("#detailinfo").show();
        }
        else {
            $("#detailinfo").hide();
        }

    }

    function fnNext() {
        $("#ConsigneeInfo").show();
        $("#Next").val("确定");

    }

    function fnDel(del) {
        $(del).parent().parent().remove()
}

function fncheck(txtcount) {
    if (isNaN($(txtcount).val())) {
        alert("输入必须为整数");
        $(txtcount).val(1);
    }
}
</script>
<style type="text/css">
.choose { width:85px; border:1px solid #86A1BA; padding-left:3px; float:left; cursor:pointer }
.downbg { display:block; background:url(../Installer/images/down.gif) no-repeat center; width:15px; height:17px; background-color:#E9E9E9; float:right; }
</style>
</head>
<body>
<user:custom ID="Custom2" type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <div class="column">
    <div class="columntitle">订单添加</div>
    <table cellpadding="3" width="100%" align="center">
      <tr>
        <td colspan="2"  align="left" valign="top"><div style="padding: 10px">
            <div class="mainTitle"><strong>请选择顾客用户名和订单中商品</strong></div>
            <table width="95%" align="center" cellpadding="3" cellspacing="3">
              <tr>
                <td width="165" align="left">请选择用户名：</td>
                <td align="left"><div class="choose" onClick="<%=GetChooseUsersClickString()%>"> <span style="float:left; text-align:center" id="lblChoose">请选择--</span> <span class="downbg"></span></div></td>
              </tr>
              <tr>
                <td>请选择商品：</td>
                <td><div class="choose" onClick="<%=GetChoiceGoodsClickString()%>"> <span style="float:left">请选择--</span> <span class="downbg"></span></div></td>
              </tr>
            </table>
            <div><table cellspacing="1"  cellpadding="1" Align="center" border="0" Width="100%" runat="server" style="word-break: break-all"  id="goodList"> <tr   class="summary-title" style="HEIGHT: 25px" align="center"><td>商品名称</td><td>商品编号</td> <td>商品单价</td><td>商品数量</td><td>操作</td></tr>

            </table>
            
            </div>

            <%--<asp:DataList ID="MyDataList" cellspacing="1" ShowHeader="true" cellpadding="1" Align="center" border="0" Width="100%" runat="server" style="word-break: break-all" >
            <HeaderTemplate>
               <tr   class="summary-title" style="HEIGHT: 25px" align="center">
                <td>商品编号</td>
                <td>商品名称</td>
                <td>商品单价</td>
                <td>商品数量</td>
                <td>操作</td>
              </tr>
            </HeaderTemplate>
            <ItemTemplate>
            <tr onMouseOver="this.className='tdbg-dark';" style="HEIGHT: 25px"  align="center" onMouseOut="this.className='tdbg';">
            <td><asp:Literal ID="ltlNumber" runat="server"></asp:Literal></td>
            <td><asp:Literal ID="ltlTitle" runat="server"></asp:Literal></td>
            <td><asp:Literal ID="ltlPrice" runat="server"></asp:Literal></td>
            <td><asp:TextBox ID="Count" runat="server" Width="50" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Text="1"></asp:TextBox></td>
            <td><asp:Literal ID="ltlDelete" runat="server"></asp:Literal></td>
            </tr>
            </ItemTemplate>
            </asp:DataList>--%>
           <table width="95%" align="center">
    <tr>
      <td align="left"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><bairong:sqlpager id="MySqlPager" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0></bairong:sqlpager></td>
          </tr>
        </table></td>
    </tr>

  </table>
            <br>
            <asp:Panel ID="ConsigneeInfo" runat="server"  style="display:none">
              <div class="mainTitle"><strong>收货人信息确认</strong></div>
              <table cellpadding="3" width="95%" align="center" >
                <tr>
                  <td><input type="radio"  name="info" id="mainaddress" onClick="fnaddress()" />
                    河南-郑州市-新密市宝泉村 (收货人：李四 电话：010959151 邮编：452370) <a href="javascript:void" style="color:#1274BA">编辑</a></td>
                  <td></td>
                </tr>
                <tr>
                  <td><input type="radio"  name="info" id="elseaddress" onClick="fnAddress()" />
                    其他收货地址:</td>
                  <td></td>
                </tr>
                <tr>
                  <td style="padding-left:30px"><table width="500" id="detailinfo" style="display:">
                      <tr>
                        <td width="120">收货地区：</td>
                        <td><asp:DropDownList ID="Area" runat="server">
                            <asp:ListItem >--请选择--</asp:ListItem>
                          </asp:DropDownList>
                          <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem >--请选择--</asp:ListItem>
                          </asp:DropDownList>
                          <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem >--请选择--</asp:ListItem>
                          </asp:DropDownList>
                          <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem >--请选择--</asp:ListItem>
                          </asp:DropDownList></td>
                      </tr>
                      <tr>
                        <td width="120">收货地址：</td>
                        <td><asp:TextBox ID="Address" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="50"></asp:TextBox></td>
                      </tr>
                      <tr>
                        <td width="120">收货人姓名：</td>
                        <td><asp:TextBox ID="Consignee" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="50"></asp:TextBox></td>
                      </tr>
                      <tr>
                        <td width="120">邮编：</td>
                        <td><asp:TextBox ID="Postcode" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="50"></asp:TextBox></td>
                      </tr>
                      <tr>
                        <td width="120">邮箱：</td>
                        <td><asp:TextBox ID="Email" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="50"></asp:TextBox></td>
                      </tr>
                      <tr>
                        <td width="120">手机：</td>
                        <td><asp:TextBox ID="Pho" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="50"></asp:TextBox></td>
                      </tr>
                      <tr>
                        <td width="120">固定电话：</td>
                        <td><asp:TextBox ID="Tel" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="50"></asp:TextBox></td>
                      </tr>
                      <tr>
                        <td width="120">是否保存地址：</td>
                        <td><asp:CheckBox ID="cbSaveAddress" runat="server" Text="保存此次收货地址" Checked="true"></asp:CheckBox></td>
                      </tr>
                      <tr>
                        <td width="120">订单附言：</td>
                        <td><asp:TextBox ID="Postscript" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="50"></asp:TextBox></td>
                      </tr>
                  </table></td>
                  <td></td>
                </tr>
                <tr style="BACKGROUND-POSITION:center 50%; BACKGROUND-IMAGE:url(../pic/line.gif); BACKGROUND-REPEAT:repeat-x">
                  <td >&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
              </table>
                  <div class="mainTitle"><strong>送货时间</strong></div>
                <table cellpadding="3" width="95%" align="center">
                  <tr>
                    <td><asp:RadioButtonList ID="RadioButtonList2" runat="server">
                        <asp:ListItem Selected="True">只工作日送货(双休日、假日不用送)</asp:ListItem>
                        <asp:ListItem >工作日、双休日与假日均可送货</asp:ListItem>
                        <asp:ListItem >只双休日、假日送货(工作日不用送) </asp:ListItem>
                      </asp:RadioButtonList></td>
                    <td></td>
                  </tr>
                  <tr style="BACKGROUND-POSITION:center 50%; BACKGROUND-IMAGE:url(../pic/line.gif); BACKGROUND-REPEAT:repeat-x">
                    <td >&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                </table>
 
              <div class="mainTitle"><strong>支付方式</strong></div>
                <table cellpadding="3" width="95%" align="center">
                  <tr>
                    <td width="80"><input type="radio" name="payment" />
                      货到付款 </td>
                    <td style="color:#333">(送货上门后再收款，支持现金、POS机刷卡、支票支付)</td>
                  </tr>
                  <tr>
                    <td><input type="radio" name="payment" />
                      邮局汇款 </td>
                    <td style="color:#333">(通过快钱平台收款 汇款后1-3个工作日到账)</td>
                  </tr>
                  <tr>
                    <td><input type="radio" name="payment" />
                      在线支付 </td>
                    <td style="color:#333">(即时到帐，支持绝大数银行借记卡及部分银行信用卡)</td>
                  </tr>
                  <tr style="BACKGROUND-POSITION:center 50%; BACKGROUND-IMAGE:url(../pic/line.gif); BACKGROUND-REPEAT:repeat-x">
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                </table>
                <div class="mainTitle"><strong>配送方式</strong></div>
                <table cellpadding="3" width="95%" align="center">
                  <tr>
                    <td><asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem Selected="True">快递-申通深圳(20元)</asp:ListItem>
                        <asp:ListItem >快递-顺丰上海(30元)</asp:ListItem>
                        <asp:ListItem >平邮 </asp:ListItem>
                      </asp:RadioButtonList></td>
                  </tr>
                  <tr style="BACKGROUND-POSITION:center 50%; BACKGROUND-IMAGE:url(../pic/line.gif); BACKGROUND-REPEAT:repeat-x">
                    <td >&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                </table>

                <div class="mainTitle"><strong>支付定单确认</strong></div>
                <table cellpadding="3" width="95%" align="center">
                  <tr>
                    <td width="200">商品总价格：</td>
                    <td><asp:Literal ID="TotalPrice" runat="server">12</asp:Literal></td>
                  </tr>
                  <tr>
                    <td width="165" >配送费用：</td>
                    <td><asp:Literal ID="Literal1" runat="server">12</asp:Literal></td>
                  </tr>
                  <tr>
                    <td width="165" >定单总金额：</td>
                    <td><asp:Literal ID="Literal3" runat="server">12</asp:Literal></td>
                  </tr>
                  <tr>
                    <td>是否要发票：</td>
                    <td><input type="checkbox" id="Invoice" onClick="fnInvoice()" /></td>
                  </tr>
                  <tr class="InvoiceType" style="display:none">
                    <td>发票类型：</td>
                    <td><asp:RadioButtonList ID="InvoiceStyle" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">普通发票</asp:ListItem>
                        <asp:ListItem >增值税发票</asp:ListItem>
                      </asp:RadioButtonList></td>
                  </tr>
                  <tr class="InvoiceType" style="display:none">
                    <td>发票抬头：</td>
                    <td><asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">个人 </asp:ListItem>
                        <asp:ListItem >单位</asp:ListItem>
                      </asp:RadioButtonList></td>
                  </tr>
                  <tr class="InvoiceType" style="display:none">
                    <td>发票内容：</td>
                    <td><asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">明细</asp:ListItem>
                        <asp:ListItem >办公用品</asp:ListItem>
                        <asp:ListItem >电脑配件</asp:ListItem>
                        <asp:ListItem >耗材</asp:ListItem>
                      </asp:RadioButtonList></td>
                  </tr>
                </table>
              </asp:Panel>
          </div></td>
      </tr>
      <tr style="BACKGROUND-POSITION:center 50%; BACKGROUND-IMAGE:url(../pic/line.gif); BACKGROUND-REPEAT:repeat-x">
        <td >&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2"><table cellpadding="0" cellspacing="0" width="100%" border="0" align="center" >
            <tr >
              <td align="right"><span style="padding-right:30 "><span style="padding-right:30 "></span> <span style="padding-right:30 "></span>
<%--                <asp:Button class="button" ID="Previous"  Onclick="PreviousPanel" CausesValidation="false" runat="server" Text="< 上一步"></asp:Button>--%>
                &nbsp;
                <input type="button" onclick="fnNext()" value="下一步" class="button" id="Next" />
<%--                <asp:Button class="button" id="Next"  onclick="NextPanel" runat="server" text="确定"></asp:Button--%>
                <span style="padding-right:30 "></span></span></td>
            </tr>
          </table></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>
