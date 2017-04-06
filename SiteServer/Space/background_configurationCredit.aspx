<%@ Page Language="C#" Inherits="SiteServer.Space.BackgroundPages.LiveServerConfigurationCredit" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<head runat="server">
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <div class="tab">
    <asp:Literal ID="ltlTabs" runat="server"></asp:Literal>
    <div class="clearer"></div>
  </div>
  <DIV class="column">
    <table width="98%" align="center" cellpadding="5" cellspacing="5">
      <asp:PlaceHolder ID="phGlobal" runat="server">
        <tr>
          <td width="180" align="left"><bairong:help HelpText="第一次登录空间" Text="第一次登录空间：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox ID="CreditInitial" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="120" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="CreditInitial" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
            <asp:RegularExpressionValidator
            ControlToValidate="CreditInitial"
            ValidationExpression="\-?\d+"
            Display="Dynamic"
            ErrorMessage="此项必须为数字"
                runat="server"/>
            （用户第一次登录空间将获取的积分）</td>
        </tr>
        <tr>
          <td width="180" align="left"><bairong:help HelpText="评论" Text="评论：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox ID="CreditComment" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="120" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="CreditComment" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
            <asp:RegularExpressionValidator
            ControlToValidate="CreditComment"
            ValidationExpression="\-?\d+"
            Display="Dynamic"
            ErrorMessage="此项必须为数字"
                runat="server"/>
            （针对博客文章、相册等进行评论获取的积分）</td>
        </tr>
      </asp:PlaceHolder>
      <asp:PlaceHolder ID="phBlog" runat="server">
        <tr>
          <td width="180" align="left"><bairong:help HelpText="发布博客文章" Text="发布博客文章：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox ID="CreditBlogAdd" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="120" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="CreditBlogAdd" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
            <asp:RegularExpressionValidator
            ControlToValidate="CreditBlogAdd"
            ValidationExpression="\-?\d+"
            Display="Dynamic"
            ErrorMessage="此项必须为数字"
                runat="server"/>
            （发布博客文章将获取的积分） </td>
        </tr>
        <tr>
          <td width="180" align="left"><bairong:help HelpText="删除博客文章" Text="删除博客文章：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox ID="CreditBlogDelete" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="120" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="CreditBlogDelete" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
            <asp:RegularExpressionValidator
            ControlToValidate="CreditBlogDelete"
            ValidationExpression="\-?\d+"
            Display="Dynamic"
            ErrorMessage="此项必须为数字"
                runat="server"/>
            （删除博客文章将扣除的积分） </td>
        </tr>
        <tr>
          <td width="180" align="left"><bairong:help HelpText="博客文章被管理员推荐" Text="博客文章被管理员推荐：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox ID="CreditBlogRecommend" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="120" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="CreditBlogRecommend" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
            <asp:RegularExpressionValidator
            ControlToValidate="CreditBlogRecommend"
            ValidationExpression="\-?\d+"
            Display="Dynamic"
            ErrorMessage="此项必须为数字"
                runat="server"/>
            （博客文章被管理员推荐将获取的积分）</td>
        </tr>
      </asp:PlaceHolder>
      <asp:PlaceHolder ID="phPhoto" runat="server">
        <tr>
          <td width="180" align="left"><bairong:help HelpText="上传相册图片" Text="上传相册图片：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox ID="CreditPhotoUpload" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="120" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="CreditPhotoUpload" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
            <asp:RegularExpressionValidator
            ControlToValidate="CreditPhotoUpload"
            ValidationExpression="\-?\d+"
            Display="Dynamic"
            ErrorMessage="此项必须为数字"
                runat="server"/>
            （上传相册图片将获取的积分） </td>
        </tr>
        <tr>
          <td width="180" align="left"><bairong:help HelpText="删除相册图片" Text="删除相册图片：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox ID="CreditPhotoDelete" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="120" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="CreditPhotoDelete" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
            <asp:RegularExpressionValidator
            ControlToValidate="CreditPhotoDelete"
            ValidationExpression="\-?\d+"
            Display="Dynamic"
            ErrorMessage="此项必须为数字"
                runat="server"/>
            （删除相册图片将扣除的积分） </td>
        </tr>
        <tr>
          <td width="180" align="left"><bairong:help HelpText="相册图片被管理员推荐" Text="相册图片被管理员推荐：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox ID="CreditPhotoRecommend" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="120" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="CreditPhotoRecommend" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
            <asp:RegularExpressionValidator
            ControlToValidate="CreditPhotoRecommend"
            ValidationExpression="\-?\d+"
            Display="Dynamic"
            ErrorMessage="此项必须为数字"
                runat="server"/>
            （相册图片被管理员推荐将获取的积分）</td>
        </tr>
      </asp:PlaceHolder>
      <tr>
        <td colspan="2" align="center"><asp:Button class="button" id="Submit" text="保 存" onclick="Submit_OnClick" runat="server" /></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</html>
