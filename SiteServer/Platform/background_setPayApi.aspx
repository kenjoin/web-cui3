<%@ Page Language="C#"  Inherits="BaiRong.BackgroundPages.BackgroundSetPayApi" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<!--#include file="../inc/html_head.inc"-->
    <title></title>
     <user:custom ID="Custom1" type="style" runat="server"></user:custom>
</head>
<body>
    <form id="form1" runat="server">
    <bairong:Message runat="server"></bairong:Message>
    <div class="column">
     <div  class="columntitle">配置支付接口</div>
     <table width="95%" align="center" cellpadding="3" cellspacing="3">
        <tr>
            <td>支付方式:</td>
            <td><asp:DropDownList ID="ApiType" runat="server" OnSelectedIndexChanged="ReFresh"  AutoPostBack="true"></asp:DropDownList ></td>
        </tr>
        <tr>
            <td>接口状态:</td>
            <td><asp:RadioButtonList ID="rbIsOpen" runat="server" RepeatDirection="Horizontal">
           <asp:ListItem Selected="True" Value="True">开启</asp:ListItem>
           <asp:ListItem  Value="False">关闭</asp:ListItem>
            </asp:RadioButtonList></td>
        </tr>
         <asp:PlaceHolder ID="phAlipay" runat="server" Visible="false">
            <tr>
            <td>支付方式名称:</td>
            <td><asp:TextBox ID="PayName" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"  MaxLength="50" Size="50" Text="支付宝" ></asp:TextBox>
            
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="PayName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>支付方式描述:</td>
            <td><asp:TextBox ID="Description" runat="server" TextMode="MultiLine" MaxLength="255"  Width="320" Height="60" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Text="支付宝网站(www.alipay.com) 是国内先进的网上支付平台。 "></asp:TextBox></td>
        </tr>
            <tr>
                <td>支付宝账户:</td>
                <td><asp:TextBox ID="Account" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Size="50"  ></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="Account"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>交易安全校验码:</td>
                <td><asp:TextBox ID="CheckCode" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"  Size="50" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="CheckCode"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>合作者身份ID:</td>
                <td><asp:TextBox ID="PartnerID" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Size="50" ></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="PartnerID"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>选择接口类型:</td>
                <td><asp:DropDownList ID="AlipayType" runat="server"></asp:DropDownList></td>
            </tr>
         </asp:PlaceHolder>
        <%-- <asp:PlaceHolder ID="phTenpay" runat="server" Visible="false">
            <tr>
            <td>支付方式名称:</td>
            <td><asp:TextBox ID="TenpayPaymentName" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"  MaxLength="50" Size="50" Text="财付通" ></asp:TextBox></td>
        </tr>
        <tr>
            <td>支付方式描述:</td>
            <td><asp:TextBox ID="TenpayDescription" runat="server" TextMode="MultiLine" MaxLength="255"  Width="320" Height="60" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Text="财付通（www.tenpay.com） - 腾讯旗下在线支付平台，通过国家权威安全认证，支持各大银行网上支付，免支付手续费。
 "></asp:TextBox></td>
        </tr>
            <tr>
                <td>财付通账户:</td>
                <td><asp:TextBox ID="TenpayAccout" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Size="50"  ></asp:TextBox></td>
            </tr>
            <tr>
                <td>财付通安全校验码:</td>
                <td><asp:TextBox ID="TenpayCheckCode" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"  Size="50" ></asp:TextBox></td>
            </tr>
            <tr>
                <td>财付通账户合作者:</td>
                <td><asp:TextBox ID="TenpayPartnerID" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Size="50" ></asp:TextBox></td>
            </tr>
            
         </asp:PlaceHolder>--%>
        <tr>
            <td>支付手续费:</td>
            <td><asp:TextBox ID="Fee" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" size="50" ></asp:TextBox></td>
        </tr>
        <tr>
            <td>货到付款?</td>
            <td>否</td>
        </tr>
        <tr>
            <td>在线支付?</td>
            <td>是</td>
        </tr>
        <tr>
        <td></td>
            <td><asp:Button ID="Submit" runat="server" Text="确定"  class="button" OnClick="Submit_OnClick" />&nbsp;&nbsp;
                <input class="button" type="button" onClick="location.href='<%=returnUrl%>';return false;" value="返 回" />
            </td>
            
        </tr>
     </table>
    </div>
    </form>
</body>
</html>
