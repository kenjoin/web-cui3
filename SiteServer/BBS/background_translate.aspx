<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundTranslate" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<title>论坛转换向导</title>
</head>
<body>
<form runat="server">
  <bairong:Message runat="server"></bairong:Message>
  
  <DIV class="column">
    <div class="columntitle">论坛转换向导 </div>
    <table cellpadding="3" width="95%" height="380" align="center">
      <tr>
        <td colspan="2" height="320" align="left" valign="top"><div style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 30px">
            <asp:PlaceHolder id="phSelect" runat="server">
              <DIV class="mainTitle"><strong>选择论坛转换类型</strong></DIV>
              <br>
              <DIV> 欢迎使用论坛转换向导，您可以选择指定的论坛进行转换。 </DIV>
              <DIV style="PADDING-LEFT: 20px; PADDING-TOP: 20px">原论坛类型：
                <asp:DropDownList ID="ddlForumType" runat="server"></asp:DropDownList>
                <br>
              </DIV>
            </asp:PlaceHolder>
            <asp:PlaceHolder id="phConfig" runat="server" Visible="false">
              <DIV class="mainTitle"><strong>设置论坛参数</strong></DIV>
              <br>
              <DIV>在此设置原论坛的数据库参数。</DIV>
              <DIV style="PADDING-LEFT: 10px; PADDING-TOP: 10px"> <br>
                <table width="95%" align="center" cellpadding="3" cellspacing="3">
                  <tr>
                    <td width="160" align="left">数据库地址：</td>
                    <td align="left">
                    	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="50" id="tbServer" Text="(local)" runat="server"/>
                      <asp:RequiredFieldValidator
			ControlToValidate="tbServer"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>
                      <asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="tbServer"
			ValidationExpression="[^']+"
			ErrorMessage="*"
			Display="Dynamic" />
                    </td>
                  </tr>
                  <tr>
                    <td width="160" align="left">数据库用户名：</td>
                    <td align="left">
                    	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="50" id="tbUserName" Text="sa" runat="server"/>
                      <asp:RequiredFieldValidator
			ControlToValidate="tbUserName"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>
                      <asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="tbUserName"
			ValidationExpression="[^']+"
			ErrorMessage="*"
			Display="Dynamic" />
                    </td>
                  </tr>
                  <tr>
                    <td width="160" align="left">数据库密码：</td>
                    <td align="left">
                    	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="50" id="tbPassword" Text="" runat="server"/>
                      <asp:RequiredFieldValidator
			ControlToValidate="tbPassword"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>
                      <asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="tbPassword"
			ValidationExpression="[^']+"
			ErrorMessage="*"
			Display="Dynamic" />
                    </td>
                  </tr>
                  <tr>
                    <td width="160" align="left">数据库名：</td>
                    <td align="left">
                    	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="50" id="tbDatabase" Text="" runat="server"/>
                      <asp:RequiredFieldValidator
			ControlToValidate="tbDatabase"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>
                      <asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="tbDatabase"
			ValidationExpression="[^']+"
			ErrorMessage="*"
			Display="Dynamic" />
                    </td>
                  </tr>
                  <tr>
                    <td width="160" align="left">表前缀：</td>
                    <td align="left">
                    	<asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="50" id="tbPrefix" Text="dnt_" runat="server"/>
                      <asp:RequiredFieldValidator
			ControlToValidate="tbPrefix"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>
                      <asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="tbPrefix"
			ValidationExpression="[^']+"
			ErrorMessage="*"
			Display="Dynamic" />
                    </td>
                  </tr>
                  <tr>
                    <td align="left">是否导入用户数据：</td>
                    <td align="left"><asp:CheckBox id="cbIsImportUsers" runat="server" Checked="true" Text="导入"></asp:CheckBox></td>
                  </tr>
                  <tr>
                    <td align="left">是否导入用户头像：</td>
                    <td align="left"><asp:CheckBox id="cbIsImportAvatars" runat="server" Checked="true" Text="导入"></asp:CheckBox></td>
                  </tr>
                  <tr>
                    <td align="left">是否导入论坛分类：</td>
                    <td align="left"><asp:CheckBox id="cbIsImportForums" runat="server" Checked="true" Text="导入"></asp:CheckBox></td>
                  </tr>
                  <tr>
                    <td align="left">是否导入论坛帖子及回复：</td>
                    <td align="left"><asp:CheckBox id="cbIsImportPosts" runat="server" Checked="true" Text="导入"></asp:CheckBox></td>
                  </tr>
                  <tr>
                    <td align="left">是否导入论坛帖子附件：</td>
                    <td align="left"><asp:CheckBox id="cbIsImportAttachments" runat="server" Checked="true" Text="导入"></asp:CheckBox></td>
                  </tr>
                </table>
              </DIV>
            </asp:PlaceHolder>
            <asp:PlaceHolder id="phError" runat="server" Visible="false"> <span class="mainTitle"></span> <STRONG>发生错误</STRONG> <br>
              <br>
              <div> 执行向导过程中出错 </div>
              <br>
              <DIV><B><U>错误信息</U></B>:
                <asp:Label ID="ErrorLabel" runat="server"></asp:Label>
              </DIV>
            </asp:PlaceHolder>
            <asp:PlaceHolder id="phSuccess" runat="server" Visible="false"> <span class="mainTitle"></span> <STRONG>执行成功</STRONG> <br>
              <br>
              <div> 向导执行成功 </div>
            </asp:PlaceHolder>
          </div></td>
      </tr>
      <tr style="BACKGROUND-POSITION:center 50%; BACKGROUND-IMAGE:url(../pic/line.gif); BACKGROUND-REPEAT:repeat-x">
        <td width="30%">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2"><table cellpadding="0" cellspacing="0" width="100%" border="0" align="center" >
            <tr >
              <td align="right"><span style="padding-right:30 "><span style="padding-right:30 "></span> <span style="padding-right:30 "></span>
                <asp:Button class="button" ID="Previous" OnClick="PreviousPanel" CausesValidation="false" runat="server" Text="< 上一步"></asp:Button>
                &nbsp;
                <asp:Button class="button" id="Next" onclick="NextPanel" runat="server" text="下一步 >"></asp:button>
                <span style="padding-right:30 "></span></span></td>
            </tr>
          </table></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
