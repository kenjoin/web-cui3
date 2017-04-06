<%@ Page SmartNavigation="False" Language="C#" Inherits="SiteServer.Space.Friends.Pages.FriendsWord" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Friends.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">
  <div id="content">
  <DIV class="clearfix" id="innerContent">
    <DIV id="appList">
      <DIV id="innerAppList">
        <space:FriendsNav runat="server" directoryName="word"></space:FriendsNav>
      </DIV>
    </DIV>
    <DIV id="appPage">
      <DIV id="innerAppPage">
        <DIV id="entrycommentlist"><A name="comment"></A>
          <DIV id="messageWrapper"></DIV>
          <DIV class="item-title">
            <H3>留 言</H3>
            <DIV class="clear"></DIV>
          </DIV>
          <DIV id="commentlist">
            <asp:DataList ID="MyDataList" Width="100%" runat="server">
              <itemtemplate>
                <DIV class="info-content">
                  <DIV style="MARGIN-BOTTOM: 10px">
                    <bairong:NoTagText id="Content" runat="server"></bairong:NoTagText>
                  </DIV>
                  <DIV class="cmtIco">
                    <bairong:NoTagText id="Icon" nowrap="true" runat="server"></bairong:NoTagText>
                  </DIV>
                  <DIV class="info-title">
                    <H3>
                      <bairong:NoTagText id="Commentator" runat="server"></bairong:NoTagText>
                      <bairong:NoTagText id="Email" runat="server"></bairong:NoTagText>
                      &nbsp;
                      <bairong:NoTagText id="IsPrivate" runat="server"></bairong:NoTagText>
                      <BR />
                      <bairong:NoTagText id="AddDate" runat="server"></bairong:NoTagText>
                    </H3>
                    <DIV class="clear"></DIV>
                  </DIV>
                  <DIV class="clear"></DIV>
                </DIV>
              </itemtemplate>
              <separatortemplate>
                <HR style="height: 1px;border: none;border-top: 1px solid #cecece;" />
              </separatortemplate>
            </asp:DataList>
            <bairong:sqlpager id="MySqlPager" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0></bairong:sqlpager>
            <STYLE type="text/css"> 
.cmtIco {FLOAT: left;OVERFLOW: hidden;WIDTH: 50px;MARGIN-RIGHT: 10px}.cmtIco IMG {BORDER-RIGHT: #ccc 1px solid;BORDER-TOP: #ccc 1px solid;VERTICAL-ALIGN: middle;BORDER-LEFT: #ccc 1px solid;BORDER-BOTTOM: #ccc 1px solid;HEIGHT: 48px}.cmtIco SPAN {DISPLAY: block;OVERFLOW: hidden;WIDTH: 64px;CURSOR: pointer;WHITE-SPACE: nowrap}
</STYLE>
          </DIV>
        </DIV>
        <asp:PlaceHolder ID="phWord" runat="server">
        <DIV class="info-content" id="commentForm">
          <TABLE cellSpacing="2" cellPadding="2" width="100%" border="0">
            <TBODY>
              <TR>
                <TD colSpan="2" height="30"><strong><asp:Literal ID="ltlMessage" runat="server"></asp:Literal></strong>
                </TD>
              </TR>
              <asp:PlaceHolder ID="phWordInput" runat="server">
                <asp:PlaceHolder ID="phAnonymous" runat="server">
                  <TR>
                    <TD><LABEL for="authorName">称　呼:</LABEL></TD>
                    <TD><asp:TextBox class="text" id="UserName" size="30" text="匿名" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ControlToValidate="UserName" ErrorMessage="*" Display="Dynamic" runat="server" />
                      <asp:RegularExpressionValidator runat="server" ControlToValidate="UserName" ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
                    </TD>
                  </TR>
                  <TR>
                    <TD><LABEL for="authorEmail">邮　箱:</LABEL></TD>
                    <TD><asp:TextBox class="text" id="Email" size="30" runat="server"></asp:TextBox>
                      <asp:RegularExpressionValidator ControlToValidate="Email" 
			ValidationExpression="(\w[0-9a-zA-Z_-]*@(\w[0-9a-zA-Z-]*\.)+\w{2,})" 
			ErrorMessage=" *" Display="Dynamic" runat="server"/>
                    </TD>
                  </TR>
                </asp:PlaceHolder>
                <TR>
                  <TD vAlign="top" width="10%"><LABEL for="commentContent">留　言:</LABEL></TD>
                  <TD><asp:TextBox class="text" TextMode="MultiLine" Rows="8" id="Content" style="WIDTH: 80%; height:120px" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="Content" ErrorMessage="*" Display="Dynamic" runat="server" />
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="Content" ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />
                    <asp:Literal ID="ltlMaxWordNum" runat="server"></asp:Literal>
                  </TD>
                </TR>
                <TR>
                  <TD vAlign="top">表　情:</TD>
                  <TD><DIV id="emotionBox">
                      <DIV class="emotionBox">
                        <DIV class="basicEm">
                          <DIV id="EmotionIcons" class="emotionBody clearfix"><A href="javascript:void(0);" data_ubb="[e0]"><IMG title="微笑" alt="微笑" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/0.gif" /></A><A href="javascript:void(0);" data_ubb="[e1]"><IMG title="谄媚" alt="谄媚" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/1.gif" /></A><A href="javascript:void(0);" data_ubb="[e2]"><IMG title="偷笑" alt="偷笑" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/2.gif" /></A><A href="javascript:void(0);" data_ubb="[e3]"><IMG title="大笑" alt="大笑" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/3.gif" /></A><A href="javascript:void(0);" data_ubb="[e4]"><IMG title="害羞" alt="害羞" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/4.gif" /></A><A href="javascript:void(0);" data_ubb="[e5]"><IMG title="调皮" alt="调皮" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/5.gif" /></A><A href="javascript:void(0);" data_ubb="[e6]"><IMG title="得意" alt="得意" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/6.gif" /></A><A href="javascript:void(0);" data_ubb="[e7]"><IMG title="耍酷" alt="耍酷" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/7.gif" /></A><A href="javascript:void(0);" data_ubb="[e8]"><IMG title="讽刺" alt="讽刺" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/8.gif" /></A><A href="javascript:void(0);" data_ubb="[e9]"><IMG title="委屈" alt="委屈" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/9.gif" /></A><A href="javascript:void(0);" data_ubb="[e10]"><img title="郁闷" alt="郁闷" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/10.gif" /></a><A href="javascript:void(0);" data_ubb="[e11]"><IMG title="难过" alt="难过" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/11.gif" /></A><A href="javascript:void(0);" data_ubb="[e12]"><IMG title="流泪" alt="流泪" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/12.gif" /></A><A href="javascript:void(0);" data_ubb="[e13]"><IMG title="大哭" alt="大哭" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/13.gif" /></A><A href="javascript:void(0);" data_ubb="[e14]"><IMG title="发火" alt="发火" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/14.gif" /></A><A href="javascript:void(0);" data_ubb="[e15]"><IMG title="咒骂" alt="咒骂" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/15.gif" /></A><A href="javascript:void(0);" data_ubb="[e16]"><IMG title="发呆" alt="发呆" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/16.gif" /></A><A href="javascript:void(0);" data_ubb="[e17]"><IMG title="不懂" alt="不懂" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/17.gif" /></A>
                      <DIV style="CLEAR: both"></DIV>
                      <A href="javascript:void(0);" data_ubb="[e18]"><IMG title="疑惑" alt="疑惑" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/18.gif" /></A><A href="javascript:void(0);" data_ubb="[e19]"><IMG title="吃惊" alt="吃惊" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/19.gif" /></A><A href="javascript:void(0);" data_ubb="[e20]"><IMG title="流汗" alt="流汗" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/20.gif" /></A><A href="javascript:void(0);" data_ubb="[e21]"><IMG title="尴尬" alt="尴尬" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/21.gif" /></A><A href="javascript:void(0);" data_ubb="[e22]"><IMG title="惊恐" alt="惊恐" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/22.gif" /></A><A href="javascript:void(0);" data_ubb="[e23]"><IMG title="闭嘴" alt="闭嘴" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/23.gif" /></A><A href="javascript:void(0);" data_ubb="[e24]"><IMG title="犯困" alt="犯困" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/24.gif" /></A><A href="javascript:void(0);" data_ubb="[e25]"><IMG title="睡觉" alt="睡觉" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/25.gif" /></A><A href="javascript:void(0);" data_ubb="[e26]"><IMG title="馋" alt="馋" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/26.gif" /></A><A href="javascript:void(0);" data_ubb="[e27]"><IMG title="吐" alt="吐" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/27.gif" /></A><A href="javascript:void(0);" data_ubb="[e28]"><IMG title="耳语" alt="耳语" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/28.gif" /></A><A href="javascript:void(0);" data_ubb="[e29]"><IMG title="海盗" alt="海盗" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/29.gif" /></A><A href="javascript:void(0);" data_ubb="[e30]"><IMG title="重伤" alt="重伤" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/30.gif" /></A><A href="javascript:void(0);" data_ubb="[e31]"><IMG title="拥抱" alt="拥抱" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/31.gif" /></A><A href="javascript:void(0);" data_ubb="[e36]"><IMG title="红心" alt="红心" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/36.gif" /></A><A href="javascript:void(0);" data_ubb="[e37]"><IMG title="心碎" alt="心碎" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/37.gif" /></A><A href="javascript:void(0);" data_ubb="[e38]"><IMG title="花开" alt="花开" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/38.gif" /></A><A href="javascript:void(0);" data_ubb="[e39]"><IMG title="花谢" alt="花谢" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/39.gif" /></A>
                      <DIV style="CLEAR: both"></DIV>
                      <A href="javascript:void(0);" data_ubb="[e40]"><IMG title="邮件" alt="邮件" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/40.gif" /></A><A href="javascript:void(0);" data_ubb="[e41]"><IMG title="手势-棒" alt="手势-棒" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/41.gif" /></A><A href="javascript:void(0);" data_ubb="[e42]"><IMG title="手势-逊" alt="手势-逊" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/42.gif" /></A><A href="javascript:void(0);" data_ubb="[e43]"><IMG title="握手" alt="握手" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/43.gif" /></A><A href="javascript:void(0);" data_ubb="[e44]"><IMG title="电话" alt="电话" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/44.gif" /></A><A href="javascript:void(0);" data_ubb="[e45]"><IMG title="手机" alt="手机" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/45.gif" /></A><A href="javascript:void(0);" data_ubb="[e46]"><IMG title="嘴唇" alt="嘴唇" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/46.gif" /></A><A href="javascript:void(0);" data_ubb="[e47]"><IMG title="V" alt="V" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/47.gif" /></A><A href="javascript:void(0);" data_ubb="[e48]"><IMG title="太阳" alt="太阳" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/48.gif" /></A><A href="javascript:void(0);" data_ubb="[e49]"><IMG title="月亮" alt="月亮" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/49.gif" /></A><A href="javascript:void(0);" data_ubb="[e50]"><IMG title="星星" alt="星星" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/50.gif" /></A><A href="javascript:void(0);" data_ubb="[e51]"><IMG title="灯泡" alt="灯泡" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/51.gif" /></A><A href="javascript:void(0);" data_ubb="[e52]"><IMG title="电视" alt="电视" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/52.gif" /></A><A href="javascript:void(0);" data_ubb="[e53]"><IMG title="闹钟" alt="闹钟" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/53.gif" /></A><A href="javascript:void(0);" data_ubb="[e54]"><IMG title="礼物" alt="礼物" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/54.gif" /></A><A href="javascript:void(0);" data_ubb="[e55]"><IMG title="现金" alt="现金" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/55.gif" /></A><A href="javascript:void(0);" data_ubb="[e56]"><IMG title="咖啡" alt="咖啡" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/56.gif" /></A><A href="javascript:void(0);" data_ubb="[e57]"><IMG title="饭" alt="饭" src="<%=RootUrl%>/sitefiles/bairong/icons/emotion/57.gif" /></A></DIV>
                          <DIV class="emotionNav"></DIV>
                        </DIV>
                      </DIV>
                    </DIV></TD>
                </TR>
                <TR>
                  <TD class="redfont" id="c_codeTextBox">验&nbsp;证&nbsp;码:</TD>
                  <TD id="c_codeInputBox"><asp:TextBox class="text" id="ValidateCode" style="IME-MODE: disabled" maxLength="4" size="6" name="ValidateCode" autocomplete="off" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="ValidateCode" ErrorMessage="*" Display="Dynamic" runat="server" />
<SPAN>
                    <asp:Image ID="imgValidateCodeImage" style="VERTICAL-ALIGN: text-bottom;" alt="验证码" runat="server"></asp:Image>
                    </SPAN>&nbsp;&nbsp;
                    <asp:CheckBox ID="IsPrivite" runat="server" Text="不公开"></asp:CheckBox></TD>
                </TR>
                <TR height="30">
                  <TD>&nbsp;</TD>
                  <TD><asp:Button OnClick="Submit_Click" cssclass="button-submit" text="发 表" runat="server"></asp:Button>
                  </TD>
                </TR>
                <script language="javascript" type="text/javascript">
	    function commentAddOnPos(obj, charvalue)
		{							
			obj.focus();
			var r = document.selection.createRange();
			var ctr = obj.createTextRange();
			var i;
			var s = obj.value;
			
			var ivalue = "&^asdjfls2FFFF325%$^&"; 
			r.text = ivalue;
			i = obj.value.indexOf(ivalue);
			r.moveStart("character", -ivalue.length);
			r.text = "";
			obj.value = s.substr(0,i) + charvalue + s.substr(i,s.length);
			ctr.collapse(true);
			ctr.moveStart("character", i + charvalue.length);
			ctr.select();
		}
		function observeEmotionIcons(){
			Event.observe($('EmotionIcons'), 'click', function(event){
				var elt = Event.findElement(event, 'A');
				if (elt != document && elt){
					commentAddOnPos($('<%=Content.ClientID%>'), $(elt)['data_ubb']);
				}
			});
		}
		observeEmotionIcons();
	</script>
              </asp:PlaceHolder>
            </TBODY>
          </TABLE>
        </DIV>
        </asp:PlaceHolder>
      </DIV>
    </DIV>
  </div>
</asp:content>
