﻿<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.ConsolePublishmentSystemAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="Jquery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<title>新建站点向导</title>
<script language="javascript">
function selectSiteTemplate()
{
	if (!isNull(_get('choose')))
	{
		var item = $(":radio:checked");
		if(item.length==0){
			if (!isNull(_get('choose').length) && _get('choose').length > 1)
			{
				_get('choose')[0].checked = true;
				document.getElementById('SiteTemplateDir').value=_get('choose')[0].value;
			}
			else
			{
				_get('choose').checked = true;
				document.getElementById('SiteTemplateDir').value=_get('choose').value;
			}
		} 
	}
}
</script>
</head>
<body onLoad="selectSiteTemplate();">
<form runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">新建站点向导&nbsp;<a href="http://help.siteserver.cn/manage/223/814.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看新建站点帮助" align="absmiddle"></a></div>
    <table cellpadding="3" width="95%" height="380" align="center">
      <tr>
        <td colspan="2" height="320" align="left" valign="top"><div style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 30px">
            <asp:panel id="ChooseSiteTemplate" runat="server">
              <DIV class="mainTitle"><strong>选择站点模板</strong></DIV>
              <br>
              <DIV> 欢迎使用新建站点向导，您可以选择使用站点模板作为新建站点的基础。 </DIV>
              <DIV style="PADDING-LEFT: 20px; PADDING-TOP: 20px">是否使用站点模板：
                <asp:CheckBox id="UseSiteTemplate" runat="server" Checked="true" Text="使用"> </asp:CheckBox>
                <br>
              </DIV>
              <DIV style="PADDING-LEFT: 10px; PADDING-TOP: 10px" id="SiteTemplateDiv">
                <input type="hidden" id="SiteTemplateDir" value="" runat="server" />
                <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="95%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="2"
			BorderWidth="0"
			AutoGenerateColumns="false"
			DataKeyField="Name"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="2" gridlines="none">
                  <HeaderStyle HorizontalAlign="center" Height="25" />
                  <ItemStyle Height="25"/>
                  <Columns>
                  <asp:TemplateColumn
					HeaderText="选择">
                    <ItemTemplate>
                      <asp:Literal ID="ltlRadio" runat="server"></asp:Literal>
                    </ItemTemplate>
                    <ItemStyle Width="50" HorizontalAlign="center" />
                  </asp:TemplateColumn>
                  <asp:TemplateColumn
				HeaderText="站点模板名称">
                    <ItemTemplate>
                      <asp:Literal ID="ltlTemplateName" runat="server"></asp:Literal>
                    </ItemTemplate>
                    <ItemStyle Width="140" HorizontalAlign="left"/>
                  </asp:TemplateColumn>
                  <asp:TemplateColumn
				HeaderText="站点模板文件夹">
                    <ItemTemplate>
                      <asp:Literal ID="ltlDirectoryName" runat="server"></asp:Literal>
                    </ItemTemplate>
                    <ItemStyle Width="100" HorizontalAlign="left"/>
                  </asp:TemplateColumn>
                  <asp:TemplateColumn
				HeaderText="站点模板介绍">
                    <ItemTemplate>
                      <asp:Literal ID="ltlDescription" runat="server"></asp:Literal>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="left" />
                  </asp:TemplateColumn>
                  <asp:TemplateColumn
				HeaderText="创建日期">
                    <ItemTemplate>
                      <asp:Literal ID="ltlCreationTime" runat="server"></asp:Literal>
                    </ItemTemplate>
                    <ItemStyle Width="120" HorizontalAlign="center" />
                  </asp:TemplateColumn>
                  <asp:TemplateColumn>
                    <ItemTemplate>
                      <asp:Literal ID="ltlViewUrl" runat="server"></asp:Literal>
                    </ItemTemplate>
                    <ItemStyle Width="120" HorizontalAlign="center"/>
                  </asp:TemplateColumn>
                  </Columns>
                </ASP:DataGrid>
                <script>
			function displaySiteTemplateDiv(obj)
			{
				if (obj.checked){
					document.getElementById('SiteTemplateDiv').style.display = '';
				}else{
					document.getElementById('SiteTemplateDiv').style.display = 'none';
				}
			}
			if (document.getElementById('choose ')!= null){
				if (document.getElementById('choose').length > 1){
					document.getElementById('choose')[0].checked = 'true';
					document.getElementById('SiteTemplateDir').value=document.getElementById('choose')[0].value;
				}else{
					document.getElementById('choose').checked = 'true';
					document.getElementById('SiteTemplateDir').value=document.getElementById('choose').value;
				}
			}
		</script> 
              </DIV>
              </asp:panel>
            <asp:panel id="CreateSiteParameters" runat="server" Visible="false">
              <DIV class="mainTitle"><strong>设置站点参数</strong></DIV>
              <br>
              <DIV>在此设置新建站点的名称、文件夹以及辅助表等信息。</DIV>
              <DIV style="PADDING-LEFT: 10px; PADDING-TOP: 10px"> <br>
                <table width="95%" align="center" cellpadding="3" cellspacing="3">
                  <tr id="RowSiteTemplateName" runat="server">
                    <td width="160" align="left"><bairong:help HelpText="使用的站点模板名称" Text="使用的站点模板名称：" runat="server"></bairong:help></td>
                    <td align="left"><asp:Label ID="SiteTemplateName" runat="server"></asp:Label></td>
                  </tr>
                  <tr>
                    <td width="160" align="left"><bairong:help HelpText="此站点的显示名称" Text="站点名称：" runat="server" ></bairong:help></td>
                    <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="50" id="PublishmentSystemName" runat="server"/>
                      <asp:RequiredFieldValidator
			ControlToValidate="PublishmentSystemName"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>
                      <asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="PublishmentSystemName"
			ValidationExpression="[^']+"
			ErrorMessage="*"
			Display="Dynamic" /></td>
                  </tr>
                  <tr>
                    <td align="left"><bairong:help HelpText="创建站点的类型" Text="站点类型：" runat="server" ></bairong:help></td>
                    <td align="left"><asp:RadioButtonList ID="IsHeadquarters" AutoPostBack="true" OnSelectedIndexChanged="IsHeadquarters_SelectedIndexChanged" RepeatDirection="Horizontal" runat="server" >
                        <asp:ListItem Text="主站" Value="True"></asp:ListItem>
                        <asp:ListItem Text="子站" Value="False" Selected="true"></asp:ListItem>
                      </asp:RadioButtonList></td>
                  </tr>
                  <asp:PlaceHolder ID="phNotIsHeadquarters" runat="server">
                    <tr>
                      <td width="160" align="left"><bairong:help HelpText="此站点的上级站点" Text="上级站点：" runat="server" ></bairong:help></td>
                      <td align="left"><asp:DropDownList ID="ParentPublishmentSystemID" runat="server"></asp:DropDownList></td>
                    </tr>
                    <tr>
                      <td align="left"><bairong:help HelpText="实际在服务器中保存此网站的文件夹名称，此路径必须以英文或拼音命名。" Text="文件夹名称：" runat="server" ></bairong:help></td>
                      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="PublishmentSystemDir" runat="server"/>
                        <asp:RequiredFieldValidator
			ControlToValidate="PublishmentSystemDir"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>
                        <asp:RegularExpressionValidator runat="server" ControlToValidate="PublishmentSystemDir"
						ValidationExpression="[a-zA-Z0-9_]+" ErrorMessage=" 只允许包含字母、数字以及下划线" Display="Dynamic" /></td>
                    </tr>
                  </asp:PlaceHolder>
                  <tr>
                    <td align="left"><bairong:help HelpText="网页的编码" Text="网页编码：" runat="server" ></bairong:help></td>
                    <td align="left"><asp:DropDownList id="Charset" runat="server"></asp:DropDownList></td>
                  </tr>
                  <tr id="RowIsImportContents" runat="server">
                    <td align="left"><bairong:help HelpText="设置是否导入网站模板中的内容" Text="是否导入栏目及内容：" runat="server" ></bairong:help></td>
                    <td align="left"><asp:CheckBox id="IsImportContents" runat="server" Checked="true" Text="导入"></asp:CheckBox></td>
                  </tr>
                  <tr id="RowIsImportTableStyles" runat="server">
                    <td align="left"><bairong:help HelpText="设置是否导入网站模板中的表单样式" Text="是否导入表单样式：" runat="server" ></bairong:help></td>
                    <td align="left"><asp:CheckBox id="IsImportTableStyles" runat="server" Checked="true" Text="导入"></asp:CheckBox></td>
                  </tr>
                  <tr id="RowIsUserSiteTemplateAuxiliaryTables" runat="server">
                    <td align="left"><bairong:help HelpText="设置新建站点的表结构" Text="站点表结构设置：" runat="server" ></bairong:help></td>
                    <td align="left"><asp:RadioButtonList ID="IsUserSiteTemplateAuxiliaryTables" AutoPostBack="true" OnSelectedIndexChanged="IsUserSiteTemplateAuxiliaryTables_SelectedIndexChanged" RepeatDirection="Horizontal" runat="server" >
                        <asp:ListItem Text="使用站点模板中的辅助表" Value="True"></asp:ListItem>
                        <asp:ListItem Text="使用指定的辅助表" Value="False" Selected="true"></asp:ListItem>
                      </asp:RadioButtonList></td>
                  </tr>
                  <asp:PlaceHolder ID="phAuxiliaryTable" runat="server" Visible="false">
                    <tr>
                      <td align="left"><bairong:help HelpText="此站点商品需要的辅助表，必须要选择一个辅助表对商品进行实际的存取。" Text="商品辅助表：" runat="server" ></bairong:help></td>
                      <td align="left"><asp:DropDownList ID="AuxiliaryTableForGoods" runat="server" > </asp:DropDownList>
                        <asp:RequiredFieldValidator
			ControlToValidate="AuxiliaryTableForGoods"
			ErrorMessage="商品辅助表不能为空！"
			Display="Dynamic"
			runat="server"/></td>
                    </tr>
                    <tr>
                      <td align="left"><bairong:help HelpText="此站点品牌需要的辅助表，必须要选择一个辅助表对品牌进行实际的存取。" Text="品牌辅助表：" runat="server" ></bairong:help></td>
                      <td align="left"><asp:DropDownList ID="AuxiliaryTableForBrand" runat="server" > </asp:DropDownList>
                        <asp:RequiredFieldValidator
			ControlToValidate="AuxiliaryTableForBrand"
			ErrorMessage="品牌辅助表不能为空！"
			Display="Dynamic"
			runat="server"/></td>
                    </tr>
                    <tr>
                      <td align="left"><bairong:help HelpText="此站点内容需要的辅助表，必须要选择一个辅助表对内容进行实际的存取。" Text="内容辅助表：" runat="server" ></bairong:help></td>
                      <td align="left"><asp:DropDownList ID="AuxiliaryTableForContent" runat="server" > </asp:DropDownList>
                        <asp:RequiredFieldValidator
			ControlToValidate="AuxiliaryTableForContent"
			ErrorMessage="内容辅助表不能为空！"
			Display="Dynamic"
			runat="server"/></td>
                    </tr>
                  </asp:PlaceHolder>
                  <tr>
                    <td width="160" align="left"><bairong:help HelpText="选择内容审核的机制，需要多级审核的请选择多级审核机制，否则选择默认审核机制" Text="内容审核机制：" runat="server" ></bairong:help></td>
                    <td align="left"><asp:RadioButtonList id="IsCheckContentUseLevel" AutoPostBack="true" OnSelectedIndexChanged="IsCheckContentUseLevel_OnSelectedIndexChanged" RepeatDirection="Horizontal" runat="server"> </asp:RadioButtonList></td>
                  </tr>
                  <tr id="CheckContentLevelRow" runat="server" visible="false">
                    <td width="160" align="left"><bairong:help HelpText="指此内容在添加后需要经多少次审核才能正式发布" Text="内容审核级别：" runat="server" ></bairong:help></td>
                    <td align="left"><asp:DropDownList id="CheckContentLevel" runat="server">
                        <asp:ListItem Value="2" Text="二级" Selected="true"></asp:ListItem>
                        <asp:ListItem Value="3" Text="三级"></asp:ListItem>
                        <asp:ListItem Value="4" Text="四级"></asp:ListItem>
                        <asp:ListItem Value="5" Text="五级"></asp:ListItem>
                      </asp:DropDownList></td>
                  </tr>
                </table>
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
              </asp:Panel>
          </div></td>
      </tr>
      <tr style="BACKGROUND-POSITION:center 50%; BACKGROUND-IMAGE:url(../pic/line.gif); BACKGROUND-REPEAT:repeat-x">
        <td width="30%">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2"><table cellpadding="0" cellspacing="0" width="100%" border="0" align="center" >
            <tr >
              <td align="right"><span style="padding-right:30 "><span style="padding-right:30 "></span> <span style="padding-right:30 "></span>
                <asp:Button class="button" ID="Previous" OnClick="PreviousPanel" CausesValidation="false" runat="server" Text="< 上一步"></asp:Button>
                &nbsp;
                <asp:Button class="button" id="Next" onclick="NextPanel" runat="server" text="下一步 >"></asp:Button>
                <span style="padding-right:30 "></span></span></td>
            </tr>
          </table></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
