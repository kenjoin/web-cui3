<%@ Page Language="C#" Inherits="UserCenter.BackgroundPages.BackgroundUserConfigUpload" %>
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
    <div class="columntitle">上传文件配置</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="190" align="left"><bairong:help HelpText="配置用户单个月能够上传文件的最大大小" Text="单个月上传文件最大大小：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" id="UploadMonthMaxSize" runat="server" />
          &nbsp;
          <asp:DropDownList id="UploadMonthMaxSizeUnit" runat="server">
            <asp:ListItem Value="KB" Text="KB" Selected="true"></asp:ListItem>
            <asp:ListItem Value="MB" Text="MB"></asp:ListItem>
          </asp:DropDownList>
          <asp:RequiredFieldValidator ControlToValidate="UploadMonthMaxSize" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
                                    ControlToValidate="UploadMonthMaxSize"
                                    ValidationExpression="\d+"
                                    Display="Dynamic"
                                    ErrorMessage="单个月上传文件最大大小必须为整数"
                                    runat="server"/></td>
      </tr>
      <tr>
        <td width="190" align="left"><bairong:help HelpText="本设置只影响新上传的文件, 设置更改之前的文件仍存放在原来位置" Text="上传文件保存方式：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="UploadDateFormatString" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="190" align="left"><bairong:help HelpText="本设置只影响新上传的文件, 设置更改之前的文件名仍保持不变" Text="是否按时间重命名上传的文件：" runat="server" ></bairong:help></td>
        <td align="left"><asp:RadioButtonList ID="IsUploadChangeFileName" runat="server"></asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="190" align="left"><bairong:help HelpText="配置系统能够上传的所有图片类型" Text="上传图片类型：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" TextMode="MultiLine" Width="260px" Height="100" id="UploadImageTypeCollection" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="UploadImageTypeCollection"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
          （类型之间用“,”分割） </td>
      </tr>
      <tr>
        <td width="190" align="left"><bairong:help HelpText="配置系统能够上传的最大图片大小" Text="上传图片最大大小：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" id="UploadImageTypeMaxSize" runat="server" />
          <asp:DropDownList id="UploadImageTypeUnit" runat="server">
            <asp:ListItem Value="KB" Text="KB" Selected="true"></asp:ListItem>
            <asp:ListItem Value="MB" Text="MB"></asp:ListItem>
          </asp:DropDownList>
          <asp:RequiredFieldValidator ControlToValidate="UploadImageTypeMaxSize" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
                                    ControlToValidate="UploadImageTypeMaxSize"
                                    ValidationExpression="\d+"
                                    Display="Dynamic"
                                    ErrorMessage="上传图片最大大小必须为整数"
                                    runat="server"/></td>
      </tr>
      <tr>
        <td width="190" align="left"><bairong:help HelpText="配置系统能够上传的所有媒体类型" Text="上传媒体类型：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" TextMode="MultiLine" Width="260px" Height="100" id="UploadMediaTypeCollection" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="UploadMediaTypeCollection"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
          （类型之间用“,”分割） </td>
      </tr>
      <tr>
        <td width="190" align="left"><bairong:help HelpText="配置系统能够上传的最大媒体大小" Text="上传媒体最大大小：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" id="UploadMediaTypeMaxSize" runat="server" />
          <asp:DropDownList id="UploadMediaTypeUnit" runat="server">
            <asp:ListItem Value="KB" Text="KB" Selected="true"></asp:ListItem>
            <asp:ListItem Value="MB" Text="MB"></asp:ListItem>
          </asp:DropDownList>
          <asp:RequiredFieldValidator ControlToValidate="UploadMediaTypeMaxSize" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
                                    ControlToValidate="UploadMediaTypeMaxSize"
                                    ValidationExpression="\d+"
                                    Display="Dynamic"
                                    ErrorMessage="上传媒体最大大小必须为整数"
                                    runat="server"/></td>
      </tr>
      <tr>
        <td width="190" align="left"><bairong:help HelpText="配置系统能够上传的所有文件类型" Text="上传文件类型：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" TextMode="MultiLine" Width="260px" Height="100" id="UploadFileTypeCollection" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="UploadFileTypeCollection"
                                    ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
          （类型之间用“,”分割） </td>
      </tr>
      <tr>
        <td width="190" align="left"><bairong:help HelpText="配置系统能够上传的最大文件大小" Text="上传文件最大大小：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" id="UploadFileTypeMaxSize" runat="server" />
          <asp:DropDownList id="UploadFileTypeUnit" runat="server">
            <asp:ListItem Value="KB" Text="KB" Selected="true"></asp:ListItem>
            <asp:ListItem Value="MB" Text="MB"></asp:ListItem>
          </asp:DropDownList>
          <asp:RequiredFieldValidator ControlToValidate="UploadFileTypeMaxSize" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
                                    ControlToValidate="UploadFileTypeMaxSize"
                                    ValidationExpression="\d+"
                                    Display="Dynamic"
                                    ErrorMessage="上传文件最大大小必须为整数"
                                    runat="server"/></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="保 存" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
