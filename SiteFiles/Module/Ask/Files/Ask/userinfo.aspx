<%@ Page Language="C#" Inherits="SiteServer.Ask.Pages.UserInfoPage" %>

<%@ Register TagPrefix="ctrl" TagName="Theme" Src="include/theme.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Header" Src="include/header.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Footer" Src="include/footer.ascx" %>
<%@ Register TagPrefix="ctrl" TagName="Announcements" Src="include/announcements.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <ctrl:Theme runat="server"></ctrl:Theme>
</head>
<body>
    <ctrl:Header runat="server"></ctrl:Header>
    <div class="main">
        <div class="hack10px">
        </div>
        <div class="box950">
            <div class="c72bd">
                <a href="./" target="_self">知道首页</a> > <span class="black">用户信息</span></div>
            <div class="hack10px">
            </div>
            <div class="qnbox_l2">
                <strong class="c61bd">用户信息</strong>
                <p class="shadow">
                </p>
                <p class="hack5px">
                </p>
                <div class="list_busi top0px">
                    <div class="black f14px ln22" style="padding: 15px; padding-left:30px;">
                        <div class="left000">
                            <div class="pic">
                                <div class="mask">
                                  <asp:Literal ID="ltlUserHead" runat="server"></asp:Literal>
                                </div>
                            </div>
                            <div class="left000_1 msg" style="padding:20px;">
                               <%-- <span class="s1"><a href="javascript:headLogin()" target="_self" rel="nofollow">加为好友</a></span>--%>
                                <span class="s2"><a href="#" target="_self" rel="nofollow" onclick="sendmessage('<%=uname%>','/usercenter/index.aspx?pageUrl=platform/userMessage.aspx');return false;" >发送信息</a></span></div>
                        </div>
                        <div class="msg">
                            <p>
                                用户名称：<asp:Literal ID="ltlUserName" runat="server"></asp:Literal>
                            </p>
                            <p>
                                注册时间：<asp:Literal ID="ltlRegisterDate" runat="server"></asp:Literal></p>
                            <p>
                                最后活动时间：<asp:Literal ID="ltlLastLoginDate" runat="server"></asp:Literal></p>                            
                        </div>
                      
                    </div>
                </div>
                <div class="list_com f14px">
                    <div class="columnTitle900">
                        <a>全部回答</a>
                    </div>
                    <p class="hack10px">
                    </p>
                    <dl class="ln29" style="width: 900px; margin-left: 20px;">
                        <dt class="grey"><span class="sp1">&nbsp;标题</span><span class="sp2">回答数</span><span
                            class="sp3">状态</span><span class="sp4">被采纳回答</span><span class="sp8">提问时间</span></dt>
                        <asp:Repeater ID="rptAnswerList" runat="server">
                        <ItemTemplate>
                            <asp:Literal ID="ltlItem" runat="server"></asp:Literal>
                        </ItemTemplate>
                        </asp:Repeater>
                    </dl>
                    <p class="hack12px">
                    </p>
                </div>
                <div style="margin-left: auto; margin-right: auto; width: 200px;">
                                <asp:PlaceHolder ID="phHolder" runat="server"></asp:PlaceHolder>
                            </div>
                <p class="hack8px">
                </p>
            </div>
        </div>
    </div>
    <ctrl:Footer runat="server"></ctrl:Footer>
    <script>
     function sendmessage(uname,callback){
      if(uname == ""){
          dialogLogin();
          return false;
      }else{
          window.location = callback;
      }
     }
    </script>
</body>
</html>
