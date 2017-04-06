<%@ Page Language="C#" Inherits="SiteServer.Ask.BackgroundPages.Modal.UserGroupAdd" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<title>
<asp:Literal ID="MyTitle" runat="server"></asp:Literal>
</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<user:custom type="style" runat="server"></user:custom>
</HEAD>
<body>
<form id="myForm" runat="server">
  <asp:PlaceHolder ID="phCreditsAddTips" runat="server">
    <div class="tips"> 增加用户组时最低积分和最高积分必须在已有的某个用户组积分范围之内.<br>
      例如: 注册会员的积分范围是50 - 200 ,那么要添加的用户组的积分上下限必须在(200≥ 积分范围 >50) 或 (200> 积分范围 ≥50)之间. 如果积分范围跨越多个用户组积分范围区间的用户组时, 系统将视为无效. </div>
  </asp:PlaceHolder>
  <asp:PlaceHolder ID="phCreditsEditTips" runat="server">
    <div class="tips"> 编辑用户组时最低积分和最高积分必须在当前用户组积分范围之内. <br>
      例如: 注册会员的积分范围是50 - 200 ,那么编辑该用户组的积分必须在50 - 200 之间. 如果积分范围跨越多个用户组积分上下限区间时, 系统将视为无效. <br>
      如果想要扩展积分的范围时可通过增加最低积分或缩小最高积分来进行调整. 
      例如: 注册会员的积分范围分别是50 - 200 , 如果想把最高积分扩展为300 ,只需调整相邻的"中级会员"组(范围为200和500) 的最低积分修改为300即可. 调整最低积分的方法与调整最高积分的方法类似. </div>
  </asp:PlaceHolder>
  <bairong:Message runat="server"></bairong:Message>
  <table width="95%" height="20" align="center" cellpadding="4" cellspacing="4">
    <tr>
      <td width="160" align="left"><bairong:help HelpText="会员组的名称" Text="会员组名称：" runat="server" ></bairong:help></td>
      <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="GroupName" MaxLength="50" Size="30" runat="server"/>
        <asp:RequiredFieldValidator
			ControlToValidate="GroupName"
			ErrorMessage=" *"
			Display="Dynamic"
			runat="server"
			/></td>
    </tr>
    <asp:PlaceHolder ID="phCredits" runat="server">
      <tr>
        <td width="160" align="left"><bairong:help HelpText="所属该用户组用户的最低积分数" Text="最低积分：" runat="server" ></bairong:help></td>
        <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="CreditsFrom" Columns="10" runat="server"/>
          <asp:RequiredFieldValidator
			ControlToValidate="CreditsFrom"
			ErrorMessage=" *"
			Display="Dynamic"
			runat="server"
			/>
          <asp:RegularExpressionValidator
            ControlToValidate="CreditsFrom"
            ValidationExpression="[0-9]+"
            Display="Dynamic"
            ErrorMessage=" *"
            runat="server"/></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="所属该用户组用户的最高积分数" Text="最高积分：" runat="server" ></bairong:help></td>
        <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="CreditsTo" MaxLength="50" Columns="10" runat="server"/>
          <asp:RequiredFieldValidator
			ControlToValidate="CreditsTo"
			ErrorMessage=" *"
			Display="Dynamic"
			runat="server"
			/>
          <asp:RegularExpressionValidator
            ControlToValidate="CreditsTo"
            ValidationExpression="[0-9]+"
            Display="Dynamic"
            ErrorMessage=" *"
            runat="server"/></td>
      </tr>
    </asp:PlaceHolder>
    <tr>
      <td width="160" align="left"><bairong:help HelpText="星星数" Text="星星数：" runat="server" ></bairong:help></td>
      <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="Stars" MaxLength="50" Columns="10" runat="server"/>
        <asp:RequiredFieldValidator
			ControlToValidate="Stars"
			ErrorMessage=" *"
			Display="Dynamic"
			runat="server"
			/>
        <asp:RegularExpressionValidator
            ControlToValidate="Stars"
            ValidationExpression="[0-9]+"
            Display="Dynamic"
            ErrorMessage=" *"
            runat="server"/>
        (0 - 10) </td>
    </tr>
    <tr>
      <td width="160" align="left"><bairong:help HelpText="组名称颜色" Text="组名称颜色：" runat="server" ></bairong:help></td>
      <td><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="Color" MaxLength="50" Columns="15" runat="server"/>
        <a href="javascript:undefined;" onClick="javascript:var TempReturnValue=window.showModalDialog('../inc/color.htm','ResWin','dialogWidth:18.5em; dialogHeight:17.5em;');if (typeof(TempReturnValue)!='undefined') document.getElementById('<%=Color.ClientID%>').value=TempReturnValue;" style="text-decoration:underline">选择</a></td>
    </tr>
    <tr>
      <td colspan="2" height="30" align="center"><asp:Button id="Submit" class="button" OnClick="Submit_OnClick" Text="添 加" runat="server"/>
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="关 闭" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
