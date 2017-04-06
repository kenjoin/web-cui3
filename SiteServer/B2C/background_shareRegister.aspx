<%@ Page Language="C#"  Inherits="SiteServer.B2C.BackgroundPages.BackgroundShareRegister" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>开通bShare插件</title>
     <link rel="stylesheet" href="../style.css" type="text/css" />
     <bairong:Code type="Jquery" runat="server" />
    <user:custom ID="Custom1" type="style" runat="server"></user:custom>
     <style type="text/css" >
        table{background-color:#CFCFCF}
    table tr td{background-color:#ffffff}
    </style>


</head>
<body>
    <form id="myForm" runat="server">
    <div class="column">
    <div class="columntitle">bShare分享插件</div>
    <table width="100%" cellpadding="6" cellspacing="1">
        <tr>
            <td colspan="2" align="left">bShare不止是一个分享按钮。bShare是全球中文互联网最强大的社交分享引擎！
只需一个按钮，就能为您的网站注入社交化功能！
</td>

        </tr>
        <tr>
            <td colspan="2" align="left">bShare智能分享引擎让您的用户可以轻松地将最喜欢的内容分享到社交网站、微博上与好友分享。用户无须离开您的网站，就能快速地进行分享，继续浏览您的网站！

</td>
        </tr>
        <tr>
            <td colspan="2" align="left" style="color:#cc0a0a;font-weight:bold">您尚未开通bShare,请先开通bShare服务</td>
        </tr>
        <tr>
            <td align="right" >网站域名:</td>
            <td align="left"><asp:TextBox ID="domain" runat="server"></asp:TextBox><span style="color:Red">*</span>(例如:siteserver.cn)
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="domain" Display="Dynamic" ErrorMessage="请输入域名"></asp:RequiredFieldValidator>
            
            </td>
        </tr>
         <tr>
            <td align="right" >账号类型:</td>
            <td align="left">
        
            <input type="radio" value="新注册" name="num" checked="checked"  />新注册
    <input type="radio" value="已经有账号" name="num" />已经有账号
            </td>
        </tr>
         <tr>
            <td align="right" >用户名: </td>   
            <td align="left"><asp:TextBox ID="email" runat="server"></asp:TextBox><span style="color:Red">*</span>(E-mail地址)
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="email" Display="Dynamic" ErrorMessage="请输入用户名"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="请输入正确的邮箱地址" 
                    
                    ControlToValidate="email" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
            </td>
        </tr>
         <tr>
            <td align="right" >密码:</td>
            <td align="left" ><asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox> <span style="color:Red">*</span>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="password" Display="Dynamic" ErrorMessage="请输入密码"></asp:RequiredFieldValidator></td>
        </tr>
         <tr>
            <td align="right" >确定密码:</td>
            <td align="left"><asp:TextBox ID="repPassword" runat="server" TextMode="Password"></asp:TextBox><span style="color:Red">*</span>
          
            <asp:CompareValidator ID="compwd" runat="server" ControlToCompare="password" 
                    ControlToValidate="repPassword" ErrorMessage="两次输入密码不一致"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
        <td></td>
            <td ><%--<input type="button" runat="server" onclick="OpenShare()" value="开通bShare服务" />--%>
            <asp:Button ID="btnOpenShare" runat="server" Text="开通bShare服务" OnClick="btnOpenShare_Click" />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
