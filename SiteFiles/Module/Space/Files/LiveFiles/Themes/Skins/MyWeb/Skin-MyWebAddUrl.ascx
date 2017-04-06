<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.MyWeb.Controls" Assembly="SiteServer.Space" %>

<style type="text/css">
#wholeform dt { padding:5px;}
.set-r{ float:left; width:252px; margin:12px 10px 0 0; _margin:12px 5px 0 0;}
.trigon{ width:9px; border-right:1px solid #ccc; height:320px; _height:280px; float:left; position:relative;}
.trigonar { width:10px; height:18px; background:url(../../../../livefiles/images/myweb_bg_ico.gif) no-repeat; overflow:hidden; position:absolute; bottom:55px;}
.se{ float:left; height:318px; _height:280px;_height /**/:280px; border-top:1px solid #ccc; border-right:1px solid #ccc; border-bottom:1px solid #ccc; background:white; width:241px; _width /**/:242px; overflow:auto; word-break:break-all; overflow-x:hidden;}
.se h2{ width:210px; line-height:25px; _line-height:25px; _height /**/:38px; border-bottom:1px dotted #a9a9a9; font-size:12px; font-weight:normal;margin-top:5px;}
.se h2 span{ color:#666;}
.se p{ width:210px; margin:5px auto; _margin:5px auto; line-height:20px; text-align:left;font-family:arial} 
.se p a:link,.se p a:visited{ color:#247cab; padding:1px;}
.se p a:hover{padding:1px; background:#247cab; color:white; text-decoration:none;}
.selected { background-color: #247cab !important; color: #fff !important; text-decoration: none; }
</style>
<TABLE width="100%" cellpadding="2" cellspacing="2">
<TBODY>
                <TR>
                  <TD width="330" id=GoodStuff style="PADDING-LEFT: 20px"><DIV id=wholeform>
                      <dl>
                        <dt><strong>网页地址: </strong><span>
                          <asp:TextBox id="SiteUrl" CssClass="text" MaxLength="200" Width="310" runat="server"/>
                          </span></dt>
                      </dl>
                      <dl>
                        <dt><strong>网页标题: </strong><span>
                          <asp:TextBox id="Title" CssClass="text" MaxLength="200" Width="310" runat="server"/>
                          </span></dt>
                      </dl>
                      <dl>
                        <dt><strong>评论摘要: </strong><span>
                          <asp:TextBox id="Description" CssClass="text" TextMode="MultiLine" Rows="6" Width="310" runat="server"/>
                          </span></dt>
                      </dl>
                      <dl>
                        <dt><strong>指定标签:</strong> <span class="Hint">(多个标签之间请用逗号或者空格加以分隔)</span>
                        <asp:TextBox id="Tags" CssClass="text" MaxLength="200" Width="300" runat="server"/>
                        </dt>
                      </dl>
                      <dl>
                        <dt><strong>共享设置:</strong></dt>
                        <dd>
                          <asp:RadioButtonList ID="SecurityType" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList>
                        </dd>
                      </dl>
                    </DIV></TD>
                  <TD align="left" valign="top"><div style="height:15px; text-align:left"> </div>
                    <script type="text/javascript" language="javascript">
if (window.focus) window.focus();

function select(t) {
	_get(t).className='selected';
}
function deselect(t) {
	_get(t).className='';
}

// focus the caret to end of a form input (+ optionally select some text)
var range=0 //ie
function focusTo(obj, selectFrom) {
	if (typeof selectFrom == 'undefined') selectFrom = obj.value.length
	if(obj.createTextRange){ //ie + opera
		if (range == 0) range = obj.createTextRange()
		range.moveEnd("character",obj.value.length)
		range.moveStart("character",selectFrom)
		//obj.select()
		//range.select()
		setTimeout('range.select()', 10)
	} else if (obj.setSelectionRange){ //ff
		obj.select()
		obj.setSelectionRange(selectFrom,obj.value.length)
	} else { //safari :(
	 obj.blur()
}}		  

function swap(tag,force){
	var tagArray = _get('<%=Tags.ClientID%>').value.trim().split(' '), present=false, t, tl=tag.toLowerCase();
	if (tagArray[0].trim() == '') tagArray.splice(0,1);
	if (tagArray.length>1){
		if(tagArray[tagArray.length-1].trim() == '')	tagArray.pop();
	}
	for (t=0; t<tagArray.length; t++) {
		if (tagArray[t].toLowerCase() == tl) { 
			if(force == false) {
				tagArray.splice(t,1); deselect(tag); present=true; t-=1  
			} else {
				present=true;
			}
		}
	}
	if (!present) {
		tagArray.push(tag); select(tag) 
	}
	var content = tagArray.join(' ')
	lastEdit = _get('<%=Tags.ClientID%>').value = (content.length > 1) ? content + ' ' : content
	focusTo(_get('<%=Tags.ClientID%>'));
}
</script>
                    <div class="set-r">
                      <div class="trigon">
                        <div class="trigonar"></div>
                      </div>
                      <div class="se">
                        <p class="label" id="yourtags"><span>我的标签</span> </p>
                        <p id="alpha">
                          <bairong:NoTagText id="TagsLink" runat="server" />
                        </p>
                      </div>
                    </div></TD>
                </TR>
                <tr>
                  <td align="center">
                      <asp:Button ID="addButton" CssClass="button" runat="server" Text="添 加"></asp:Button>
                      &nbsp;
                      <asp:Button ID="cancelButton" CssClass="button" CausesValidation="false" runat="server" Text="取 消"></asp:Button>
                    </td>
                  <td></td>
                </tr>
              </TBODY>
            </TABLE>