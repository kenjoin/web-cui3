<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundAd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head runat="server">
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">固定广告检索</div>
    <TABLE width="100%" border=0 align=center cellPadding=0 cellSpacing=0>
      <TBODY>
        <TR class=summary-title align=left>
          <TD align=left style="padding-left:20px;"> 固定广告类型：
            <asp:DropDownList ID="AdType" AutoPostBack="true" OnSelectedIndexChanged="ReFresh" runat="server"></asp:DropDownList>
            &nbsp;&nbsp; </TD>
        </TR>
      </TBODY>
    </TABLE>
  </DIV>
  <DIV class="column">
    <div class="columntitle">固定广告列表</div>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="2"
			BorderWidth="0"
AutoGenerateColumns="false"
			DataKeyField="AdName"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="1" gridlines="none">
      <HeaderStyle HorizontalAlign="center" Height="25" />
      <ItemStyle Height="23"/>
      <Columns>
      <asp:TemplateColumn
				HeaderText="广告名称">
        <ItemTemplate> <%#DataBinder.Eval(Container.DataItem,"AdName")%> </ItemTemplate>
        <ItemStyle HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="广告类型">
        <ItemTemplate> <%#GetAdType((string)DataBinder.Eval(Container.DataItem,"AdType"))%> </ItemTemplate>
        <ItemStyle Width="140" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:BoundColumn
				HeaderText="生效时间"
				DataField="StartDate"
				DataFormatString="{0:yyyy-MM-dd}"
				ReadOnly="true">
        <ItemStyle Width="70" HorizontalAlign="center" />
      </asp:BoundColumn>
      <asp:TemplateColumn HeaderText="是否有效">
        <ItemTemplate> <%#GetIsEnabled((string)DataBinder.Eval(Container.DataItem,"IsEnabled"))%> </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn >
        <ItemTemplate> <a href="background_AdAdd.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&AdName=<%# DataBinder.Eval(Container.DataItem,"AdName")%>">编辑</a> </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn >
        <ItemTemplate> <a href="background_Ad.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&AdName=<%# DataBinder.Eval(Container.DataItem,"AdName")%>&Delete=True" onClick="javascript:return confirm('此操作将删除广告“<%# DataBinder.Eval(Container.DataItem,"AdName")%>”，确认吗？');">删除</a> </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="<input type=&quot;checkbox&quot; onclick=&quot;_checkFormAll(this.checked)&quot;>">
        <ItemTemplate>
          <input type="checkbox" name="AdNameCollection" value='<%#DataBinder.Eval(Container.DataItem, "AdName")%>' />
        </ItemTemplate>
        <ItemStyle Width="20" HorizontalAlign="center"/>
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td align="right"><table cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td><asp:Button class="button" id="AddAd" OnClick="AddAd_OnClick" Text="添加广告" runat="server" />
              &nbsp;
              <asp:Button class="button" id="Delete" OnClick="Delete_OnClick" Text="删除广告" runat="server" />
              &nbsp; </td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>
</body>
</html>