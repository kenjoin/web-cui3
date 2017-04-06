<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundCardTypeAdd" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<!--#include file="../inc/html_head.inc"-->
    <title></title>
    <user:custom type="style" runat="server"></user:custom>
</head>
<body>
    <form id="myForm" runat="server">
    <bairong:Message runat="server"></bairong:Message>
    <div class="column">
     <div  class="columntitle">添加点卡类型</div>
     <table width="95%" align="center" cellpadding="3" cellspacing="3">
        <tr>
            <td width="8%">类型名称:</td>
            <td align="left"><asp:TextBox ID="PointType" runat="server"  class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" size="30" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="PointType"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>购买金额:</td>
            <td><asp:TextBox ID="Price" runat="server"  class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" size="30"></asp:TextBox>&nbsp;元
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="Price"></asp:RequiredFieldValidator>
              
            </td>
        </tr>
        <tr>
            <td>充值点数:</td>
            <td><asp:TextBox ID="PointCount" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" size="30" ></asp:TextBox>&nbsp;点
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="PointCount"></asp:RequiredFieldValidator>
          </td>
            
        </tr>
        <tr>
            <td>类型说明:</td>
            <td><asp:TextBox ID="Describe" runat="server" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" TextMode="MultiLine" MaxLength="255" Width="220" Height="60"></asp:TextBox></td>
        </tr>
        <tr>
        <td></td>
            <td><asp:Button ID="Submit" runat="server" Text="确定"  class="button" OnClick="Submit_OnClick" />&nbsp;&nbsp;
                <input class="button" type="button"  value="返 回" onclick="location.href='<%=returnUrl %>'" />
            </td>
            
        </tr>
     </table>
    </div>
    </form>
</body>
</html>
