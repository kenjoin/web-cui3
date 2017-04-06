<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundLicenseUpload" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle"> 更换许可证</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td align="left" style="line-height:28px;"><DIV>
            <p>请在下面表单中上传您的<strong>
              <asp:Literal ID="ltlProductName" runat="server"></asp:Literal>
              </strong>许可证文件。&nbsp;<BR>
              您可以将您的机器标识或者网站域名提供给我们的销售渠道以便获取正式授权。</p>
            <TABLE width="588" border=0 cellpadding="3" cellSpacing=3>
              <TBODY>
                <TR>
                  <TD width="99" >您的机器标识</TD>
                  <TD ><B>
                    <asp:Literal ID="ltlComputerID" runat="server"></asp:Literal>
                    </B></TD>
                </TR>
                <TR>
                  <TD >您的网站域名</TD>
                  <TD ><B>
                    <asp:Literal ID="ltlDomain" runat="server"></asp:Literal>
                    </B></TD>
                </TR>
                <TR>
                  <TD >许可证文件</TD>
                  <TD ><INPUT type=file size=40 id=LicenseFile runat="server">
                    <asp:RequiredFieldValidator ControlToValidate="LicenseFile" ErrorMessage="*" Display="Dynamic"
										runat="server" /></TD>
                </TR>
                <TR>
                  <TD >&nbsp;</TD>
                  <TD ><asp:Button class="button" OnClick="ButtonClick" runat="server" Text="上 传"></asp:Button>
                    &nbsp;&nbsp;
                    <input type="button" class="button" onClick="location.href='background_license.aspx'" value="返 回"></TD>
                </TR>
              </TBODY>
            </TABLE>
            <P></P>
          </DIV></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</HTML>
