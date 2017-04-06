<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.BBS.BackgroundPages.BackgroundForumEdit" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<bairong:Code type="Calendar" runat="server" />
<bairong:Code type="JQuery" runat="server" />
<script language="javascript" type="text/javascript">
function _toggleTab(no,totalNum){
	$("#tab"+no).removeClass("tabOff");
	$("#tab"+no).addClass("tabOn");
	$("#column"+no).show();

	for (var i = 1; i <= totalNum; i++){
		if (i != no){
			$("#tab"+i).removeClass("tabOn");
			$("#tab"+i).addClass("tabOff");
			$("#column"+i).hide();
		}
	}
}
function _checkCol(column, className, bcheck)
{
	var elements = $('#' + column + '.' + className);
	for(var i=0; i<elements.length; i++){
		_checkAll(elements[i], bcheck);
	}
}
</script>
<script language="javascript" src="../Inc/auxiliary.js"></script>
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <div style="text-align:left; margin-left:20px; margin-bottom:6px;">当前操作：
    <asp:Literal id="ltlTitle" runat="server" />
  </div>
  <div class="tab">
    <div id="tab1" onClick="_toggleTab(1,5);" class="tabOn" style="cursor:pointer">基本设置</div>
    <div id="tab2" onClick="_toggleTab(2,5);" class="tabOff" style="cursor:pointer">高级设置</div>
    <div id="tab3" onClick="_toggleTab(3,5);" class="tabOff" style="cursor:pointer">贴子选项</div>
    <div id="tab4" onClick="_toggleTab(4,5);" class="tabOff" style="cursor:pointer">主题分类</div>
    <div id="tab5" onClick="_toggleTab(5,5);" class="tabOff" style="cursor:pointer">权限相关</div>
    <div class="clearer"></div>
  </div>
  <div id="column1" class="column">
    <table width="98%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td colspan="100" class="tips">注：以下设置没有继承性，即仅对当前版块有效，不会对下级子版块产生影响。 </td>
      </tr>
      <tr>
        <td width="187" align="left"><bairong:help HelpText="版块的名称" Text="版块名称：" runat="server" ></bairong:help></td>
        <td width="934" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="255" id="txtForumName" runat="server"/>
          <asp:RequiredFieldValidator id="RequiredFieldValidator"
			ControlToValidate="txtForumName"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/></td>
        <td width="149" rowspan="5" align="left" valign="bottom"><img src="<%=PreviewImageSrc%>" class="preview" alt=图片预览 name="preview_txtIconUrl" id="preview_txtIconUrl"></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="唯一标识此版块的字符串" Text="版块索引：" runat="server" ></bairong:help></td>
        <td align="left" colspan="2" ><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="255" id="txtIndexName" runat="server"/>
          <asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="txtIndexName"
			ValidationExpression="[^']+"
			ErrorMessage="*"
			Display="Dynamic" /></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="版块名称颜色" Text="版块名称颜色：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="200" id="txtColor" runat="server"/>
          <asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="txtColor"
			ValidationExpression="[^']+"
			ErrorMessage="*"
			Display="Dynamic" /></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="选择“不显示”将暂时将版块隐藏不显示，但版块内容仍将保留，且用户仍可通过直接提供带有 fid 的 URL 访问到此版块" Text="版块状态：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:RadioButtonList ID="rblThreadState" DataTextField="Text" DataValueField="Value" RepeatDirection="Horizontal" runat="server"> </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="可选择此版块的图标" Text="版块图标：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="txtIconUrl"
				MaxLength="100"
				size="45"
				runat="server"/>
          <nobr>
          <asp:HyperLink ID="SelectImage" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">选择</asp:HyperLink>
          <asp:HyperLink ID="UploadImage" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">上传</asp:HyperLink>
        </nobr></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="将显示于版块名称的下面，提供对本版块的简短描述" Text="版块简介：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:TextBox TextMode="MultiLine" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="txtSummary"
				MaxLength="200"  
                Rows="5"
                Columns="45"
				runat="server"/></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="此内容用于搜索引擎优化，出现在 meta 的Keywords 标签中" Text="SEO之Keywords：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:TextBox TextMode="MultiLine" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="txtMetaKeywords"
				MaxLength="200"  
                Rows="5"
                Columns="45"
				runat="server"/></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="此内容用于搜索引擎优化，出现在 meta 的 description  标签中" Text="SEO之Description：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:TextBox TextMode="MultiLine" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="txtMetaDescription"
				MaxLength="200"  
                Rows="5"
                Columns="45"
				runat="server"/></td>
      </tr>
    </table>
  </div>
  <div id="column2" style="display:none" class="column">
    <table width="98%"  align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td colspan="100" class="tips">注：以下设置没有继承性，即仅对当前版块有效，不会对下级子版块产生影响。 </td>
      </tr>
      <tr id="LinkURLRow" runat="server">
        <td width="15%" align="left"><bairong:help HelpText="如果设置转向 URL，用户点击本版块将进入转向中设置的 URL。" Text="版块转向URL：" runat="server" ></bairong:help></td>
        <td width="85%" colspan="2" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="200" id="txtLinkUrl" runat="server"/>
          <asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="txtLinkUrl"
			ValidationExpression="[^']+"
			ErrorMessage="*"
			Display="Dynamic" /></td>
      </tr>
      <tr id="LinkTypeRow" runat="server">
        <td align="left"><bairong:help HelpText="设置下级子版块横排时每行版块数量，如果设置为 0，则按正常方式排列" Text="下级子版块横排：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:DropDownList id="ddlColumns" runat="server">
            <asp:ListItem Text="0" Value="0" Selected="true"></asp:ListItem>
            <asp:ListItem Text="1" Value="1" ></asp:ListItem>
            <asp:ListItem Text="2" Value="2"></asp:ListItem>
            <asp:ListItem Text="3" Value="3"></asp:ListItem>
            <asp:ListItem Text="4" Value="4"></asp:ListItem>
            <asp:ListItem Text="5" Value="5"></asp:ListItem>
          </asp:DropDownList>
          (如果设置为 0，则按界面设置中的规则排列)</td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="选择“是”将不显示本版块的主题列表、发帖按钮等等，类似于一个分类" Text="只显示下级子版块：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:RadioButtonList ID="rblIsOnlyDisplaySubForums" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" Value="True"></asp:ListItem>
            <asp:ListItem Text="否" Value="False" Selected="true"></asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="选择“是”版块首页侧边将显示聚合本版内容的信息" Text="显示边栏：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:RadioButtonList ID="rblIsDisplayForumInfo" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" Value="True"></asp:ListItem>
            <asp:ListItem Text="否" Value="False" Selected="true"></asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="选择“默认”，将使用全局设置" Text="本版块在首页显示方式：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:RadioButtonList ID="rblForumSummaryType" DataTextField="Text" DataValueField="Value" RepeatDirection="Horizontal" runat="server"> </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="设置版块的主题列表默认按照哪个字段进行排序显示。默认为“回复时间”，除默认设置外其他排序方式会加重服务器负担" Text="主题默认排序字段：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:RadioButtonList ID="rblThreadOrderField" DataTextField="Text" DataValueField="Value" RepeatDirection="Horizontal" runat="server"> </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="设置版块的主题列表默认排序的方式。默认为“按降序排列”，除默认设置外其他排序方式会加重服务器负担" Text="主题默认排序方式：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:RadioButtonList ID="rblThreadOrderType" DataTextField="Text" DataValueField="Value" RepeatDirection="Horizontal" runat="server"> </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="是否在本版显示全局置顶和分版置顶" Text="是否显示置顶主题：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:RadioButtonList ID="rblIsDisplayTopThread" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" Value="True"></asp:ListItem>
            <asp:ListItem Text="否" Value="False" Selected="true"></asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr style="display:none;">
        <td align="left"><bairong:help HelpText="此栏目内的内容所用到的内容模版" Text="本栏目的内容模版：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:DropDownList id="TemplateID" DataTextField="TemplateName" DataValueField="TemplateID" runat="server"> </asp:DropDownList></td>
      </tr>
    </table>
  </div>
  <div id="column3" style="display:none" class="column">
    <table width="98%"  align="center" cellpadding="4" cellspacing="3">
      <tr>
        <td colspan="100" class="tips">注：以下设置没有继承性，即仅对当前版块有效，不会对下级子版块产生影响。 </td>
      </tr>
      <tr>
        <td width="15%" align="left"><bairong:help HelpText="选择“是”将使用户在本版发表的帖子待版主或管理员审查通过后才显示出来，打开此功能后，你可以在用户组中设定哪些组发帖可不经审核，也可以在管理组中设定哪些组可以审核别人的帖子" Text="发帖审核：" runat="server" ></bairong:help></td>
        <td width="85%" colspan="2" align="left"><asp:RadioButtonList ID="rblThreadCheckType" DataTextField="Text" DataValueField="Value" RepeatDirection="Horizontal" runat="server"> </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="选择“是”将允许用户编辑本版发表的帖子" Text="是否允许编辑帖子：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:RadioButtonList ID="rblIsEditThread" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" Value="True" Selected="true"></asp:ListItem>
            <asp:ListItem Text="否" Value="False"></asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="是否在本版启用回收站功能，打开此功能后，所有被删除主题将被放在回收站中，而不会被直接删除" Text="是否开启主题回收站：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:RadioButtonList ID="rblIsOpenRecycle" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" Value="True"></asp:ListItem>
            <asp:ListItem Text="否" Value="False" Selected="true"></asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="注意: 选择“是”将不屏蔽帖子中的任何代码，将带来严重的安全隐患，请慎用" Text="是否允许使用HTML代码：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:RadioButtonList ID="rblIsAllowHtml" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" Value="True"></asp:ListItem>
            <asp:ListItem Text="否" Value="False" Selected="true"></asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="注意: 允许 [img] 代码作者将可以在帖子插入其他网站的图片并显示" Text="是否允许使用[img]代码：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:RadioButtonList ID="rblIsAllowImg" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" Value="True" Selected="true"></asp:ListItem>
            <asp:ListItem Text="否" Value="False"></asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="注意:允许 [audio] [video] [flash] 等多媒体代码后，作者将可以在帖子插入多媒体文件并显示" Text="是否允许使多媒体代码：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:RadioButtonList ID="rblIsAllowMultimedia" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" Value="True"></asp:ListItem>
            <asp:ListItem Text="否" Value="False" Selected="true"></asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="表情提供对表情符号，如“:)”的解析，使之作为图片显示" Text="是否允许使用表情：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:RadioButtonList ID="rblIsAllowEmotionSymbol" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" Value="True" Selected="true"></asp:ListItem>
            <asp:ListItem Text="否" Value="False"></asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="选择“是”将在帖子内容中增加随机的干扰字串，使得访问者无法复制原始内容。注意: 本功能会轻微加重服务器负担" Text="是否启用内容干扰码：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:RadioButtonList ID="rblIsOpenDisturbCode" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" Value="True"></asp:ListItem>
            <asp:ListItem Text="否" Value="False" Selected="true"></asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="是否允许用户在本版匿名发表主题和回复，只要用户组或本版块允许，用户均可使用匿名发帖功能。匿名发帖不同于游客发帖，用户需要登录后才可使用，版主和管理员可以查看真实作者" Text="是否允许匿名发帖：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:RadioButtonList ID="rblIsAllowAnonymousThread" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" Value="True"></asp:ListItem>
            <asp:ListItem Text="否" Value="False" Selected="true"></asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="选择“是”将不对本版块上传的图片附件自动添加水印，即便 全局设置中开启了此项功能。选择“否”为按照系统默认设置决定是否添加水印" Text="图片附件是否加水印：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:RadioButtonList ID="rblIsOpenWatermark" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" Value="True" Selected="true"></asp:ListItem>
            <asp:ListItem Text="否" Value="False"></asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="设置允许上传的附件扩展名，多个扩展名之间用半角逗号 ',' 分割。本设置的优先级高于用户组，留空为按照用户组允许的附件类型设定" Text="允许附件类型：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="40" id="txtAllowAccessoryType" runat="server" />
          <asp:RegularExpressionValidator runat="server" ControlToValidate="txtAllowAccessoryType"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="设置主题是否在某时间后自动关闭，禁止普通用户回复" Text="主题自动关闭：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:RadioButtonList ID="rblThreadAutoCloseType" DataTextField="Text" DataValueField="Value" OnSelectedIndexChanged="ThreadAutoCloseType_SelectedIndexChanged" RepeatDirection="Horizontal" AutoPostBack="true" runat="server"> </asp:RadioButtonList></td>
      </tr>
      <asp:PlaceHolder ID="phThreadAutoCloseType"  Visible="false" runat="server">
        <tr>
          <td align="left"><bairong:help HelpText="本设定必须在“主题自动关闭”功能打开时才生效，主题依据自动关闭的设定: 在发表后若干天、或被最后回复后若干天被自动转入关闭状态，从而使普通用户无法回复" Text="自动关闭时间：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="10" id="txtThreadAutoCloseWithDateNum" runat="server" />
            天
            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtThreadAutoCloseWithDateNum"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
        </tr>
      </asp:PlaceHolder>
    </table>
  </div>
  <div id="column4" style="display:none" class="column">
    <table width="98%"  align="center" cellpadding="4" cellspacing="3">
      <tr>
        <td colspan="3" class="tips">注：以下设置没有继承性，即仅对当前版块有效，不会对下级子版块产生影响。 </td>
      </tr>
      <tr>
        <td width="170" align="left"><bairong:help HelpText="是否强制用户发表新主题时必须选择分类" Text="主题分类控制：" runat="server" ></bairong:help></td>
        <td width="80%" colspan="2" align="left"><asp:RadioButtonList ID="rblThreadCategoryType" DataTextField="Text" DataValueField="Value"  RepeatDirection="Horizontal" runat="server"> </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="用户是否可以按照主题分类筛选浏览内容" Text="是否允许按类别浏览：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:RadioButtonList ID="rblIsReadByCategory" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" Value="True"></asp:ListItem>
            <asp:ListItem Text="否" Value="False" Selected="true"></asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="是否在主题前面显示分类的名称" Text="类别前缀：" runat="server" ></bairong:help></td>
        <td colspan="2" align="left"><asp:RadioButtonList ID="rblThreadCategoryDisplayType" DataTextField="Text" DataValueField="Value"  RepeatDirection="Horizontal" runat="server"> </asp:RadioButtonList></td>
      </tr>
      <tr class="summary-title" height="25">
        <td colspan="3">主题分类</td>
      </tr>
      <asp:Repeater ID="ChannelPermissionRepeater" runat="server">
          <itemtemplate>
            <tr  ><td colspan="2" ><asp:CheckBox ID="Permission" runat="server"></asp:CheckBox></td>
          </itemtemplate>
        </asp:Repeater>
      <asp:Repeater ID="ChannelUserGroupRepeater" runat="server">
        <itemtemplate>
          <tr style="display:none;" class="tdbg" height="25" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';">
            <td><asp:CheckBox ID="UserGroup" runat="server"></asp:CheckBox></td>
            <asp:Literal ID="UserPermissions" runat="server"></asp:Literal>
          </tr>
        </itemtemplate>
      </asp:Repeater>
    </table>
  </div>
  <div id="column5" style="display:none" class="column">
  <table width="98%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td colspan="100" class="tips">注：以下设置没有继承性，即仅对当前版块有效，不会对下级子版块产生影响。 </td>
      </tr>
      <tr>
        <td width="187" align="left"><bairong:help HelpText="访问密码" Text="访问密码：" runat="server" ></bairong:help></td>
        <td width="934" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="255" id="txtAccessPassword" runat="server"/>&nbsp;当你设置密码后，用户必须输入密码才可以访问到此版块</td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="访问用户" Text="访问用户：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox TextMode="MultiLine" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="txtAccessUserNames"
				MaxLength="200"  
                Rows="5"
                Columns="45"
				runat="server"/>&nbsp;限定只有列表中的用户可以访问本版块，多个用户以“,”分隔</td>
      </tr>
    </table>
    <table width="98%" align="center" cellpadding="2" cellspacing="2">
      <tr class="summary-title" height="25">
        <td width="200"><b>全选（会员组/被禁止的权限）</b></td>
        <asp:Repeater ID="PermissionRepeater" runat="server">
          <itemtemplate>
            <td><asp:Literal ID="ltlPermission" runat="server"></asp:Literal></td>
          </itemtemplate>
        </asp:Repeater>
      </tr>
      <tr class="summary-title" height="25">
        <td colspan="20"><b>积分用户组</b></td>
      </tr>
      <asp:Repeater ID="UserGroupCreditsRepeater" runat="server">
        <itemtemplate>
          <tr class="tdbg" height="25" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';">
            <td><asp:CheckBox ID="UserGroup" runat="server"></asp:CheckBox></td>
            <asp:Literal ID="UserPermissions" runat="server"></asp:Literal>
          </tr>
        </itemtemplate>
      </asp:Repeater>
      <asp:PlaceHolder ID="phUserGroupSpecials" Visible="false" runat="server">
      <tr class="summary-title" height="25">
        <td colspan="20"><b>特殊用户组</b></td>
      </tr>
      <asp:Repeater ID="UserGroupSpecialsRepeater" runat="server">
        <itemtemplate>
          <tr class="tdbg" height="25" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';">
            <td><asp:CheckBox ID="UserGroup" runat="server"></asp:CheckBox></td>
            <asp:Literal ID="UserPermissions" runat="server"></asp:Literal>
          </tr>
        </itemtemplate>
      </asp:Repeater>
      </asp:PlaceHolder>
      <tr class="summary-title" height="25">
        <td colspan="20"><b>系统用户组</b></td>
      </tr>
      <asp:Repeater ID="UserGroupSystemsRepeater" runat="server">
        <itemtemplate>
          <tr class="tdbg" height="25" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';">
            <td><asp:CheckBox ID="UserGroup" runat="server"></asp:CheckBox></td>
            <asp:Literal ID="UserPermissions" runat="server"></asp:Literal>
          </tr>
        </itemtemplate>
      </asp:Repeater>
    </table>
  </div>
  <table width="95%" align="center" cellspacing="0" cellpadding="0" >
    <tr>
      <td align="center"><asp:Button class="button" id="Submit" text="修 改" onclick="Submit_OnClick" runat="server"/>
        &nbsp;&nbsp;
        &nbsp;&nbsp;
        <input class="button" type="button" onClick="location.href='background_forum.aspx';return false;" value="返 回" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
