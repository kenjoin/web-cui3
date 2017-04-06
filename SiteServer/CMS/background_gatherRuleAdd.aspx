<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.CMS.BackgroundPages.BackgroundGatherRuleAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script language="JavaScript" type="text/JavaScript">
function AddOnPos(obj, charvalue)
{
    //obj代表要插入字符的输入框
    //value代表要插入的字符
    
    obj.focus();
    var r = document.selection.createRange();
    var ctr = obj.createTextRange();
    var i;
    var s = obj.value;
    
    //注释掉的这种方法只能用在单行的输入框input内
    //对多行输入框textarea无效
    //r.setEndPoint("StartToStart", ctr);
    //i = r.text.length;
    //取到光标位置----Start----
    var ivalue = "&^asdjfls2FFFF325%$^&"; 
    r.text = ivalue;
    i = obj.value.indexOf(ivalue);
    r.moveStart("character", -ivalue.length);
    r.text = "";
    //取到光标位置----End----
    //插入字符
    obj.value = s.substr(0,i) + charvalue + s.substr(i,s.length);
    ctr.collapse(true);
    ctr.moveStart("character", i + charvalue.length);
    ctr.select();
}

function hideBoxAndShowMessage(){
	var selects = document.getElementsByTagName("SELECT");
	var objects = document.getElementsByTagName("OBJECT");
	for(var i = 0; i < selects.length; i++) {
		selects[i].style.visibility="hidden";
	}
	for(var i = 0; i < objects.length; i++) {
		objects[i].style.visibility="hidden";
	}
	document.getElementById('success').style.display = 'block';
}
</script>
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <div id="success" style="position:absolute;z-index:300;height:120px;width:320px;left:50%;top:120px;margin-left:-150px;margin-top:-80px; display:none">
    <div class="column" style="position:absolute;z-index:300;width:100%;left:4px;top:5px;height:90px;font-size:14px;background-color:#FFFFFF">
      <div class="columntitle">操作提示</div>
      <div class="content" style="height:64px;line-height:150%;" align="center"><BR />
        <img border="0" src="../pic/animated_loading.gif" align="absmiddle" />&nbsp;正在验证采集规则, 请稍候... <BR />
        <BR />
      </div>
    </div>
  </div>
  <DIV class="column">
    <div class="columntitle">
      <asp:Literal id="literalTitle" runat="server" />
      Web页面采集规则 </div>
    <table cellpadding="1" width="100%" height="380" align="center">
      <tr>
        <td colspan="2" height="320" align="left" valign="top"><div style="PADDING-RIGHT: 0px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 0px">
            <asp:panel id="GatherRuleBase" runat="server" Visible="false">
              <table width="95%" align="center" cellpadding="5" cellspacing="3">
                <tr>
                  <td width="200" align="left"><bairong:help HelpText="采集规则的显示名称" Text="采集规则名称：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="GatherRuleName" runat="server"/></td>
                </tr>
                <tr>
                  <td width="200" align="left"><bairong:help HelpText="选择栏目，采集到的内容将添加到此栏目中" Text="采集到栏目：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:DropDownList ID="NodeIDDropDownList" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                  <td width="200" align="left"><bairong:help HelpText="采集网页的编码" Text="网页编码：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:DropDownList id="Charset" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                  <td width="200" align="left"><bairong:help HelpText="需要采集的内容数，0代表采集所有内容" Text="采集内容数：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="4" MaxLength="4" id="GatherNum" Style="text-align:right" Text="0" runat="server"/>
                    （0代表不限定）
                    <asp:RequiredFieldValidator
									ControlToValidate="GatherNum"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/>
                    <asp:RegularExpressionValidator
									ControlToValidate="GatherNum"
									ValidationExpression="\d+"
									ErrorMessage="采集数只能是数字"
									Display="Dynamic"
									runat="server"/></td>
                </tr>
                <tr>
                  <td width="200" align="left"><bairong:help HelpText="下载所采集内容的图片到服务器中" Text="下载内容图片：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:RadioButtonList id="IsSaveImage" RepeatDirection="Horizontal"
									runat="server">
                      <asp:ListItem Value="True">是</asp:ListItem>
                      <asp:ListItem Value="False" Selected="true">否</asp:ListItem>
                    </asp:RadioButtonList></td>
                </tr>
                <tr>
                  <td width="200" align="left"><bairong:help HelpText="将内容正文中的首幅图片设为内容的标题图片" Text="将首幅图片设为标题图片：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:RadioButtonList id="IsSetFirstImageAsImageUrl" RepeatDirection="Horizontal"
									runat="server">
                      <asp:ListItem Value="True" Selected="true">是</asp:ListItem>
                      <asp:ListItem Value="False">否</asp:ListItem>
                    </asp:RadioButtonList></td>
                </tr>
                <tr>
                  <td width="200" align="left"><bairong:help HelpText="当内容为空时是否采集" Text="当内容为空时是否采集：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:RadioButtonList id="IsEmptyContentAllowed" RepeatDirection="Horizontal"
									runat="server">
                      <asp:ListItem Value="True">是</asp:ListItem>
                      <asp:ListItem Value="False" Selected="true">否</asp:ListItem>
                    </asp:RadioButtonList></td>
                </tr>
                <tr>
                  <td width="200" align="left"><bairong:help HelpText="当内容标题相同时是否采集" Text="当内容标题相同时是否采集：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:RadioButtonList id="IsSameTitleAllowed" RepeatDirection="Horizontal"
									runat="server">
                      <asp:ListItem Value="True">是</asp:ListItem>
                      <asp:ListItem Value="False" Selected="true">否</asp:ListItem>
                    </asp:RadioButtonList></td>
                </tr>
                <tr>
                  <td width="200" align="left"><bairong:help HelpText="采集的内容是否不经过审核直接添加到栏目中" Text="不经过审核：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:RadioButtonList id="IsChecked" RepeatDirection="Horizontal"
									runat="server">
                      <asp:ListItem Value="True" Selected="true">是</asp:ListItem>
                      <asp:ListItem Value="False">否</asp:ListItem>
                    </asp:RadioButtonList></td>
                </tr>
                <tr>
                  <td width="200" align="left"><bairong:help HelpText="采用倒序采集可以保持和被采集的新闻列表顺序一致，建议您选“是”" Text="倒序采集：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:RadioButtonList id="IsOrderByDesc" RepeatDirection="Horizontal"
									runat="server">
                      <asp:ListItem Value="True" Selected="true">是</asp:ListItem>
                      <asp:ListItem Value="False">否</asp:ListItem>
                    </asp:RadioButtonList></td>
                </tr>
              </table>
              </asp:panel>
            <asp:panel id="GatherRuleList" runat="server" Visible="false">
              <table cellpadding="4" width="100%" align="center">
                <tr>
                  <td align="left" width="200"><bairong:help HelpText="需要采集的起始网页地址" Text="起始网页地址：" runat="server" ></bairong:help></td>
                  <td align="left" colspan="3"><table cellpadding="4" cellspacing="4" width="100%">
                      <tr>
                        <td align="left"><asp:CheckBox ID="GatherUrlIsCollection" runat="server" AutoPostBack="true" OnCheckedChanged="GatherUrl_CheckedChanged" Text="从多个网址" Checked="true"></asp:CheckBox>
                          &nbsp;&nbsp;
                          <asp:CheckBox ID="GatherUrlIsSerialize" runat="server" AutoPostBack="true" OnCheckedChanged="GatherUrl_CheckedChanged" Text="从序列相似网址"></asp:CheckBox></td>
                      </tr>
                      <tr id="GatherUrlCollectionRow" runat="server">
                        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" TextMode="MultiLine" Rows="6" id="GatherUrlCollection" runat="server"/>
                          （以换行分割） </td>
                      </tr>
                      <tr id="GatherUrlSerializeRow" runat="server">
                        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" id="GatherUrlSerialize" runat="server"/>
                          变动数字: <a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=GatherUrlSerialize.ClientID%>'), '*');" title="遇到变动数字用*代替"><font color="#0000FF">*</font>&nbsp;</a><br>
                          <br>
                          变动数字范围: 从
                          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="5" id="SerializeFrom" Text="1" runat="server"/>
                          到
                          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="5" id="SerializeTo" Text="10" runat="server"/>
                          数字变动倍数:
                          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="5" Text="1" id="SerializeInterval" runat="server"/>
                          &nbsp;&nbsp;
                          <asp:CheckBox ID="SerializeIsOrderByDesc" runat="server" Text="倒序"></asp:CheckBox>
                          <asp:CheckBox ID="SerializeIsAddZero" runat="server" Text="补零"></asp:CheckBox></td>
                      </tr>
                    </table></td>
                </tr>
                <tr>
                  <td width="200" align="left"><bairong:help HelpText="限定采集内容的地址必须包含的字符串" Text="内容地址包含：" runat="server" ></bairong:help></td>
                  <td align="left" colspan="3"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" MaxLength="200" id="UrlInclude" runat="server"/>
                    <a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=UrlInclude.ClientID%>'), '*');" title="遇到变动字符用*代替">&nbsp;<font color="#0000FF">*</font>&nbsp;</a><a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=UrlInclude.ClientID%>'), '|');" title="多个条件用|分隔各字符串">&nbsp;<font color="#0000FF">|</font>&nbsp;</a></td>
                </tr>
              </table>
              </asp:panel>
            <asp:panel id="GatherRuleContent" runat="server" Visible="false">
              <table cellpadding="1" width="100%" align="center">
                <tr>
                  <td align="left"><bairong:help HelpText="内容标题的开始字符串" Text="内容标题开始<br>（必填）：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" Rows="6" TextMode="MultiLine" id="ContentTitleStart" runat="server"/>
                    <a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentTitleStart.ClientID%>'), '*');" title="遇到变动字符用*代替">&nbsp;<font color="#0000FF">*</font></a><a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentTitleStart.ClientID%>'), '|');" title="多个条件用|分隔各字符串">&nbsp;<font color="#0000FF">|</font></a></td>
                  <td align="left"><bairong:help HelpText="内容标题的结束字符串" Text="内容标题结束<br>（必填）：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" Rows="6" TextMode="MultiLine" id="ContentTitleEnd" runat="server"/>
                    <a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentTitleEnd.ClientID%>'), '*');" title="遇到变动字符用*代替">&nbsp;<font color="#0000FF">*</font></a><a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentTitleEnd.ClientID%>'), '|');" title="多个条件用|分隔各字符串">&nbsp;<font color="#0000FF">|</font></a></td>
                </tr>
                <tr>
                  <td align="left"><bairong:help HelpText="内容正文的开始字符串" Text="内容正文开始<br>（必填）：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" Rows="6" TextMode="MultiLine" id="ContentContentStart" runat="server"/>
                    <a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentContentStart.ClientID%>'), '*');" title="遇到变动字符用*代替">&nbsp;<font color="#0000FF">*</font></a><a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentContentStart.ClientID%>'), '|');" title="多个条件用|分隔各字符串">&nbsp;<font color="#0000FF">|</font></a></td>
                  <td align="left"><bairong:help HelpText="内容正文的结束字符串" Text="内容正文结束<br>（必填）：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" Rows="6" TextMode="MultiLine" id="ContentContentEnd" runat="server"/>
                    <a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentContentEnd.ClientID%>'), '*');" title="遇到变动字符用*代替">&nbsp;<font color="#0000FF">*</font></a><a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentContentEnd.ClientID%>'), '|');" title="多个条件用|分隔各字符串">&nbsp;<font color="#0000FF">|</font></a></td>
                </tr>
                <tr>
                  <td align="left"><bairong:help HelpText="内容正文的开始字符串2" Text="内容正文开始2<br>（选填）：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" Rows="6" TextMode="MultiLine" id="ContentContentStart2" runat="server"/>
                    <a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentContentStart2.ClientID%>'), '*');" title="遇到变动字符用*代替">&nbsp;<font color="#0000FF">*</font></a><a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentContentStart2.ClientID%>'), '|');" title="多个条件用|分隔各字符串">&nbsp;<font color="#0000FF">|</font></a></td>
                  <td align="left"><bairong:help HelpText="内容正文的结束字符串2" Text="内容正文结束2<br>（选填）：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" Rows="6" TextMode="MultiLine" id="ContentContentEnd2" runat="server"/>
                    <a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentContentEnd2.ClientID%>'), '*');" title="遇到变动字符用*代替">&nbsp;<font color="#0000FF">*</font></a><a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentContentEnd2.ClientID%>'), '|');" title="多个条件用|分隔各字符串">&nbsp;<font color="#0000FF">|</font></a></td>
                </tr>
                <tr>
                  <td align="left"><bairong:help HelpText="内容正文的开始字符串3" Text="内容正文开始3<br>（选填）：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" Rows="6" TextMode="MultiLine" id="ContentContentStart3" runat="server"/>
                    <a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentContentStart3.ClientID%>'), '*');" title="遇到变动字符用*代替">&nbsp;<font color="#0000FF">*</font></a><a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentContentStart3.ClientID%>'), '|');" title="多个条件用|分隔各字符串">&nbsp;<font color="#0000FF">|</font></a></td>
                  <td align="left"><bairong:help HelpText="内容正文的结束字符串3" Text="内容正文结束3<br>（选填）：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" Rows="6" TextMode="MultiLine" id="ContentContentEnd3" runat="server"/>
                    <a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentContentEnd3.ClientID%>'), '*');" title="遇到变动字符用*代替">&nbsp;<font color="#0000FF">*</font></a><a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentContentEnd3.ClientID%>'), '|');" title="多个条件用|分隔各字符串">&nbsp;<font color="#0000FF">|</font></a></td>
                </tr>
                <tr>
                  <td align="left"><bairong:help HelpText="内容下一页的开始字符串" Text="内容下一页开始<br />（选填）：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" Rows="6" TextMode="MultiLine" id="ContentNextPageStart" runat="server"/>
                    <a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentNextPageStart.ClientID%>'), '*');" title="遇到变动字符用*代替">&nbsp;<font color="#0000FF">*</font></a><a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentNextPageStart.ClientID%>'), '|');" title="多个条件用|分隔各字符串">&nbsp;<font color="#0000FF">|</font></a></td>
                  <td align="left"><bairong:help HelpText="内容下一页的结束字符串" Text="内容下一页结束<br />（选填）：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" Rows="6" TextMode="MultiLine" id="ContentNextPageEnd" runat="server"/>
                    <a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentNextPageEnd.ClientID%>'), '*');" title="遇到变动字符用*代替">&nbsp;<font color="#0000FF">*</font></a><a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentNextPageEnd.ClientID%>'), '|');" title="多个条件用|分隔各字符串">&nbsp;<font color="#0000FF">|</font></a></td>
                </tr>
              </table>
              </asp:panel>
            <asp:panel id="GatherRuleOthers" runat="server" Visible="false">
              <table cellpadding="1" width="100%" align="center">
                <tr>
                  <td align="left"><bairong:help HelpText="限定采集内容的标题必须包含的字符串" Text="内容标题包含（选填）：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="50" MaxLength="200" id="TitleInclude" runat="server"/>
                    <a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=TitleInclude.ClientID%>'), '*');" title="遇到变动字符用*代替">&nbsp;<font color="#0000FF">*</font>&nbsp;</a><a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=TitleInclude.ClientID%>'), '|');" title="多个条件用|分隔各字符串">&nbsp;<font color="#0000FF">|</font>&nbsp;</a></td>
                </tr>
                <tr>
                  <td align="left"><bairong:help HelpText="内容列表范围的开始字符串" Text="区域内网址开始<br />（选填）：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" Rows="6" TextMode="MultiLine" id="ListAreaStart" runat="server" />
                    <a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ListAreaStart.ClientID%>'), '*');" title="遇到变动字符用*代替">&nbsp;<font color="#0000FF">*</font></a><a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ListAreaStart.ClientID%>'), '|');" title="多个条件用|分隔各字符串">&nbsp;<font color="#0000FF">|</font></a></td>
                  <td align="left"><bairong:help HelpText="内容列表范围的结束字符串" Text="区域内网址结束<br />（选填）：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" Rows="6" TextMode="MultiLine" id="ListAreaEnd" runat="server"/>
                    <a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ListAreaEnd.ClientID%>'), '*');" title="遇到变动字符用*代替">&nbsp;<font color="#0000FF">*</font></a><a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ListAreaEnd.ClientID%>'), '|');" title="多个条件用|分隔各字符串">&nbsp;<font color="#0000FF">|</font></a></td>
                </tr>
                <tr>
                  <td align="left"><bairong:help HelpText="采集登陆网站时需要的Cookie字符串" Text="登陆网站Cookie（选填）：" runat="server" ></bairong:help></td>
                  <td align="left" colspan="3"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" id="CookieString" runat="server"/></td>
                </tr>
                <tr>
                  <td align="left"><bairong:help HelpText="限定采集内容的正文必须排除的字符串" Text="内容正文排除<br />（选填）：" runat="server" ></bairong:help></td>
                  <td align="left" colspan="3"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="60" Rows="6" TextMode="MultiLine" id="ContentExclude" runat="server"/>
                    <a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentExclude.ClientID%>'), '*');" title="遇到变动字符用*代替">&nbsp;<font color="#0000FF">*</font></a><a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentExclude.ClientID%>'), '|');" title="多个条件用|分隔各字符串">&nbsp;<font color="#0000FF">|</font></a></td>
                </tr>
                <tr>
                  <td align="left"><bairong:help HelpText="采集内容的正文必须清除的Html标签" Text="内容Html清除<br />（选填）：" runat="server" ></bairong:help></td>
                  <td align="left" colspan="3"><asp:CheckBoxList ID="ContentHtmlClearCollection" RepeatDirection="Horizontal" runat="server" RepeatColumns="7">
                      <asp:ListItem Value="script" Selected="true" Text="脚本&amp;lt;script"></asp:ListItem>
                      <asp:ListItem Value="object" Selected="true" Text="对象&amp;lt;object"></asp:ListItem>
                      <asp:ListItem Value="iframe" Selected="true" Text="框架&amp;lt;iframe"></asp:ListItem>
                      <asp:ListItem Value="a" Text="链接&amp;lt;a"></asp:ListItem>
                      <asp:ListItem Value="br" Text="换行&amp;lt;br&amp;gt;"></asp:ListItem>
                      <asp:ListItem Value="table" Text="表格&amp;lt;table"></asp:ListItem>
                      <asp:ListItem Value="tbody" Text="表格体&amp;lt;tbody"></asp:ListItem>
                      <asp:ListItem Value="tr" Text="表格行&amp;lt;tr"></asp:ListItem>
                      <asp:ListItem Value="td" Text="单元&amp;lt;td"></asp:ListItem>
                      <asp:ListItem Value="font" Text="字体&amp;lt;font"></asp:ListItem>
                      <asp:ListItem Value="div" Text="层&amp;lt;div"></asp:ListItem>
                      <asp:ListItem Value="span" Text="SPAN&amp;lt;span"></asp:ListItem>
                      <asp:ListItem Value="img" Text="图象&amp;lt;img"></asp:ListItem>
                      <asp:ListItem Value="&nbsp;" Text="空格&amp;nbsp;"></asp:ListItem>
                    </asp:CheckBoxList></td>
                </tr>
                <tr>
                  <td align="left"><bairong:help HelpText="字符串替换" Text="字符串替换：
<br />（选填）：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" Rows="6" TextMode="MultiLine" id="ContentReplaceFrom" runat="server"/>
                    <br>
                    (多个替换字符串请用","格开) </td>
                  <td align="left"><bairong:help HelpText="替换为" Text="替换为<br />（选填）：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" Rows="6" TextMode="MultiLine" id="ContentReplaceTo" runat="server"/>
                    <br>
                    (如果是替换为字符串是多个，可以用","格开，系统会对应替换，否则系统将统一替换) </td>
                </tr>
                <tr>
                  <td align="left"><bairong:help HelpText="内容所属栏目的开始字符串" Text="内容栏目开始<br />（选填）：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" Rows="6" TextMode="MultiLine" id="ContentChannelStart" runat="server"/>
                    <a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentChannelStart.ClientID%>'), '*');" title="遇到变动字符用*代替">&nbsp;<font color="#0000FF">*</font></a><a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentChannelStart.ClientID%>'), '|');" title="多个条件用|分隔各字符串">&nbsp;<font color="#0000FF">|</font></a></td>
                  <td align="left"><bairong:help HelpText="内容所属栏目的结束字符串" Text="内容栏目结束<br />（选填）：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" Rows="6" TextMode="MultiLine" id="ContentChannelEnd" runat="server"/>
                    <a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentChannelEnd.ClientID%>'), '*');" title="遇到变动字符用*代替">&nbsp;<font color="#0000FF">*</font></a><a href="javascript:undefined;" onCLICK="AddOnPos(document.getElementById('<%=ContentChannelEnd.ClientID%>'), '|');" title="多个条件用|分隔各字符串">&nbsp;<font color="#0000FF">|</font></a></td>
                </tr>
                <tr>
                  <td align="left"><bairong:help HelpText="其他需要采集的字段" Text="其他需要采集的字段<br />（选填）：" runat="server" ></bairong:help></td>
                  <td align="left" colspan="3"><asp:CheckBoxList ID="ContentAttributes" AutoPostBack="true" OnSelectedIndexChanged="ContentAttributes_SelectedIndexChanged" RepeatColumns="8" RepeatDirection="Horizontal" runat="server"></asp:CheckBoxList></td>
                </tr>
                <asp:Repeater ID="ContentAttributesRepeater" runat="server">
                  <itemtemplate>
                    <tr>
                      <td align="left"><bairong:NoTagText id="HelpStart" runat="server"></bairong:NoTagText>
                        <span style="display:none">
                        <asp:Literal ID="ltlAttributeName" runat="server"></asp:Literal>
                        </span></td>
                      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" Rows="6" TextMode="MultiLine" id="ContentStart" runat="server"/>
                        <a href="javascript:undefined;" onCLICK="AddOnPos(this.parentNode.firstChild, '*');" title="遇到变动字符用*代替">&nbsp;<font color="#0000FF">*</font></a><a href="javascript:undefined;" onCLICK="AddOnPos(this.parentNode.firstChild, '|');" title="多个条件用|分隔各字符串">&nbsp;<font color="#0000FF">|</font></a></td>
                      <td align="left"><bairong:NoTagText id="HelpEnd" runat="server"></bairong:NoTagText></td>
                      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="30" Rows="6" TextMode="MultiLine" id="ContentEnd" runat="server"/>
                        <a href="javascript:undefined;" onCLICK="AddOnPos(this.parentNode.firstChild, '*');" title="遇到变动字符用*代替">&nbsp;<font color="#0000FF">*</font></a><a href="javascript:undefined;" onCLICK="AddOnPos(this.parentNode.firstChild, '|');" title="多个条件用|分隔各字符串">&nbsp;<font color="#0000FF">|</font></a></td>
                    </tr>
                  </itemtemplate>
                </asp:Repeater>
              </table>
              </asp:panel>
            <asp:panel id="Done" runat="server" Visible="false">
              <SPAN class="mainTitle">完成!</SPAN> <BR>
              <BR>
              <DIV> 操作成功。<BR>
                </asp:Panel>
            </DIV>
            </asp:panel>
          <asp:Panel id="OperatingError" runat="server" Visible="false">
            <span class="mainTitle"></span> <STRONG>发生错误</STRONG> <br>
            <br>
            <div> 执行向导过程中出错 </div>
            <br>
            <DIV><B><U>错误信息</U></B>:
              <asp:Label ID="ErrorLabel" runat="server"></asp:Label>
            </DIV>
            </asp:Panel></td>
      </tr>
      <tr style="BACKGROUND-POSITION:center 50%; BACKGROUND-IMAGE:url(../pic/line.gif); BACKGROUND-REPEAT:repeat-x">
        <td width="30%">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2"><table cellpadding="0" cellspacing="0" width="100%" border="0" align="center" >
            <tr >
              <td align="right"><span style="padding-right:30 "><span style="padding-right:30 "></span> <span style="padding-right:30 "></span>
                <asp:Button class="button" ID="Previous" OnClick="PreviousPanel" runat="server" Text="< 上一步"></asp:Button>
                &nbsp;
                <asp:Button class="button" id="Next" onclick="NextPanel" runat="server" text="下一步 >"></asp:button>
                <span style="padding-right:30 "></span></span></td>
            </tr>
          </table></td>
      </tr>
    </table>
  </DIV>
  </TD>
  </TR>
  </TBODY>
  </TABLE>
  </TD>
  </TR>
  </TBODY>
  </TABLE>
</form>
</body>
</HTML>
