<%@ Page Language="C#" Inherits="UserCenter.System.Pages.Register" enableEventValidation="false"  validateRequest="true" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>注册中心</title>
<asp:Literal ID="ltlTitle" runat="server"></asp:Literal>
  
    <link href="css/admin/step.css" rel="stylesheet" type="text/css" />
<bairong:Code  type="Prototype" runat="server" />
<script src="js/signup_check_data.js" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8" src="../sitefiles/bairong/scripts/independent/validate.js"></script>
</head>
<body>
<div class="wrap">
  <div id="hd"><img src="img/logo.gif" /></div>
  <div id="main">
    <div class="box">
      <h2>用户注册</h2>

      <ul class="list_step">
      
      <asp:Literal ID="ltlStepTitle" runat="server"></asp:Literal>
      
      </ul>
    </div>
    <div class="box noline">
      <form id="myForm" enctype="multipart/form-data" runat="server">
        <div class="form_detail">
            
            <asp:PlaceHolder ID="phContent" runat="server">
            	<div class="error">
                	<asp:Literal ID="ltlErrorMessage" runat="server"></asp:Literal>
                </div>
                
                <asp:PlaceHolder ID="phStep1" runat="server">
                  <p>
                    <label>用户名：</label>
                    <asp:TextBox tabindex="1" style="width:285px" class="ipt_tx" id="UserName" onblur="checkUserName();" runat="server"/>
                    <span id="username_msg" class="error" style="display:none"></span>
                    <span id="username_msg" class="succ" style="display:none"></span>
                    <span class="info"><a href="javascript:void 0;" style="text-decoration:none" onclick="checkUserNameValid();" tabindex="-1">检测用户名是否可用</a></span>
                    <span id="usernamevalid_msg_succ" class="succ" style="display:none"><img src="img/check_right.gif" width="13" height="13" /> 此用户未被使用，可以注册。</span>
                    <span id="usernamevalid_msg_error" class="error" style="display:none"><img src="img/check_error.gif" width="13" height="13" /> 对不起，此用户名不可用，请选择其他名字后再试。</span>
                  </p>
                  <p>
                    <label>昵称：</label>
                    <asp:TextBox tabindex="1" style="width:285px" class="ipt_tx" id="DisplayName" onblur="checkDisplayName();" runat="server"/>
                    <span id="displayname_msg" class="error" style="display:none"></span>
                    <span class="info">您的个性化称呼，注册后仍可修改</span>
                  </p>
                  <p>
                    <label>密码：</label>
                    <asp:TextBox tabindex="1" style="width:285px" TextMode="Password" class="ipt_tx" id="Password" onblur="checkPassword();" runat="server"/>
                    <span id="password_msg" class="error" style="display:none"></span>
                    <span class="rank_info">密码强度：
                                        <input type="text" id="passwordLevel" class="rank r0" disabled="disabled" />
                    </span>
                  </p>
                  <p>
                    <label>确认密码：</label>
                    <asp:TextBox tabindex="1" style="width:285px" TextMode="Password" class="ipt_tx" id="ComfirmPassword" onblur="checkConfirmPassword();" runat="server"/>
                    <span id="confirmPassword_msg" class="error" style="display:none"></span>
                    <span class="info">6-16个字符，支持大小写字母、数字和符号</span>
                  </p>
                  <p>
                    <label>Email：</label>
                    <asp:TextBox tabindex="1" style="width:285px" class="ipt_tx" id="Email" onblur="checkEmail();" runat="server"/>
                    <span id="email_msg" class="error" style="display:none"></span>
                    <span class="info">您的电子邮箱，忘记密码时将发送密码到此邮箱</span>
                  </p>
                  <asp:PlaceHolder ID="phValidateCode" runat="server">
                  <p>
                    <label>请输入验证码：</label>
                    <asp:TextBox tabindex="2" style="width:65px; margin-right:5px;" autocomplete="off" maxlength="4" class="ipt_tx" id="ValidateCode" onblur="checkVerify();" runat="server"/>
                    <span id="verifycode_msg" class="error" style="display:none"></span>
                    <span class="info">按下图字符填写，不区分大小写</span>
                    <asp:Literal ID="ltlValidateCodeImage" runat="server"></asp:Literal>
                    </p>
                  </asp:PlaceHolder>
                </asp:PlaceHolder>
                
                <asp:PlaceHolder ID="phStep2" runat="server">
                  <asp:PlaceHolder ID="phTypeID" runat="server">
                  <p>
                    <label>用户类型：</label>
                    <asp:DropDownList CssClass="content" ID="TypeIDList" RepeatDirection="Horizontal" OnSelectedIndexChanged="TypeIDList_SelectedIndexChanged" AutoPostBack="true" runat="server"></asp:DropDownList>
                  </p>
                  </asp:PlaceHolder>
                  <user:UserAuxiliaryControl ID="UserControl" runat="server" 
                  FormatDefault="<p><label>{0}：</label>{1}</p>"
                  AdditionalAttributes="class='ipt_tx' style='width:285px'"
                  />
                </asp:PlaceHolder>
                
                <p>
                    <asp:button id="btnNext" OnClick="btnNext_Click" class="btn byellow" tabindex="3" Text="下一步" runat="server"></asp:button>
                    <asp:Button ID="btnLeave" OnClick="btnLeave_Click" class="btn bnormal" tabindex="4" Text="离开此向导" runat="server"></asp:Button>
                </p>
            
            </asp:PlaceHolder>
            
            <asp:PlaceHolder ID="phMessage" Visible="false" runat="server">
              <p class="success" style="background-repeat:no-repeat; padding:15px; padding-left:50px;"><asp:Literal ID="ltlSuccessMessage" runat="server"></asp:Literal></p>
              <p>
                <asp:Button ID="Button1" OnClick="btnLeave_Click" class="btn bnormal" tabindex="4" Text="返 回" runat="server"></asp:Button>
              </p>
            </asp:PlaceHolder>
        </div>
        
      </form>
      <asp:Literal ID="ltlScripts" runat="server"></asp:Literal>
    </div>
  </div>
</div>
<div id="ft">
  <p><asp:Literal ID="ltlPoweredBy" runat="server"></asp:Literal></p>
</div>
</div>
</body>
</html>
