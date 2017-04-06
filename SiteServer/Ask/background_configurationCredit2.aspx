<%@ Page Language="C#" Inherits="SiteServer.Ask.BackgroundPages.BackgroundConfigurationCredit2" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" style="margin:0" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">积分策略设置</div>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
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
      <asp:TemplateColumn HeaderText="动作">
        <ItemTemplate>
          <asp:Literal ID="ltlRuleName" runat="server"></asp:Literal>
        </ItemTemplate>
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="周期">
        <ItemTemplate>
          <asp:Literal ID="ltlPeriodType" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="100" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="最高次数">
        <ItemTemplate>
          <asp:Literal ID="ltlMaxNum" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="100" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="威望">
        <ItemTemplate>
          <input id="<%# Container.DataItem%>_Prestige" name="<%# Container.DataItem%>_Prestige" type="text" value="<%# GetCreditValue("Prestige", (string)Container.DataItem)%>" class="colorblur" onFocus="this.className='colorfocus';" onBlur="this.className='colorblur';" style="width:60px;" />
        </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="贡献">
        <ItemTemplate>
          <input id="<%# Container.DataItem%>_Contribution" name="<%# Container.DataItem%>_Contribution" type="text" value="<%# GetCreditValue("Contribution", (string)Container.DataItem)%>" class="colorblur" onFocus="this.className='colorfocus';" onBlur="this.className='colorblur';" style="width:60px;" />
        </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="金钱">
        <ItemTemplate>
          <input id="<%# Container.DataItem%>_Currency" name="<%# Container.DataItem%>_Currency" type="text" value="<%# GetCreditValue("Currency", (string)Container.DataItem)%>" class="colorblur" onFocus="this.className='colorfocus';" onBlur="this.className='colorblur';" style="width:60px;" />
        </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ltlEditUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td><asp:Button ID="SetButton" class="button" OnClick="SetButton_Click" Text="设 置" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</html>