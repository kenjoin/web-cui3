<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.CMS.BackgroundPages.Modal.ChannelEdit" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>

<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>快速修改栏目</title>
<bairong:Code type="Calendar" runat="server" />
<bairong:Code type="fancybox" runat="server" />
<script language="javascript" src="../Inc/auxiliary.js"></script>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD><body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
<bairong:Message runat="server"></bairong:Message>
  <table width="98%" align="center" cellpadding="2" cellspacing="2">
    <tr id="NodeNameRow" runat="server">
      <td width="120" align="left"><bairong:help HelpText="栏目的名称" Text="栏目名称：" runat="server" ></bairong:help>      </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="255" id="NodeName" runat="server"/>
        <asp:RequiredFieldValidator id="RequiredFieldValidator"
			ControlToValidate="NodeName"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>      </td>
    </tr>
    <tr id="NodeIndexNameRow" runat="server">
      <td align="left"><bairong:help HelpText="唯一标识此栏目的字符串" Text="栏目索引：" runat="server" ></bairong:help>      </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="255" id="NodeIndexName" runat="server"/>
        <asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="NodeIndexName"
			ValidationExpression="[^']+"
			ErrorMessage="*"
			Display="Dynamic" />      </td>
    </tr>
    <tr id="FilePathRow" runat="server">
      <td align="left"><bairong:help HelpText="生成栏目页的文件路径" Text="生成页面路径：" runat="server" ></bairong:help>      </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="200" id="FilePath" runat="server"/>
        <asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="FilePath"
			ValidationExpression="[^']+"
			ErrorMessage="*"
			Display="Dynamic" />      </td>
    </tr>
    <tr id="ChannelFilePathRuleRow" runat="server">
      <td align="left"><bairong:help HelpText="系统生成文件时采取的栏目页文件名规则" Text="栏目页面命名规则：" runat="server" ></bairong:help>      </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="38" MaxLength="200" id="ChannelFilePathRule" runat="server"/>
        <asp:HyperLink ID="CreateChannelRule" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">构造</asp:HyperLink>      </td>
    </tr>
    <tr id="ContentFilePathRuleRow" runat="server">
      <td align="left"><bairong:help HelpText="系统生成文件时采取的内容页文件名规则" Text="内容页面命名规则：" runat="server" ></bairong:help>      </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="38" MaxLength="200" id="ContentFilePathRule" runat="server"/>
        <asp:HyperLink ID="CreateContentRule" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">构造</asp:HyperLink>      </td>
    </tr>
    <tr id="NavigationPicPathRow" runat="server">
      <td align="left"><bairong:help HelpText="可选择此栏目的图片" Text="栏目图片地址：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" ID="NavigationPicPath"
				MaxLength="100"
				size="45"
				runat="server"/>
        <nobr>
        <asp:HyperLink ID="SelectImage" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">选择</asp:HyperLink>
        <asp:HyperLink ID="UploadImage" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">上传</asp:HyperLink>
        <asp:HyperLink ID="preview_NavigationPicPath" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">预览</asp:HyperLink>
<script type="text/javascript"> 
$(document).ready(function() {
	$("#preview_NavigationPicPath").fancybox();
});
</script>
        </nobr></td>
    </tr>
    <tr align="left" id="ContentRow" runat="server">
      <td colspan="2" align="center">
      <site:TextEditorControl id="Content" runat="server"></site:TextEditorControl>
      </td>
    </tr>
    <tr>
        <td align="left">
      <bairong:help HelpText="为搜索引擎提供的关键字列表" Text="关键字列表：" runat="server" ></bairong:help>			  </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Rows="3" Width="350" MaxLength="100" TextMode="MultiLine" id="Keywords" runat="server" />
            <asp:RegularExpressionValidator runat="server" ControlToValidate="Keywords"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />				
            <=100 <br>
        注意：各关键词间用英文逗号“,”隔开。</td>
    </tr>
    <tr>
        <td align="left">
      <bairong:help HelpText="用来告诉搜索引擎网页的主要内容。" Text="页面描述：" runat="server" ></bairong:help>			  </td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="350" Rows="4" MaxLength="200" TextMode="MultiLine" id="Description" runat="server" />
            <asp:RegularExpressionValidator runat="server" ControlToValidate="Description"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />				
            <=200</td>
    </tr>
    <site:ChannelAuxiliaryControl ID="ControlForAuxiliary" runat="server"/>
	<tr id="LinkUrlRow" runat="server"><td align="left">
		<bairong:help HelpText="当链接类型为与栏目及内容无关时便链接到此地址" Text="外部链接：" runat="server" ></bairong:help>
			</td>
	  <td align="left">
	  <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="200" id="LinkUrl" runat="server"/>
		<asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="LinkUrl"
			ValidationExpression="[^']+"
			ErrorMessage="*"
			Display="Dynamic" />	  </td>
	</tr>
	<tr id="LinkTypeRow" runat="server"><td align="left">
		<bairong:help HelpText="指示此栏目的链接与栏目下子栏目及内容的关系" Text="链接类型：" runat="server" ></bairong:help>
			</td>
	  <td align="left">
		  <asp:DropDownList id="LinkType" runat="server">		  </asp:DropDownList>	  </td>
	</tr>
	<tr id="ChannelTemplateIDRow" runat="server"><td align="left">
		<bairong:help HelpText="此栏目所用到的模版" Text="栏目模版：" runat="server" ></bairong:help>
			</td>
	  <td align="left">
		  <asp:DropDownList id="ChannelTemplateID" DataTextField="TemplateName" DataValueField="TemplateID" runat="server">		  </asp:DropDownList>	  </td>
	</tr>
	<tr id="ContentTemplateIDRow" runat="server"><td align="left">
		<bairong:help HelpText="此栏目内的内容所用到的内容模版" Text="本栏目的内容模版：" runat="server" ></bairong:help>
			</td>
	  <td align="left">
	  	  <asp:DropDownList id="ContentTemplateID" DataTextField="TemplateName" DataValueField="TemplateID" runat="server">		  </asp:DropDownList>	  </td>
	</tr>
	<tr id="NodeGroupNameCollectionRow" runat="server">
      <td align="left"><bairong:help HelpText="本栏目所属的栏目组" Text="栏目组：" runat="server" ></bairong:help>      </td>
      <td align="left"><asp:CheckBoxList id="NodeGroupNameCollection" DataTextField="NodeGroupName" DataValueField="NodeGroupName"
			RepeatDirection="Horizontal" RepeatLayout="Flow"
			runat="server"/>      </td>
    </tr>
	<tr>
	  <td colspan="2" align="center">
		<asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />&nbsp;&nbsp;
		<asp:Button class="button" id="Cancel" text="取 消" runat="server" />	  </td>
	</tr>
  </table>
</form>
</body>
</HTML>
