<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.B2C.BackgroundPages.BackgroundChannelAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>

<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8"/>
<bairong:Code type="Calendar" runat="server" />
<bairong:Code type="fancybox" runat="server" />
<script language="javascript" src="../Inc/auxiliary.js"></script>
</head><body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <DIV class="column">
    <div class="columntitle">添加栏目&nbsp;<a href="http://help.siteserver.cn/manage/188/732.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看添加栏目帮助" align="absmiddle"></a></div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="165" align="left"><bairong:help HelpText="此栏目的上级栏目" Text="父栏目：" runat="server" ></bairong:help>
        </td>
        <td colspan="2" align="left"><asp:DropDownList id="ParentNodeID" AutoPostBack="true" OnSelectedIndexChanged="ParentNodeID_SelectedIndexChanged" runat="server"></asp:DropDownList>
        </td>
      </tr>
      <tr>
        <td width="165" align="left"><bairong:help HelpText="添加的栏目的名称" Text="栏目名称：" runat="server" ></bairong:help>
        </td>
        <td colspan="2" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="255" id="NodeName" runat="server"/>
          <asp:RequiredFieldValidator id="RequiredFieldValidator"
			ControlToValidate="NodeName"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>
        </td>
      </tr>
      <tr>
        <td width="165" align="left"><bairong:help HelpText="唯一标识此栏目的字符串" Text="栏目索引：" runat="server" ></bairong:help>
        </td>
        <td colspan="2" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="255" id="NodeIndexName" runat="server"/>
          <asp:RegularExpressionValidator id="RegularExpressionValidator1"
			runat="server"
			ControlToValidate="NodeIndexName"
			ValidationExpression="[^']+"
			ErrorMessage="*"
			Display="Dynamic" />
        </td>
      </tr>
      <tr >
        <td align="left"><bairong:help ID="Help1" HelpText="设置栏目的内容模型" Text="内容模型：" runat="server" ></bairong:help>
        </td>
        <td colspan="2" align="left"><asp:DropDownList id="ContentModelID" runat="server"> </asp:DropDownList>
        </td>
      </tr>
      <tr>
        <td width="165" align="left"><bairong:help HelpText="当链接类型为与栏目及内容无关时便链接到此地址" Text="栏目链接：" runat="server" ></bairong:help>
        </td>
        <td colspan="2" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="200" id="LinkURL" runat="server"/>
          <asp:RegularExpressionValidator id="RegularExpressionValidator11"
			runat="server"
			ControlToValidate="LinkURL"
			ValidationExpression="[^']+"
			ErrorMessage="*"
			Display="Dynamic" />
        </td>
      </tr>
      <tr >
        <td width="165" align="left"><bairong:help HelpText="指示此栏目的链接与栏目下子栏目及内容的关系" Text="链接类型：" runat="server" ></bairong:help>
        </td>
        <td colspan="2" align="left"><asp:DropDownList id="LinkType" runat="server"> </asp:DropDownList>
        </td>
      </tr>
      <tr >
        <td width="165" align="left"><bairong:help HelpText="指此栏目页在前台显示选用的模板" Text="栏目模板：" runat="server" ></bairong:help>
        </td>
        <td colspan="2" align="left"><asp:DropDownList id="ChannelTemplateID" DataTextField="TemplateName" DataValueField="TemplateID" runat="server"> </asp:DropDownList>
        </td>
      </tr>
      <tr >
        <td width="165" height="32" align="left"><bairong:help HelpText="指此栏目下内容页在前台显示选用的模板" Text="本栏目内容模板：" runat="server" ></bairong:help>
        </td>
        <td colspan="2" align="left"><asp:DropDownList id="ContentTemplateID" DataTextField="TemplateName" DataValueField="TemplateID" runat="server"> </asp:DropDownList>
        </td>
      </tr>
      <tr >
        <td width="165" align="left"><bairong:help HelpText="生成栏目页的文件路径" Text="生成页面路径：" runat="server" ></bairong:help>
        </td>
        <td colspan="2" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="200" id="FilePath" runat="server"/>
          <asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="FilePath"
			ValidationExpression="[^']+"
			ErrorMessage="*"
			Display="Dynamic" />
        </td>
      </tr>
      <tr>
        <td width="165" align="left"><bairong:help HelpText="系统生成文件时采取的栏目页文件名规则" Text="栏目页面命名规则：" runat="server" ></bairong:help></td>
        <td align="left"><nobr>
          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="38" MaxLength="200" id="ChannelFilePathRule" runat="server"/>
          <asp:HyperLink ID="CreateChannelRule" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">构造</asp:HyperLink>
          </nobr> </td>
      </tr>
      <tr>
        <td width="165" align="left"><bairong:help HelpText="系统生成文件时采取的内容页文件名规则" Text="内容页面命名规则：" runat="server" ></bairong:help>
        </td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="38" MaxLength="200" id="ContentFilePathRule" runat="server"/>
          <asp:HyperLink ID="CreateContentRule" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">构造</asp:HyperLink>
        </td>
      </tr>
      <tr >
        <td width="165" align="left"><bairong:help HelpText="是否可以添加子栏目" Text="可以添加栏目：" runat="server" ></bairong:help>
        </td>
        <td align="left"><asp:RadioButtonList id="IsChannelAddable"
			RepeatDirection="Horizontal"
			runat="server">
            <asp:ListItem Text="是" Selected="True"/>
            <asp:ListItem Text="否" />
          </asp:RadioButtonList>
        </td>
        <td rowspan="4" align="left" width="320">&nbsp;<IMG class="preview" src="<%=PreviewImageSrc%>" alt=图片预览 name="preview_NavigationPicPath" id="preview_NavigationPicPath"></td>
      </tr>
      <tr >
        <td width="165" align="left"><bairong:help HelpText="指此栏目是否能够添加内容" Text="可以添加内容：" runat="server" ></bairong:help>
        </td>
        <td align="left"><asp:RadioButtonList id="IsContentAddable"
			RepeatDirection="Horizontal"
			runat="server">
            <asp:ListItem Text="是" Selected="True"/>
            <asp:ListItem Text="否" />
          </asp:RadioButtonList>
        </td>
      </tr>
      <tr >
        <td width="165" align="left"><bairong:help HelpText="可选择此栏目的图片" Text="栏目图片地址：" runat="server" ></bairong:help>
        </td>
        <td colspan="2" align="left"><nobr>
          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="NavigationPicPath"
				MaxLength="100"
				Size="45"
				runat="server"/>
          <asp:HyperLink ID="SelectImage" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">选择</asp:HyperLink>
          <asp:HyperLink ID="UploadImage" NavigateUrl="javascript:undefined;" runat="server" style="text-decoration:underline">上传</asp:HyperLink>
          </nobr> </td>
      </tr>
      <tr align="left">
        <td colspan="3"><site:TextEditorControl id="Content" runat="server"></site:TextEditorControl>
        </td>
      </tr>
      <tr>
        <td align="left">
      <bairong:help HelpText="为搜索引擎提供的关键字列表" Text="关键字列表：" runat="server" ></bairong:help>			  </td>
      <td colspan="2" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Rows="3" Width="350" MaxLength="100" TextMode="MultiLine" id="Keywords" runat="server" />
            <asp:RegularExpressionValidator runat="server" ControlToValidate="Keywords"
                ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" />				
            <=100 <br>
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
      <tr >
        <td width="165" align="left"><bairong:help HelpText="本栏目所属的栏目组" Text="栏目组：" runat="server" ></bairong:help>
        </td>
        <td colspan="2" align="left"><asp:CheckBoxList id="NodeGroupNameCollection" DataTextField="NodeGroupName" DataValueField="NodeGroupName"
			RepeatDirection="Horizontal" RepeatLayout="Flow"
			runat="server"/>
        </td>
      </tr>
    </table>
  </DIV>
  <table width="95%" align="center" cellspacing="0" cellpadding="0" >
    <tr>
      <td height="26" align="center"><asp:Button class="button" id="Submit" text="添 加" onclick="Submit_OnClick" runat="server"/>
        &nbsp;&nbsp;
        <input class="button" type="button" onClick="location.href='<%=ReturnUrl%>';return false;" value="返 回" />
      </td>
    </tr>
  </table>
</form>
</body>
</html>
