<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.Modal.UploadImage" Trace="false" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>

<html>
<head>
<title>上传图片</title>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<META http-equiv=content-type content=text/html;charset=utf-8>
<script type="text/javascript" language="javascript">
function InputChange(oInput)
{
	var disp = 0;
	var s = oInput.value;
	var ext;
	if (s.length<5)
		return;
	ext = s.substr(s.length-3,3).toLowerCase();
	if (ext=="jpg" || ext=="jpeg" || ext=="gif" || ext=="bmp" || ext=="png")
	{
		document.getElementById('preview').src = s;
	}else{
		document.getElementById('preview').src = "../../sitefiles/bairong/Icons/empty.gif";
	}
}
function selectImage(textBoxUrl, imageUrl)
{
	window.parent.document.getElementById('<%=Request.QueryString["TextBoxClientID"]%>').value = textBoxUrl;
	window.parent.document.getElementById('preview_<%=Request.QueryString["TextBoxClientID"]%>').src = imageUrl;
	window.parent.hidePopWin();
}
</script>
<%=Scripting%>
<bairong:Code type="Prototype" runat="server" />
</head>
<body <%=GetLoadScript()%>>
<bairong:Message runat="server"></bairong:Message>
<form id="MyForm" enctype="multipart/form-data" method="post" runat="server">

<table cellpadding="3" width="95%" align="center">
	<tr><td align="center">
	   <IMG class="preview" src="../../sitefiles/bairong/Icons/empty.gif" alt=图片预览 name="preview" id=preview>
	</td> </tr>
<tr><td align="center" valign="top" >
		<table align="center" width="95%">
		<tr><td width="120">
		<bairong:help HelpText="选择需要上传的图片" Text="选择上传的图片：" runat="server" ></bairong:help>
		</td>
		  <td align="left"><input type=file  id=myFile size="45" runat="server"/> 
		<asp:RequiredFieldValidator ControlToValidate="myFile" ErrorMessage="*" Display="Dynamic" runat="server" /></td>
		</tr>
		<tr>
			<td colspan="2">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" id="DetialTable" runat="server">
				<tr><td colspan="2">
		<asp:CheckBox id="IsTitleImage" runat="server" Text="对标题图片生成缩略图"/>
		</td></tr>
		<tr id="IsTitleImageRow"><td colspan="2" style="padding-left:30px;">
		缩略图尺寸：<asp:DropDownList id="TitleImageSize" runat="server" >
			<asp:ListItem value="100,85">100x85</asp:ListItem>
			<asp:ListItem value="120,90" Selected="true">120x90</asp:ListItem>
			<asp:ListItem value="160,120">160x120</asp:ListItem>
			<asp:ListItem value="200,150">200x150</asp:ListItem>
			<asp:ListItem value="0">自定义</asp:ListItem>
		</asp:DropDownList>
			<span id="TitleImageSpan" style="display:none;">
			宽<asp:TextBox ID="TitleImageWidth" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="5" MaxLength="50" runat="server"></asp:TextBox>
			<asp:RegularExpressionValidator
				ControlToValidate="TitleImageWidth"
				ValidationExpression="\d+"
				Display="Dynamic"
				ErrorMessage=" *"
				runat="server"/>
			高<asp:TextBox ID="TitleImageHeight" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="5" MaxLength="50" runat="server"></asp:TextBox>
			<asp:RegularExpressionValidator
				ControlToValidate="TitleImageHeight"
				ValidationExpression="\d+"
				Display="Dynamic"
				ErrorMessage=" *"
				runat="server"/>
			</span>
		</td></tr>
		<tr><td colspan="2">
		<asp:CheckBox id="ShowImage" runat="server" Checked="true" Text="将上传的图片显示在内容编辑框中"/>
		</td></tr>
		<tr id="SmallImageRow"><td colspan="2" >
		<asp:CheckBox id="IsSmallImage" runat="server" Text="在内容编辑器中显示缩略图并链接到原图"/>
		</td></tr>
		<tr id="IsSmallImageRow"><td colspan="2" style="padding-left:30px;">
		缩略图尺寸：<asp:DropDownList id="SmallImageSize"
			runat="server" >
			<asp:ListItem value="800,600">800x600</asp:ListItem>
			<asp:ListItem value="640,480">640x480</asp:ListItem>
			<asp:ListItem value="480,360" Selected="true">480x360</asp:ListItem>
			<asp:ListItem value="340,270">340x270</asp:ListItem>
			<asp:ListItem value="240,180">240x180</asp:ListItem>
			<asp:ListItem value="120,90">120x90</asp:ListItem>
			<asp:ListItem value="0">自定义</asp:ListItem>
		</asp:DropDownList>
		<span id="SmallImageSpan" style="display:none;">
			宽<asp:TextBox ID="SmallImageWidth" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="5" MaxLength="50" runat="server"></asp:TextBox>
			<asp:RegularExpressionValidator
				ControlToValidate="SmallImageWidth"
				ValidationExpression="\d+"
				Display="Dynamic"
				ErrorMessage=" *"
				runat="server"/>
			高<asp:TextBox ID="SmallImageHeight" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="5" MaxLength="50" runat="server"></asp:TextBox>
			<asp:RegularExpressionValidator
				ControlToValidate="SmallImageHeight"
				ValidationExpression="\d+"
				Display="Dynamic"
				ErrorMessage=" *"
				runat="server"/>
		</span>
</td>
		</tr>
			</table>
			</td>
		</tr>
		</table>
	</td></tr>
	<tr><td align="center">
	   <asp:Button class="button" id="Submit" text="上 传" onclick="Submit_OnClick" runat="server"/>&nbsp;&nbsp;
	   <asp:Button class="button" id="Cancel" text="取 消" runat="server" />
	</td> </tr>
	<tr>
		<td style="BORDER-TOP: #cccccc 1px dotted">&nbsp;</td>
	</tr>
	<tr>
		<TD vAlign="top">
			<strong>你知道吗？</strong>
			<UL>
				<LI style="padding:3px 0;">选择<strong>对标题图片生成缩略图</strong>时系统将生成指定尺寸的缩略图并添加到标题图片上</LI>
				<LI style="padding:3px 0;">选择<strong>将上传的图片显示在内容编辑框中</strong>时系统将把上传的图片显示在内容编辑器中，如果同时选择<strong>在内容编辑器中显示缩略图并链接到原图</strong>，系统将生成指定尺寸的缩略图并显示在内容编辑器中，当点击此缩略图时链接到原图。</LI>
			</UL>
		</TD>
	</tr>
	</table>

</form>
<script language="javascript">
function CheckBoxChange()
{
	if (document.getElementById('<%=IsTitleImage.ClientID%>').checked)
	{
		Element.show('IsTitleImageRow');
		if (Form.Element.getValue($('<%=TitleImageSize.ClientID%>')) == "0")
		{
			Element.show('TitleImageSpan');
		}else{
			Element.hide('TitleImageSpan');
		}
	}else{
		Element.hide('IsTitleImageRow');
	}
	
	if (document.getElementById('<%=ShowImage.ClientID%>').checked)
	{
		Element.show('SmallImageRow');
		Element.show('IsSmallImageRow');
	}else{
		Element.hide('SmallImageRow');
		Element.hide('IsSmallImageRow');
	}
	
	if (document.getElementById('<%=IsSmallImage.ClientID%>').checked)
	{
		Element.show('IsSmallImageRow');
		if (Form.Element.getValue($('<%=SmallImageSize.ClientID%>')) == "0")
		{
			Element.show('SmallImageSpan');
		}else{
			Element.hide('SmallImageSpan');
		}
	}else{
		Element.hide('IsSmallImageRow');
	}
}
</script>
</body>
</html>