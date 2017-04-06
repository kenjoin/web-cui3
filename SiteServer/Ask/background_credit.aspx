<%@ Page Language="C#" Inherits="SiteServer.Ask.BackgroundPages.BackgroundCredit" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">
      问答积分设置</div>
    <table width="98%" align="center" cellpadding="5" cellspacing="5">
      <tr>
        <td width="180" align="left">
          <bairong:help HelpText="第一次登录问答系统" Text="第一次登录问答系统：" runat="server" ></bairong:help>
        </td>
        <td align="left">
          <asp:TextBox ID="CreditInitial" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="120" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ControlToValidate="CreditInitial" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
            ControlToValidate="CreditInitial"
            ValidationExpression="\-?\d+"
            Display="Dynamic"
            ErrorMessage="此项必须为数字"
                runat="server"/>
        （用户第一次登录问答系统将获取的积分）</td>
      </tr>
      <tr>
        <td width="180" align="left">
          <bairong:help HelpText="提问" Text="提问：" runat="server" ></bairong:help>
        </td>
        <td align="left">
          <asp:TextBox ID="CreditQuestion" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="120" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ControlToValidate="CreditQuestion" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
            ControlToValidate="CreditQuestion"
            ValidationExpression="\-?\d+"
            Display="Dynamic"
            ErrorMessage="此项必须为数字"
                runat="server"/>
        （提出问题获取的积分，如果用户选择悬赏，积分将减去悬赏的分数）</td>
      </tr>
      <tr>
        <td width="180" align="left">
          <bairong:help HelpText="匿名提问" Text="匿名提问：" runat="server" ></bairong:help>
        </td>
        <td align="left">
          <asp:TextBox ID="CreditQuestionAnonymous" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="120" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ControlToValidate="CreditQuestionAnonymous" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
            ControlToValidate="CreditQuestionAnonymous"
            ValidationExpression="\-?\d+"
            Display="Dynamic"
            ErrorMessage="此项必须为数字"
                runat="server"/>
        （用户提问隐藏自己身份）</td>
      </tr>
      <tr>
        <td width="180" align="left">
          <bairong:help HelpText="提问被删除" Text="提问被删除：" runat="server" ></bairong:help>
        </td>
        <td align="left">
          <asp:TextBox ID="CreditQuestionBeDeleted" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="120" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ControlToValidate="CreditQuestionBeDeleted" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
            ControlToValidate="CreditQuestionBeDeleted"
            ValidationExpression="\-?\d+"
            Display="Dynamic"
            ErrorMessage="此项必须为数字"
                runat="server"/>
        （提问违规被删除扣除的积分）</td>
      </tr>
      <tr>
        <td width="180" align="left">
          <bairong:help HelpText="回答问题" Text="回答问题：" runat="server" ></bairong:help>
        </td>
        <td align="left">
          <asp:TextBox ID="CreditAnswer" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="120" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ControlToValidate="CreditAnswer" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
            ControlToValidate="CreditAnswer"
            ValidationExpression="\-?\d+"
            Display="Dynamic"
            ErrorMessage="此项必须为数字"
                runat="server"/>
        （对现有问题进行回答获取的积分）</td>
      </tr>
      <tr>
        <td width="180" align="left">
          <bairong:help HelpText="回答被删除" Text="回答被删除：" runat="server" ></bairong:help>
        </td>
        <td align="left">
          <asp:TextBox ID="CreditAnswerBeDeleted" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="120" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ControlToValidate="CreditAnswerBeDeleted" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
            ControlToValidate="CreditAnswerBeDeleted"
            ValidationExpression="\-?\d+"
            Display="Dynamic"
            ErrorMessage="此项必须为数字"
                runat="server"/>
        （回答提问违规被删除扣除的积分）</td>
      </tr>
      <tr>
        <td width="180" align="left">
          <bairong:help HelpText="回答被采纳" Text="回答被采纳：" runat="server" ></bairong:help>
        </td>
        <td align="left">
          <asp:TextBox ID="CreditAnswerAccept" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="120" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ControlToValidate="CreditAnswerAccept" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
            ControlToValidate="CreditAnswerAccept"
            ValidationExpression="\-?\d+"
            Display="Dynamic"
            ErrorMessage="此项必须为数字"
                runat="server"/>
        （回答被提问者采纳为最佳答案获取的积分）</td>
      </tr>
      <tr>
        <td width="180" align="left">
          <bairong:help HelpText="15天不处理" Text="15天不处理：" runat="server" ></bairong:help>
        </td>
        <td align="left">
          <asp:TextBox ID="CreditNotDeal" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="120" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ControlToValidate="CreditNotDeal" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
            ControlToValidate="CreditNotDeal"
            ValidationExpression="\-?\d+"
            Display="Dynamic"
            ErrorMessage="此项必须为数字"
                runat="server"/>
        （所提问的问题在期限内还没有选出最佳答案或者没有主动结束提问,视为不处理）</td>
      </tr>
      <tr>
        <td width="180" align="left">
          <bairong:help HelpText="评论" Text="评论：" runat="server" ></bairong:help>
        </td>
        <td align="left">
          <asp:TextBox ID="CreditComment" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="120" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ControlToValidate="CreditComment" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
            ControlToValidate="CreditComment"
            ValidationExpression="\-?\d+"
            Display="Dynamic"
            ErrorMessage="此项必须为数字"
                runat="server"/>
        （针对最佳答案进行评论获取的积分）</td>
      </tr>
      <tr>
        <td width="180" align="left">
          <bairong:help HelpText="评论被删除" Text="评论被删除：" runat="server" ></bairong:help>
        </td>
        <td align="left">
          <asp:TextBox ID="CreditCommentBeDeleted" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="120" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ControlToValidate="CreditCommentBeDeleted" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
            ControlToValidate="CreditCommentBeDeleted"
            ValidationExpression="\-?\d+"
            Display="Dynamic"
            ErrorMessage="此项必须为数字"
                runat="server"/>
        （评论违规被删除扣除的积分）</td>
      </tr>
      <tr>
        <td width="180" align="left">
          <bairong:help ID="Help1" HelpText="投票" Text="投票：" runat="server" ></bairong:help>
        </td>
        <td align="left">
          <asp:TextBox ID="CreditVote" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="120" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ControlToValidate="CreditVote" ErrorMessage="此项不能为空" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
            ControlToValidate="CreditVote"
            ValidationExpression="\-?\d+"
            Display="Dynamic"
            ErrorMessage="此项必须为数字"
                runat="server"/>
        （投票所得的积分）</td>
      </tr>
      <tr>
        <td colspan="2" align="center">
          <asp:Button class="button" id="Submit" text="保 存" onclick="Submit_OnClick" runat="server" />
        </td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</html>
