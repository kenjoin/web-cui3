﻿<%@ Page Language="C#" Inherits="SiteServer.Ask.BackgroundPages.BackgroundAdAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<script language="javascript" src="../Inc/auxiliary.js"></script>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD><body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">
      <asp:Literal id="literalTitle" runat="server" />固定广告</div>
      <div class="tips"><asp:Literal ID="ltlTips" runat="server"></asp:Literal></div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="184" align="left"><bairong:help HelpText="广告名称" Text="广告名称：" runat="server" ></bairong:help>
        </td>
        <td colspan="3" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="50" id="AdName" runat="server"/>
          <asp:RequiredFieldValidator
									ControlToValidate="AdName"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/>
        </td>
      </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="展现方式" Text="展现方式：" runat="server" ></bairong:help>
        </td>
        <td colspan="3" align="left"><asp:DropDownList ID="AdType" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ReFresh"></asp:DropDownList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="是否生效" Text="是否生效：" runat="server" ></bairong:help>
        </td>
        <td colspan="3" align="left"><asp:RadioButtonList ID="IsEnabled" RepeatDirection="Horizontal" runat="server"> </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="此广告是否存在期限" Text="是否存在时间限制：" runat="server" ></bairong:help>
        </td>
        <td colspan="3" align="left"><asp:CheckBox id="IsDateLimited" AutoPostBack="true" OnCheckedChanged="ReFresh" Text="存在时间限制" runat="server"> </asp:CheckBox>
        </td>
      </tr>
      <tr id="StartDateRow" runat="server">
        <td width="184" align="left"><bairong:help HelpText="显示此广告的开始时间" Text="开始时间：" runat="server" ></bairong:help>
        </td>
        <td colspan="3" align="left"><bairong:DateTimeTextBox id="StartDate" class="colorblur" Columns="30" runat="server" />
        </td>
      </tr>
      <tr id="EndDateRow" runat="server">
        <td width="184" align="left"><bairong:help HelpText="取消此广告的结束时间" Text="结束时间：" runat="server" ></bairong:help>
        </td>
        <td colspan="3" align="left"><bairong:DateTimeTextBox id="EndDate" class="colorblur" Columns="30" runat="server" />
        </td>
      </tr>
      <asp:PlaceHolder ID="phCode" runat="server">
      <tr>
        <td align="left"><bairong:help HelpText="广告内容" Text="广告内容：" runat="server" ></bairong:help>
        </td>
        <td colspan="3" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" style="height:150px; width:70%" TextMode="MultiLine" id="Code" runat="server" Wrap="false" />
        <asp:RequiredFieldValidator
									ControlToValidate="Code"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/></td>
      </tr>
      </asp:PlaceHolder>
      <asp:PlaceHolder ID="phText" runat="server" Visible="false">
      <tr>
        <td width="184" align="left"><bairong:help HelpText="文字内容" Text="文字内容：" runat="server" ></bairong:help>
        </td>
        <td colspan="3" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="65" MaxLength="50" id="TextWord" runat="server"/>
          <asp:RequiredFieldValidator
									ControlToValidate="TextWord"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/>
        </td>
      </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="文字链接" Text="文字链接：" runat="server" ></bairong:help>
        </td>
        <td colspan="3" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="65" MaxLength="50" id="TextLink" runat="server"/>
          <asp:RequiredFieldValidator
									ControlToValidate="TextLink"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/>
        </td>
      </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="文字颜色" Text="文字颜色：" runat="server" ></bairong:help>
        </td>
        <td width="274" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="TextColor" runat="server"/></td>
        <td align="left" width="114"><bairong:help HelpText="字体大小" Text="字体大小：" runat="server" ></bairong:help>
        </td>
        <td width="654" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="TextFontSize" runat="server"/>
        <asp:RegularExpressionValidator
					ControlToValidate="TextFontSize"
					ValidationExpression="\d+"
					Display="Dynamic"
					ErrorMessage="字体大小必须为数字"
					runat="server"/>
        </td>
      </tr>
      </asp:PlaceHolder>
      <asp:PlaceHolder ID="phImage" runat="server" Visible="false">
      <tr>
        <td width="184" align="left"><bairong:help HelpText="图片地址" Text="图片地址：" runat="server" ></bairong:help>
        </td>
        <td colspan="3" align="left">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="400"><input id="ImageUrlUploader" style="display:none; width:345px;" type="file" class="colorblur" runat="server" />
                                    <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="65" MaxLength="50" id="ImageUrl" runat="server" style="display:" /></td>
    <td rowspan="2" style="padding-left:10px;"><IMG class="preview" src='<%=GetPreviewImageSrc("Image")%>' alt=图片预览 align="absmiddle" name="preview_ImageUrl" width=88 height=70 id="preview_ImageUrl"></td>
  </tr>
  <tr>
    <td valign="top"><a id="imageUrlLink1" style="" href="javascript:;" onClick="$('#imageUrlLink2')[0].style.fontWeight = '';this.style.fontWeight = 'bold';$('#ImageUrlUploader').show();$('#ImageUrl').hide();">上传图片</a>&nbsp;
                                    <a id="imageUrlLink2" style="font-weight:bold" href="javascript:;" onClick="$('#imageUrlLink1')[0].style.fontWeight = '';this.style.fontWeight = 'bold';$('#ImageUrlUploader').hide();$('#ImageUrl').show();">输入 URL</a></td>
    </tr>
</table>

        </td>
      </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="广告链接" Text="广告链接：" runat="server" ></bairong:help>
        </td>
        <td colspan="3" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="65" MaxLength="50" id="ImageLink" runat="server"/>
          <asp:RequiredFieldValidator
									ControlToValidate="ImageLink"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/>
        </td>
      </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="图片尺寸" Text="图片尺寸：" runat="server" ></bairong:help>
        </td>
        <td colspan="3" align="left">宽度：
          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" id="ImageWidth" runat="server"/>
          <asp:RegularExpressionValidator
					ControlToValidate="ImageWidth"
					ValidationExpression="\d+"
					Display="Dynamic"
					ErrorMessage="宽度必须为数字"
					runat="server"/>
          高度：
          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" id="ImageHeight" runat="server"/>        
          <asp:RegularExpressionValidator
					ControlToValidate="ImageHeight"
					ValidationExpression="\d+"
					Display="Dynamic"
					ErrorMessage="高度必须为数字"
					runat="server"/>（0代表不限制尺寸）       </td>
        </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="图片替换文字" Text="图片替换文字：" runat="server" ></bairong:help>
        </td>
        <td colspan="3" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="65" MaxLength="50" id="ImageAlt" runat="server"/></td>
      </tr>
      </asp:PlaceHolder>
      <asp:PlaceHolder ID="phFlash" runat="server" Visible="false">
      <tr>
        <td width="184" align="left"><bairong:help HelpText="Flash地址" Text="Flash地址：" runat="server" ></bairong:help>
        </td>
        <td colspan="3" align="left"><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="400"><input id="FlashUrlUploader" style="display:none; width:345px;" type="file" class="colorblur" runat="server" />
                                    <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="65" MaxLength="50" id="FlashUrl" runat="server" style="display:" /></td>
    <td rowspan="2" style="padding-left:10px;"><IMG class="preview" src='<%=GetPreviewImageSrc("Flash")%>' alt=图片预览 align="absmiddle" name="preview_FlashUrl" width=88 height=70 id="preview_FlashUrl"></td>
  </tr>
  <tr>
    <td valign="top"><a id="flashUrlLink1" style="" href="javascript:;" onClick="$('#flashUrlLink2')[0].style.fontWeight = '';this.style.fontWeight = 'bold';$('#FlashUrlUploader').show();$('#FlashUrl').hide();">上传Flash</a>&nbsp;
                                    <a id="flashUrlLink2" style="font-weight:bold" href="javascript:;" onClick="$('#flashUrlLink1')[0].style.fontWeight = '';this.style.fontWeight = 'bold';$('#FlashUrlUploader').hide();$('#FlashUrl').show();">输入 URL</a></td>
    </tr>
</table></td>
      </tr>
      <tr>
        <td width="184" align="left"><bairong:help HelpText="宽度" Text="宽度：" runat="server" ></bairong:help>
        </td>
        <td colspan="3" align="left">宽度：
          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" id="FlashWidth" runat="server"/>
          <asp:RegularExpressionValidator
					ControlToValidate="FlashWidth"
					ValidationExpression="\d+"
					Display="Dynamic"
					ErrorMessage="宽度必须为数字"
					runat="server"/>
          高度：
          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" id="FlashHeight" runat="server"/>        
          <asp:RegularExpressionValidator
					ControlToValidate="FlashHeight"
					ValidationExpression="\d+"
					Display="Dynamic"
					ErrorMessage="高度必须为数字"
					runat="server"/>（0代表不限制尺寸）       </td>
        </tr>
      </asp:PlaceHolder>
      <tr>
        <td colspan="4" align="center"><asp:Button class="button" id="Submit" text="保 存" onclick="Submit_OnClick" runat="server" />
          &nbsp;&nbsp;
          <input class="button" type="button" onClick="location.href='background_ad.aspx?adLocation=<%=Request.QueryString["adLocation"]%>';return false;" value="返 回" />
        </td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
