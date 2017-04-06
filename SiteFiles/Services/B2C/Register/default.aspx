<%@ Page Language="C#" trace="false" enableViewState="false" Inherits="SiteServer.CMS.Pages.Register" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.Controls" Assembly="SiteServer.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>

<div class="wrap">
  <div id="main">
    <div class="box">
      <ul class="list_step">
        <asp:Literal ID="ltlStepTitle" runat="server"></asp:Literal>
      </ul>
    </div>
    <div class="box noline">
      <form runat="server">
        <div class="form_detail">
          <asp:PlaceHolder ID="phContent" runat="server">
            <div class="error">
              <asp:Literal ID="ltlErrorMessage" runat="server"></asp:Literal>
            </div>
            <asp:PlaceHolder ID="phStep1" runat="server">
              <p>
                <label>用户名：</label>
                <input name="UserName" type="text" id="UserName" tabindex="1" class="ipt_tx" onblur="checkUserName();" style="width:285px" />
                <span id="username_msg" class="error" style="display:none"></span> <span id="username_msg" class="succ" style="display:none"></span> <span class="info"><a href="javascript:void 0;" style="text-decoration:none" onclick="checkUserNameValid('<%=GetUserCenterUrl()%>');" tabindex="-1">检测用户名是否可用</a></span> <span id="usernamevalid_msg_succ" class="succ" style="display:none"><img src="<%=GetImageUrl()%>/check_right.gif" width="13" height="13" /> 此用户未被使用，可以注册。</span> <span id="usernamevalid_msg_error" class="error" style="display:none"><img src="<%=GetImageUrl()%>/check_error.gif" width="13" height="13" /> 对不起，此用户名已经被使用，请选择其他名字后再试。</span> </p>
              <p>
                <label>昵称：</label>
                <input name="DisplayName" type="text" id="DisplayName" tabindex="1" class="ipt_tx" onblur="checkDisplayName();" style="width:285px" />
                <span id="displayname_msg" class="error" style="display:none"></span> <span class="info">您的个性化称呼，注册后仍可修改</span> </p>
              <p>
                <label>密码：</label>
                <input name="Password" type="password" id="Password" tabindex="1" class="ipt_tx" onblur="checkPassword();" style="width:285px" />
                <span id="password_msg" class="error" style="display:none"></span> <span class="rank_info">密码强度：
                <input type="text" id="passwordLevel" class="rank r0" disabled="disabled" />
                </span> </p>
              <p>
                <label>确认密码：</label>
                <input name="ComfirmPassword" type="password" id="ComfirmPassword" tabindex="1" class="ipt_tx" onblur="checkConfirmPassword();" style="width:285px" />
                <span id="confirmPassword_msg" class="error" style="display:none"></span> <span class="info">6-16个字符，支持大小写字母、数字和符号</span> </p>
              <p>
                <label>Email：</label>
                <input name="Email" type="text" id="Email" tabindex="1" class="ipt_tx" onblur="checkEmail();" style="width:285px" />
                <span id="email_msg" class="error" style="display:none"></span> <span class="info">您的电子邮箱，忘记密码时将发送密码到此邮箱</span> </p>
              <asp:PlaceHolder ID="phValidateCode" runat="server">
                <p>
                  <label>请输入验证码：</label>
                  <input name="ValidateCode" type="text" maxlength="4" id="ValidateCode" tabindex="2" autocomplete="off" class="ipt_tx" onblur="checkVerify();" style="width:65px; margin-right:5px;" />
                  <span id="verifycode_msg" class="error" style="display:none"></span> <span class="info">按下图字符填写，不区分大小写</span>
                  <asp:Literal ID="ltlValidateCodeImage" runat="server"></asp:Literal>
                </p>
              </asp:PlaceHolder>
            </asp:PlaceHolder>
            <asp:PlaceHolder ID="phStep2" runat="server">
              <asp:PlaceHolder ID="phTypeID" runat="server">
                <p>
                  <label>用户类型：</label>
                  <asp:RadioButtonList CssClass="content" ID="TypeIDList" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList>
                </p>
              </asp:PlaceHolder>
              <user:UserAuxiliaryControl ID="UserControl" runat="server" 
                  FormatDefault="<p><label>{0}：</label>{1}</p>"
                  AdditionalAttributes="class='ipt_tx' style='width:285px'"
                  />
            </asp:PlaceHolder>
            <p>
              <button id="btnNext" <%=GetNextString()%> class="btn byellow" tabindex="3" >下一步</button>
              <button id="btn_leave" onclick="location.href = '<%=GetReturnUrl()%>';return false;" class="btn bnormal" tabindex="4" >离开此向导</button>
            </p>
          </asp:PlaceHolder>
          <asp:PlaceHolder ID="phMessage" Visible="false" runat="server">
            <p class="success" style="background-repeat:no-repeat; padding:15px; padding-left:50px;">
              <asp:Literal ID="ltlSuccessMessage" runat="server"></asp:Literal>
            </p>
            <p>
              <button id="btn_leave" onclick="location.href = '<%=GetReturnUrl()%>';return false;" class="btn bnormal" tabindex="4" >返 回</button>
            </p>
          </asp:PlaceHolder>
        </div>
      </form>
    </div>
  </div>
</div>
