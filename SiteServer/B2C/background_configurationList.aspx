<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundConfigurationList" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">商品列表页配置</div>
    <div class="tips">提示：如果修改了自动分页选项，需要将所有内容页重新生成</div>
    <table width="95%" align="center" cellpadding="5" cellspacing="5">
      <tr>
        <td width="200" align="left"><bairong:help HelpText="列表页每页显示商品数" Text="列表页每页显示商品数：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" id="tbListPageNum" runat="server"/>
          <asp:RequiredFieldValidator
                    ControlToValidate="tbListPageNum"
                    ErrorMessage="*"
                    Display="Dynamic"
                    runat="server"/>
          <asp:RegularExpressionValidator
                    ControlToValidate="tbListPageNum"
                    ValidationExpression="\d+"
                    Display="Dynamic"
                    ErrorMessage="商品数必须为数字"
                    runat="server"/></td>
      </tr>
      <tr>
        <td width="200" align="left"><bairong:help HelpText="商品筛选默认价格区间" Text="商品筛选默认价格区间：" runat="server" ></bairong:help></td>
        <td align="left"><asp:Literal ID="ltlPriceSale" runat="server"></asp:Literal></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="保 存" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
