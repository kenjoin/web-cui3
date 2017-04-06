<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.ConsolePublishmentSystemReplace" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">整站替换向导 </div>
    <table cellpadding="3" width="95%" align="center">
      <tr>
        <td colspan="2" align="left" valign="top"><div style="PADDING: 10px">
            <asp:panel id="ChooseSiteTemplate" runat="server">
              <DIV class="tips"> 欢迎使用整站替换向导，整站替换将改变现有网站，请谨慎使用。<br>
                您选择的站点为<strong>
                <asp:Literal ID="PublishmentSystemName" runat="server"></asp:Literal>
                </strong>，请选择需要替换的站点模板： </DIV>
              <DIV style="PADDING-LEFT: 10px; PADDING-TOP: 10px">
                <input type="hidden" id="SiteTemplateDir" value="" runat="server" />
                <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="98%"
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
                      <input type="radio" name="choose" id="choose" onClick="document.getElementById('SiteTemplateDir').value=this.value;" value='<%# DataBinder.Eval(Container.DataItem,"Name")%>' />
                    </ItemTemplate>
                    <ItemStyle Width="50" HorizontalAlign="center" />
                  </asp:TemplateColumn>
                  <asp:TemplateColumn
					HeaderText="站点模板名称">
                    <ItemTemplate> <%#GetSiteTemplateName((string)DataBinder.Eval(Container.DataItem,"Name")) %> </ItemTemplate>
                    <ItemStyle Width="120" HorizontalAlign="center"/>
                  </asp:TemplateColumn>
                  <asp:BoundColumn
					HeaderText="站点模板文件夹"
					DataField="Name" >
                    <ItemStyle Width="100" HorizontalAlign="center" />
                  </asp:BoundColumn>
                  <asp:TemplateColumn
					HeaderText="站点模板介绍">
                    <ItemTemplate> <%#GetDescription((string)DataBinder.Eval(Container.DataItem,"Name")) %> </ItemTemplate>
                    <ItemStyle HorizontalAlign="left" />
                  </asp:TemplateColumn>
                  <asp:TemplateColumn
					HeaderText="样图">
                    <ItemTemplate> <%#GetSamplePicHtml((string)DataBinder.Eval(Container.DataItem,"Name")) %> </ItemTemplate>
                    <ItemStyle Width="130" HorizontalAlign="center"/>
                  </asp:TemplateColumn>
                  </Columns>
                </ASP:DataGrid>
              </DIV>
              </asp:panel>
            <asp:panel id="CreateSiteParameters" runat="server" Visible="false">
              <DIV class="tips"> 您选择的站点模板为：
                <asp:Label ID="SiteTemplateName" runat="server"></asp:Label>
                ，请设置导入选项： </DIV>
              <DIV style="PADDING-LEFT: 10px; PADDING-TOP: 10px">
                <table width="95%" align="center" cellpadding="3" cellspacing="3">
                  <tr>
                    <td width="160" align="left"><bairong:help HelpText="清除站点栏目及内容" Text="清除站点栏目及内容：" runat="server" ></bairong:help></td>
                    <td align="left"><asp:RadioButtonList ID="IsDeleteChannels" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Text="清除站点栏目及内容" Value="True"></asp:ListItem>
                        <asp:ListItem Text="保留站点栏目及内容" Value="False" Selected="true"></asp:ListItem>
                      </asp:RadioButtonList></td>
                  </tr>
                  <tr>
                    <td width="160" align="left"><bairong:help HelpText="清除站点显示模板" Text="清除站点显示模板：" runat="server" ></bairong:help></td>
                    <td align="left"><asp:RadioButtonList ID="IsDeleteTemplates" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Text="清除站点显示模板" Value="True"></asp:ListItem>
                        <asp:ListItem Text="保留站点显示模板" Value="False" Selected="true"></asp:ListItem>
                      </asp:RadioButtonList></td>
                  </tr>
                  <tr>
                    <td width="160" align="left"><bairong:help HelpText="清除站点文件" Text="清除站点文件：" runat="server" ></bairong:help></td>
                    <td align="left"><asp:RadioButtonList ID="IsDeleteFiles" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Text="清除站点文件" Value="True"></asp:ListItem>
                        <asp:ListItem Text="保留站点文件" Value="False" Selected="true"></asp:ListItem>
                      </asp:RadioButtonList></td>
                  </tr>
                  <tr>
                    <td width="160" align="left"><bairong:help HelpText="是否覆盖同名数据" Text="是否覆盖同名数据：" runat="server" ></bairong:help></td>
                    <td align="left"><asp:RadioButtonList ID="IsOverride" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Text="覆盖同名数据" Value="True" Selected="true"></asp:ListItem>
                        <asp:ListItem Text="不覆盖同名数据" Value="False"></asp:ListItem>
                      </asp:RadioButtonList></td>
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
                <asp:Button class="button" id="Next" onclick="NextPanel" runat="server" text="下一步 >"></asp:button>
                <span style="padding-right:30 "></span></span></td>
            </tr>
          </table></td>
      </tr>
    </table>
  </div>
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
