<%@ Page Language="C#" Inherits="UserCenter.System.Pages.Forget" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<asp:Literal ID="ltlTitle" runat="server"></asp:Literal>

    <link href="css/admin/step.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="wrap">
  <div id="hd"><img src="img/logo.gif" /></div>
  <div id="main">
    <div class="box">
      <h2>取回密码</h2>
      <ul class="list_step">
      <asp:PlaceHolder ID="phTitle1" runat="server">
        <li class="current"><img src="img/step/step1a.gif" />填入用户名</li>
        <li><img src="img/step/step2b.gif" />检查邮箱</li>
      </asp:PlaceHolder>
      <asp:PlaceHolder ID="phTitle2" Visible="false" runat="server">
        <li><img src="img/step/step1b.gif" />填入用户名</li>
        <li class="current"><img src="img/step/step2a.gif" />检查邮箱</li>
      </asp:PlaceHolder>
      </ul>
    </div>
    <div class="box noline">
      <form id="Form1" runat="server">
        <asp:PlaceHolder ID="phContent1" runat="server">
        <div class="form_detail">
          <div class="error"><asp:Literal ID="ltlErrorMessage" runat="server"></asp:Literal></div>
          <p>
            <label>您的用户名：</label>
            <asp:TextBox tabindex="1" style="width:285px" class="ipt_tx" id="UserName" runat="server"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
				ControlToValidate="UserName"
				ErrorMessage="*"
				Display="Dynamic"
				runat="server"/>
          </p>
          <asp:PlaceHolder ID="phValidateCode" runat="server">
          <p>
            <label>请输入验证码：</label>
            <asp:TextBox tabindex="2" style="width:65px; margin-right:5px;" autocomplete="off" maxlength="4" class="ipt_tx" id="ValidateCode" runat="server"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
				ControlToValidate="ValidateCode"
				ErrorMessage="*"
				Display="Dynamic"
				runat="server"/>
            <span class="info">按下图字符填写，不区分大小写</span>
            <asp:Literal ID="ltlValidateCodeImage" runat="server"></asp:Literal>
            </p>
          </asp:PlaceHolder>
          <p>
            <asp:button id="btnNext" OnClick="btnNext_Click" class="btn byellow" tabindex="3" Text="下一步" runat="server"></asp:button>
            <button id="btn_leave" onclick="location.href = '<%=GetReturnUrl()%>';return false;" class="btn bnormal" tabindex="4" >离开此向导</button>
          </p>
        </div>
        </asp:PlaceHolder>
        <asp:PlaceHolder ID="phContent2" Visible="false" runat="server">
        <div class="form_detail">
          <p class="success" style="background-repeat:no-repeat; padding:15px; padding-left:50px;"><asp:Literal ID="ltlSuccessMessage" runat="server"></asp:Literal></p>
          <p>
            <button id="btn_leave" onclick="location.href = '<%=GetReturnUrl()%>';return false;" class="btn bnormal" tabindex="4" >返 回</button>
          </p>
        </div>
        </asp:PlaceHolder>
      </form>
    </div>
  </div>
</div>
<div id="ft">
  <p><asp:Literal ID="ltlPoweredBy" runat="server"></asp:Literal></p>
</div>
</div>
</body>
</html>
