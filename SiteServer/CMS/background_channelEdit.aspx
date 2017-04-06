<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.CMS.BackgroundPages.BackgroundChannelEdit" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>

<html>
<head runat="server">
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"/>
<bairong:Code type="JQuery" runat="server" />
<bairong:Code type="fancybox" runat="server" />
<bairong:Code type="Calendar" runat="server" />
<script language="javascript" type="text/javascript">
    function _toggleTab(no, totalNum) {
        $('#tab' + no).removeClass("tabOff").addClass("tabOn");
        $('#column' + no).show();
        for (var i = 1; i <= totalNum; i++) {
            if (i != no) {
                $('#tab' + i).removeClass("tabOn").addClass("tabOff");
                $('#column' + i).hide();
            }
        }
    }
    function _checkCol(column, className, bcheck) {
        var elements = $('#' + column + ' .' + className);
        for (var i = 0; i < elements.length; i++) {
            _checkAll(elements[i], bcheck);
        }
    }
</script>
<script type="text/javascript" language="javascript" src="../Inc/auxiliary.js"></script>
<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
<bairong:Message runat="server"></bairong:Message>
<div style="text-align:left; margin-left:20px; margin-bottom:6px;">当前操作： <asp:Literal id="literalTitle" runat="server" />栏目</div>
<div class="tab">
	<div id="tab1" onclick="_toggleTab(1,4);" class="tabOn" style="cursor:pointer">基本信息</div>
	<div id="tab2" onclick="_toggleTab(2,4);" class="tabOff" style="cursor:pointer">高级设置</div>
	<div id="tab3" onclick="_toggleTab(3,4);" class="tabOff" style="cursor:pointer">栏目权限</div>
	<div id="tab4" onclick="_toggleTab(4,4);" class="tabOff" style="cursor:pointer">内容权限</div>
	<div class="clearer"></div>
</div>
<div id="column1" class="column">		
	<table width="98%" align="center" cellpadding="3" cellspacing="3">
	<tr><td width="150" align="left">
		<bairong:help HelpText="栏目的名称" Text="栏目名称：" runat="server" ></bairong:help>
			</td>
	  <td align="left">
	  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="255" id="NodeName" runat="server"/>
		<asp:RequiredFieldValidator id="RequiredFieldValidator"
			ControlToValidate="NodeName"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>
	  </td>
	  <td width="414" rowspan="5" align="left" valign="bottom"><img src="<%=PreviewImageSrc%>" class="preview" alt=图片预览 name="preview_NavigationPicPath" id="preview_NavigationPicPath"/></td>
	</tr>
	<tr><td width="150" align="left">
		<bairong:help HelpText="唯一标识此栏目的字符串" Text="栏目索引：" runat="server" ></bairong:help>
			</td>
	  <td align="left">
	  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="255" id="NodeIndexName" runat="server"/>
		<asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="NodeIndexName"
			ValidationExpression="[^']+"
			ErrorMessage="*"
			Display="Dynamic" />	  </td>
	</tr>
     <tr >
        <td align="left"><bairong:help HelpText="设置栏目的内容模型" Text="内容模型：" runat="server" ></bairong:help>
        </td>
        <td align="left"><asp:DropDownList id="ContentModelID" runat="server"> </asp:DropDownList>
        </td>
      </tr>
	<tr id="FilePathRow" runat="server"><td width="150" align="left">
		<bairong:help HelpText="生成栏目页的文件路径" Text="生成页面路径：" runat="server" ></bairong:help>
			</td>
	  <td align="left">
	  	  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="200" id="FilePath" runat="server"/>
		<asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="FilePath"
			ValidationExpression="[^']+"
			ErrorMessage="*"
			Display="Dynamic" />	  </td>
	</tr>
	<tr><td width="150" align="left">
		<bairong:help HelpText="系统生成文件时采取的栏目页文件名规则" Text="栏目页面命名规则：" runat="server" ></bairong:help>
			</td>
	  <td align="left">
	  	  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="38" MaxLength="200" id="ChannelFilePathRule" runat="server"/>
		<asp:HyperLink ID="CreateChannelRule" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">构造</asp:HyperLink>
		</td>
	</tr>
	<tr><td width="150" align="left">
		<bairong:help HelpText="系统生成文件时采取的内容页文件名规则" Text="内容页面命名规则：" runat="server" ></bairong:help>
			</td>
	  <td align="left">
	  	  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="38" MaxLength="200" id="ContentFilePathRule" runat="server"/>
		<asp:HyperLink ID="CreateContentRule" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">构造</asp:HyperLink>
		</td>
	</tr>
	<tr><td width="150" align="left">
		<bairong:help HelpText="可选择此栏目的图片" Text="栏目图片地址：" runat="server" ></bairong:help></td><td width="514" colspan="2" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="NavigationPicPath"
				MaxLength="100"
				size="45"
				runat="server"/><nobr>
	  <asp:HyperLink ID="SelectImage" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">选择</asp:HyperLink> <asp:HyperLink ID="UploadImage" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">上传</asp:HyperLink></nobr></td>
	</tr>
	<tr align="left">
		<td colspan="3"><site:TextEditorControl id="Content" runat="server"></site:TextEditorControl></td>
	  </tr>
    <tr>
				<td align="left">
			  <bairong:help HelpText="为搜索引擎提供的关键字列表" Text="关键字列表：" runat="server" ></bairong:help>			  </td>
			  <td colspan="2" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Rows="3" Width="350" MaxLength="100" TextMode="MultiLine" id="Keywords" runat="server" />
					<asp:RegularExpressionValidator runat="server" ControlToValidate="Keywords"
						ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />				
					<=100 <br/>
				注意：各关键词间用英文逗号“,”隔开。</td>
			</tr>
			<tr>
				<td align="left">
			  <bairong:help HelpText="用来告诉搜索引擎网页的主要内容。" Text="页面描述：" runat="server" ></bairong:help>			  </td>
			  <td colspan="2" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="350" Rows="4" MaxLength="200" TextMode="MultiLine" id="Description" runat="server" />
					<asp:RegularExpressionValidator runat="server" ControlToValidate="Description"
						ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />				
					<=200</td>
			</tr>
	<site:ChannelAuxiliaryControl ID="ControlForAuxiliary" runat="server"/>
	<tr><td width="150" align="left">
		<bairong:help HelpText="本栏目所属的栏目组" Text="栏目组：" runat="server" ></bairong:help>
			</td>
	  <td colspan="2" align="left">
	  <asp:CheckBoxList id="NodeGroupNameCollection" DataTextField="NodeGroupName" DataValueField="NodeGroupName"
			RepeatDirection="Horizontal" RepeatLayout="Flow"
			runat="server"/>	  </td>
	</tr>
	</table>	
</div>

<div id="column2" style="display:none" class="column">		
<table width="98%" align="center" cellpadding="3" cellspacing="3">
	<tr id="LinkURLRow" runat="server"><td width="150" align="left">
		<bairong:help HelpText="当链接类型为与栏目及内容无关时便链接到此地址" Text="外部链接：" runat="server" ></bairong:help>
			</td>
	  <td colspan="2" align="left">
	  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="200" id="LinkUrl" runat="server"/>
		<asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="LinkUrl"
			ValidationExpression="[^']+"
			ErrorMessage="*"
			Display="Dynamic" />	  </td>
	</tr>
	<tr id="LinkTypeRow" runat="server"><td width="150" align="left">
		<bairong:help HelpText="指示此栏目的链接与栏目下子栏目及内容的关系" Text="链接类型：" runat="server" ></bairong:help>
			</td>
	  <td colspan="2" align="left">
		  <asp:DropDownList id="LinkType" runat="server">		  </asp:DropDownList>	  </td>
	</tr>
	<tr id="ChannelTemplateIDRow" runat="server"><td width="150" align="left">
		<bairong:help HelpText="此栏目所用到的模版" Text="栏目模版：" runat="server" ></bairong:help>
			</td>
	  <td colspan="2" align="left">
		  <asp:DropDownList id="ChannelTemplateID" DataTextField="TemplateName" DataValueField="TemplateID" runat="server">		  </asp:DropDownList>	  </td>
	</tr>
	<tr ><td width="150" align="left">
		<bairong:help HelpText="此栏目内的内容所用到的内容模版" Text="本栏目的内容模版：" runat="server" ></bairong:help>
			</td>
	  <td colspan="2" align="left">
	  	  <asp:DropDownList id="ContentTemplateID" DataTextField="TemplateName" DataValueField="TemplateID" runat="server">		  </asp:DropDownList>	  </td>
	</tr>
	<tr ><td width="150" align="left">
		<bairong:help HelpText="是否可以添加子栏目" Text="可以添加栏目：" runat="server" ></bairong:help>
			</td>
	  <td width="114" align="left" style="width:120px;">
	  	<asp:RadioButtonList id="IsChannelAddable"
			RepeatDirection="Horizontal"
			runat="server">
			<asp:ListItem Text="是" Selected="True"/>
		<asp:ListItem Text="否" />		</asp:RadioButtonList></td>
	  <td width="414" rowspan="3" align="left"></td>
	</tr>
	<tr ><td width="150" align="left">
		<bairong:help HelpText="指此栏目是否能够添加内容" Text="可以添加内容：" runat="server" ></bairong:help>
			</td>
	  <td align="left"><asp:RadioButtonList id="IsContentAddable"
			RepeatDirection="Horizontal"
			runat="server">
			<asp:ListItem Text="是" Selected="True"/>
			<asp:ListItem Text="否" />
		</asp:RadioButtonList>		</td>
	  </tr>
	</table>
</div>

<div id="column3" style="display:none" class="column">		
<table width="98%" align="center" cellpadding="4" cellspacing="3">
	<tr>
		<TD colspan="100">注：不选择默认使用会员组栏目页面权限，选择后栏目权限设置优先于会员组栏目页面权限设置。</TD>
	</tr>
	<tr class="summary-title" height="25">
		<td><b>全选（会员组/被禁止的权限）</b></td>
		<asp:Repeater ID="ChannelPermissionRepeater" runat="server">
			<itemtemplate>
				<td><asp:CheckBox ID="Permission" runat="server"></asp:CheckBox></td>
			</itemtemplate>
		</asp:Repeater>
	</tr>
	<asp:Repeater ID="ChannelUserGroupRepeater" runat="server">
		<itemtemplate>
			<tr class="tdbg" height="25" onmouseover="this.className='tdbg-dark';" onmouseout="this.className='tdbg';">
				<td><asp:CheckBox ID="UserGroup" runat="server"></asp:CheckBox></td>
				<asp:Literal ID="UserPermissions" runat="server"></asp:Literal>
			</tr>
		</itemtemplate>
	</asp:Repeater>
</table>
</div>

<div id="column4" style="display:none" class="column">		
<table width="98%" align="center" cellpadding="4" cellspacing="3">
	<tr>
		<TD colspan="100">注：不选择默认使用会员组内容页面权限，选择后内容权限设置优先于会员组内容页面权限设置。</TD>
	</tr>
	<tr class="summary-title" height="25">
		<td><b>全选（会员组/被禁止的权限）</b></td>
		<asp:Repeater ID="ContentPermissionRepeater" runat="server">
			<itemtemplate>
				<td><asp:CheckBox ID="Permission" runat="server"></asp:CheckBox></td>
			</itemtemplate>
		</asp:Repeater>
	</tr>
	<asp:Repeater ID="ContentUserGroupRepeater" runat="server">
		<itemtemplate>
			<tr class="tdbg" height="25" onmouseover="this.className='tdbg-dark';" onmouseout="this.className='tdbg';">
				<td><asp:CheckBox ID="UserGroup" runat="server"></asp:CheckBox></td>
				<asp:Literal ID="UserPermissions" runat="server"></asp:Literal>
			</tr>
		</itemtemplate>
	</asp:Repeater>
</table>
</div>
  
<table width="95%" align="center" cellspacing="0" cellpadding="0" >
<tr>
<td align="center">
	   <asp:Button class="button" id="Submit" text="修 改" onclick="Submit_OnClick" runat="server"/>&nbsp;&nbsp;
	    &nbsp;&nbsp;
       <input class="button" type="button" onclick="location.href='<%=ReturnUrl%>';return false;" value="返 回" />
</td>
</tr>
</table>
</form>
</body>
</html>
