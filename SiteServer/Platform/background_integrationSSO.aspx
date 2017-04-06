<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.BackgroundIntegrationSSO" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBliC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle"> 单点登录(SSO)设置</div>
    <table width="98%" align="center" cellpadding="3" cellspacing="3">
      <tr>
          <td colspan="2"><div class="tips">本设置在系统安装时将自动生成，一般情况请勿修改。</div></td>
        </tr>
        <tr>
        <td width="120" height="25" align="left">用户登录方式：</td>
        <td align="left"><asp:RadioButtonList ID="rblIsRemote" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rblIsRemote_SelectedIndexChanged"></asp:RadioButtonList></td>
      </tr>
      <asp:PlaceHolder ID="phRemote" runat="server">
        <tr>
          <td width="120" height="25" align="left">SSO应用ID：</td>
          <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="5" Text="4" MaxLength="50" id="tbID" runat="server"/>
            <asp:RequiredFieldValidator
									ControlToValidate="tbID"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/>
            <asp:RegularExpressionValidator
									runat="server"
									ControlToValidate="tbID"
									ValidationExpression="^[1-9]$"
									ErrorMessage="*"
									Display="Dynamic" />
                                    <span class="grey">当前系统在SSO的应用ID，一般情况请勿改动</span>
                                    </td>
        </tr>
        <tr>
          <td width="120" height="25" align="left">SSO通信密钥：</td>
          <td align="left"><asp:TextBox id="tbAuthKey" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" runat="server"/>
          <asp:RequiredFieldValidator
									ControlToValidate="tbAuthKey"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/>
          <span class="grey">通信密钥用于在系统和SSO之间传输信息的加密，可包含任何字母及数字，请在系统与SSO中设置完全一样的密钥</span>
          </td>
        </tr>
        <tr>
          <td width="120" height="25" align="left">SSO访问地址：</td>
          <td align="left"><asp:TextBox id="tbUrl" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" runat="server"/>
          <asp:RequiredFieldValidator
									ControlToValidate="tbUrl"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/>
          <span class="grey">SSO的访问地址必须保持能访问状态，否则将导致系统功能异常，如果访问地址发生改变，请在此修改</span>
          </td>
        </tr>
        <tr>
          <td width="120" height="25" align="left">SSO IP 地址：</td>
          <td align="left"><asp:TextBox id="tbIPAddress" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" runat="server"/>
            <span class="grey">如果您的服务器无法通过域名访问 SSO，可以输入对应的IP 地址（可选）</span></td>
        </tr>
        
        <tr>
          <td width="120" height="25" align="left">数据库类型：</td>
          <td align="left">
          	<asp:DropDownList ID="ddlDatabaseType" OnSelectedIndexChanged="ddlDatabaseType_SelectedIndexChanged" AutoPostBack="true" runat="server"></asp:DropDownList>
          </td>
        </tr>
        <tr>
         <td width="120" align="left">数据库连接设置：</td>
         <td align="left">
         <asp:PlaceHolder ID="phSqlServer" runat="server">
              <DIV style="PADDING-BOTTOM: 10px; LINE-HEIGHT: 33px; PADDING-LEFT: 8px; PADDING-RIGHT: 8px; HEIGHT: 23px; COLOR: #666; OVERFLOW: hidden; PADDING-TOP: 2px">在此设置 SQL SERVER 数据库的连接字符串。 </DIV>
              <p>
                <label>数据库主机：</label>
                <asp:TextBox TabIndex="1" style="width:285px" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="tbSqlServer" Text="(local)" runat="server"/>
                <span class="error"><asp:RequiredFieldValidator
									ControlToValidate="tbSqlServer"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/></span> <span class="gray">IP地址或者服务器名，本机为"(local)"</span> </p>
              <p>
                <label>数据库名称：</label>
                <asp:TextBox TabIndex="1" style="width:285px" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="tbSqlDatabaseName" runat="server"/>
                <span class="error"><asp:RequiredFieldValidator
									ControlToValidate="tbSqlDatabaseName"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/></span> <span class="gray">数据库名称</span> </p>
              <p>
                <label>数据库用户：</label>
                <asp:TextBox tabindex="1" style="width:285px" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="tbSqlUserName" runat="server"/>
                <span class="error"><asp:RequiredFieldValidator
									ControlToValidate="tbSqlUserName"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/></span> <span class="gray">连接数据库的用户名</span> </p>
              <p>
                <label>数据库密码：</label>
                <asp:TextBox tabindex="1" style="width:285px" TextMode="Password" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="tbSqlPassword" runat="server"/><input type="hidden" runat="server" id="hihSqlHiddenPassword" />
                <span class="error"><asp:RequiredFieldValidator
									ControlToValidate="tbSqlPassword"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/></span> <span class="gray">连接数据库的密码</span> </p>

              </asp:PlaceHolder>
              
              <asp:PlaceHolder ID="phOracle" runat="server">
              <DIV style="PADDING-BOTTOM: 10px; LINE-HEIGHT: 33px; PADDING-LEFT: 8px; PADDING-RIGHT: 8px; HEIGHT: 23px; COLOR: #666; OVERFLOW: hidden; PADDING-TOP: 2px">在此设置 ORACLE 数据库的连接字符串。 </DIV>
              <p>
                <label>主机名称/IP地址：</label>
                <asp:TextBox TabIndex="1" style="width:285px" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="tbOraHost" runat="server"/>
                <span class="error"><asp:RequiredFieldValidator
									ControlToValidate="tbOraHost"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/></span> <span class="gray">ORACLE 数据库主机名/IP地址</span> </p>
              <p>
                <label>端口号：</label>
                <asp:TextBox TabIndex="1" style="width:85px" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="tbOraPort" Text="1521" runat="server"/>
                <span class="error"><asp:RequiredFieldValidator
									ControlToValidate="tbOraPort"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/></span> <span class="gray">ORACLE 数据库端口号</span> </p>
              <p>
                <label>数据库名称：</label>
                <asp:TextBox TabIndex="1" style="width:285px" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="tbOraServiceName" runat="server"/>
                <span class="error"><asp:RequiredFieldValidator
									ControlToValidate="tbOraServiceName"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/></span> <span class="gray">ORACLE 数据库名称</span> </p>
              <p>
                <label>数据库用户：</label>
                <asp:TextBox tabindex="1" style="width:285px" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="tbOraUserName" runat="server"/>
                <span class="error"><asp:RequiredFieldValidator
									ControlToValidate="tbOraUserName"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/></span> <span class="gray">连接数据库的用户名</span> </p>
              <p>
                <label>数据库密码：</label>
                <asp:TextBox tabindex="1" style="width:285px" TextMode="Password" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="tbOraPassword" runat="server"/><input type="hidden" runat="server" id="hihOraHiddenPassword" />
                <span class="error"><asp:RequiredFieldValidator
									ControlToValidate="tbOraPassword"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/></span> <span class="gray">连接数据库的密码</span> </p>
              </asp:PlaceHolder>
         </td>
        </tr>
        
      </asp:PlaceHolder>
      
      <tr>
        <td colspan="2" align="center">
        <asp:Button class="button" id="Submit" text="保 存" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
