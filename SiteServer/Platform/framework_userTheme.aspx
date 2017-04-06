<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.FrameworkUserTheme" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script language="javascript" type="text/javascript">
	function gotoMain()
	{
		window.top.location.href = "../main.aspx?module=<%=Module%>";
	}
</script>
</HEAD>
<body>
<form id="MyForm" runat="server">
  <bairong:Message ID="Message" runat="server"></bairong:Message>
  <div class="tab">
    <div class="tabOn">主题设置</div>
    <div class="tabOff"><A href="framework_userLanguage.aspx">语言设置</A></div>
    <div class="tabOff"><A href="framework_userProfile.aspx">修改资料</A></div>
    <div class="tabOff"><A href="framework_userPassword.aspx">更改密码</A></div>
    <div class="clearer"></div>
  </div>
  <DIV class="column">
    <table cellpadding="3" width="95%" align="center">
      <tr>
        <td><input type="hidden" id="CurrentTheme" value="<%=GetCurrentTheme()%>" />
          <ASP:DataGrid id="MyDataGrid" runat="server"
	Width="90%"
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
                <input type="radio" name="choose" id="choose" onClick="document.getElementById('CurrentTheme').value=this.value;" value='<%# DataBinder.Eval(Container.DataItem,"Name")%>' <%# GetChecked((string)DataBinder.Eval(Container.DataItem,"Name"))%> />
              </ItemTemplate>
              <ItemStyle Width="50" HorizontalAlign="center" />
            </asp:TemplateColumn>
            <asp:TemplateColumn
		HeaderText="主题名称">
              <ItemTemplate> <%#GetThemeName((string)DataBinder.Eval(Container.DataItem,"Name")) %> </ItemTemplate>
              <ItemStyle Width="120" HorizontalAlign="center"/>
            </asp:TemplateColumn>
            <asp:BoundColumn
		HeaderText="主题文件夹"
		DataField="Name" >
              <ItemStyle Width="100" HorizontalAlign="center" />
            </asp:BoundColumn>
            <asp:TemplateColumn
		HeaderText="主题介绍">
              <ItemTemplate> <%#GetDescription((string)DataBinder.Eval(Container.DataItem,"Name")) %> </ItemTemplate>
              <ItemStyle HorizontalAlign="left" />
            </asp:TemplateColumn>
            <asp:TemplateColumn
		HeaderText="样图">
              <ItemTemplate> <%#GetSamplePicHtml((string)DataBinder.Eval(Container.DataItem,"Name")) %> </ItemTemplate>
              <ItemStyle Width="130" HorizontalAlign="center"/>
            </asp:TemplateColumn>
            </Columns>
          </ASP:DataGrid></td>
      </tr>
      <tr>
        <td align="center"><input type="button" class="button" value="修 改" onClick="javascript:location.href='framework_userTheme.aspx?module=<%=Module%>&SetTheme=True&ThemeName=' + document.getElementById('CurrentTheme').value;" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
