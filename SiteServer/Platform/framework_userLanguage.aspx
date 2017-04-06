<%@ Page Language="C#" Inherits="BaiRong.BackgroundPages.FrameworkUserLanguage" %>
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
<bairong:Message ID="Message" runat="server"></bairong:Message>
<form id="MyForm" runat="server">
  <div class="tab">
    <div class="tabOff"><A href="framework_userTheme.aspx">
      <lan>主题设置</lan>
      </A></div>
    <div class="tabOn">
      <lan>语言设置</lan>
    </div>
    <div class="tabOff"><A href="framework_userProfile.aspx">
      <lan>修改资料</lan>
      </A></div>
    <div class="tabOff"><A href="framework_userPassword.aspx">
      <lan>更改密码</lan>
      </A></div>
    <div class="clearer"></div>
  </div>
  <DIV class="column">
    <table cellpadding="3" width="95%" align="center">
      <tr>
        <td><input type="hidden" id="CurrentLanguage" value="<%=GetCurrentLanguage()%>" />
          <ASP:DataGrid id="MyDataGrid" runat="server"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="2"
			BorderWidth="0"
			AutoGenerateColumns="false"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="2" gridlines="none">
            <HeaderStyle HorizontalAlign="center" Height="25" />
            <ItemStyle Height="25"/>
            <Columns>
            <asp:TemplateColumn
				HeaderText="<lan>选择</lan>">
              <ItemTemplate>
                <input type="radio" name="choose" id="choose" onClick="document.getElementById('CurrentLanguage').value=this.value;" value='<%# Container.DataItem%>' <%# GetChecked((string)Container.DataItem)%> />
              </ItemTemplate>
              <ItemStyle Width="50" HorizontalAlign="center" />
            </asp:TemplateColumn>
            <asp:TemplateColumn
				HeaderText="<lan>语言</lan>">
              <ItemTemplate> <%#GetLanguageName((string)Container.DataItem) %> </ItemTemplate>
              <ItemStyle Width="100" HorizontalAlign="center"/>
            </asp:TemplateColumn>
            <asp:TemplateColumn>
              <ItemTemplate> <%#Container.DataItem %> </ItemTemplate>
              <ItemStyle Width="40" HorizontalAlign="center"/>
            </asp:TemplateColumn>
            </Columns>
          </ASP:DataGrid></td>
      </tr>
      <tr>
        <td align="center"><input type="button" class="button" value="<lan>修 改</lan>" onClick="javascript:location.href='framework_userLanguage.aspx?module=<%=Module%>&SetLanguage=True&Language=' + document.getElementById('CurrentLanguage').value;" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>
