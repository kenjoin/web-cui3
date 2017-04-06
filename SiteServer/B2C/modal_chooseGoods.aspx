<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.ChooseGoods" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>选择商品</title>
     <!--#include file="../inc/html_head.inc"-->
    <user:custom ID="Custom1" type="style" runat="server"></user:custom>
    <bairong:Code ID="Code1" type="JQuery" runat="server" />
    <script type="text/javascript">
        function fnReturn() {
            $("#goodslist").show();
            $("#choose").hide();
        }
        function fnTips() {
            $("#goodslist").hide();
            $("#choose").show();
        }

        
    </script>

</head>
<body>
    <form id="myForm" runat="server">
     <div class="tips" onclick="fnTips()" style="cursor:pointer">筛选</div>
     <div id="goodslist">
       <div class="condition summary-title" style="text-align:left; margin-bottom:5px; padding:8px 8px"><strong>选择栏目:</strong>&nbsp;&nbsp; <asp:DropDownList ID="NodeIDDropDownList" AutoPostBack="true" OnSelectedIndexChanged="Search_OnClick" runat="server"></asp:DropDownList></div>
     <asp:DataList ID="MyDataList" cellspacing="1" ShowHeader="true" cellpadding="1" Align="center" border="0" Width="100%" runat="server" style="word-break: break-all" >
     <ItemTemplate>
        <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" style="HEIGHT: 25px" onMouseOut="this.className='tdbg';">
          <td style="width: 8%;" align="right">
          <asp:Literal ID="ltlCheckBox" runat="server"></asp:Literal>  
          </td>
          <td  align="left"><asp:Literal ID="ltlContent" runat="server"></asp:Literal></td>
        </tr>
      </ItemTemplate>
     
     </asp:DataList>
         <table width="95%" align="center">
    <tr>
      <td align="left"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><bairong:sqlpager id="MySqlPager" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0></bairong:sqlpager></td>
          </tr>
        </table></td>
    </tr>
      <tr>
                <td colspan="2" align="center" style="padding-top:20px"><asp:Button class="button" id="Ok" text="确 定"  runat="server" />
                <%--<input type="button" value="确定" onclick="fnGoods()" />--%>
                &nbsp;&nbsp;<asp:Button class="button" id="Cancel" text="关闭"  runat="server" /></td>
            </tr>
  </table>
    </div>
     <div id="choose"  style="display:none">
        <div class="condition summary-title" style="text-align:left; margin-bottom:5px; padding:8px 8px"><strong>添加筛选条件:</strong>&nbsp;&nbsp;<asp:DropDownList ID="AddCondition" runat="server">
            <asp:ListItem Selected="True">商品号</asp:ListItem>
            <asp:ListItem >销售价格</asp:ListItem>
            <asp:ListItem >成本价</asp:ListItem>
            <asp:ListItem >市场价</asp:ListItem>
            <asp:ListItem >商品名称</asp:ListItem>
        </asp:DropDownList></div>
        <table width="95%" cellpadding="3">
            <tr>
                <td>商品号</td>
                <td><asp:DropDownList ID="Compare" runat="server">
                <asp:ListItem>包含</asp:ListItem>
                <asp:ListItem>等于</asp:ListItem>
                <asp:ListItem>开头等于</asp:ListItem>
                <asp:ListItem>结尾等于</asp:ListItem>
                <asp:ListItem>不包含</asp:ListItem>
                </asp:DropDownList></td>            
                <td><asp:TextBox ID="Number" runat="server"></asp:TextBox></td>
                <td><a href="#" style="color:#1274BA">删除</a></td>
            </tr>
            <tr>
                <td>销售价格</td>
                <td><asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>包含</asp:ListItem>
                <asp:ListItem>等于</asp:ListItem>
                <asp:ListItem>开头等于</asp:ListItem>
                <asp:ListItem>结尾等于</asp:ListItem>
                <asp:ListItem>不包含</asp:ListItem>
                </asp:DropDownList></td>            
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                <td><a href="#" style="color:#1274BA">删除</a></td>
            </tr>
            <tr>
                <td>商品名称</td>
                <td><asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>包含</asp:ListItem>
                <asp:ListItem>等于</asp:ListItem>
                <asp:ListItem>开头等于</asp:ListItem>
                <asp:ListItem>结尾等于</asp:ListItem>
                <asp:ListItem>不包含</asp:ListItem>
                </asp:DropDownList></td>            
                <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                <td><a href="#" style="color:#1274BA">删除</a></td>
            </tr>
            <tr>
                <td>成本价</td>
                <td><asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>包含</asp:ListItem>
                <asp:ListItem>等于</asp:ListItem>
                <asp:ListItem>开头等于</asp:ListItem>
                <asp:ListItem>结尾等于</asp:ListItem>
                <asp:ListItem>不包含</asp:ListItem>
                </asp:DropDownList></td>            
                <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                <td><a href="#" style="color:#1274BA">删除</a></td>
            </tr>
            <tr>
                <td colspan="4" align="center" style="padding-top:20px"><input type="button" ID="Return" runat="server"  value="筛选并返回列表" class="button" onclick="fnReturn()" /></td>
            </tr>
        </table>
     </div>
     <div id="goodslists"></div>
    </form>
</body>
</html>
