<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundAdvertisement" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
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
    <div class="columntitle">漂浮广告检索&nbsp;<a href="http://help.siteserver.cn/function/200/757.html" target="_blank"><img src="../Pic/help_bar.gif" alt="点击查看漂浮广告管理帮助" align="absmiddle"></a></div>
    <TABLE width="100%" border=0 align=center cellPadding=0 cellSpacing=0>
      <TBODY>
        <TR class=summary-title align=left>
          <TD align=left style="padding-left:20px;"> 漂浮广告类型：
            <asp:DropDownList ID="AdvertisementType" AutoPostBack="true" OnSelectedIndexChanged="ReFresh" runat="server"></asp:DropDownList>
            &nbsp;&nbsp; </TD>
        </TR>
      </TBODY>
    </TABLE>
  </DIV>
  <DIV class="column">
    <div class="columntitle">漂浮广告列表</div>
    <ASP:DataGrid id="MyDataGrid" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="2"
			BorderWidth="0"
AutoGenerateColumns="false"
			DataKeyField="AdvertisementName"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="1" gridlines="none">
      <HeaderStyle HorizontalAlign="center" Height="25" />
      <ItemStyle Height="23"/>
      <Columns>
      <asp:TemplateColumn
				HeaderText="广告名称">
        <ItemTemplate> <%#DataBinder.Eval(Container.DataItem,"AdvertisementName")%> </ItemTemplate>
        <ItemStyle Width="140" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="广告显示">
        <ItemTemplate> <%#GetAdvertisementInString((string)DataBinder.Eval(Container.DataItem,"AdvertisementName"))%> </ItemTemplate>
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="广告类型">
        <ItemTemplate> <%#GetAdvertisementType((string)DataBinder.Eval(Container.DataItem,"AdvertisementType"))%> </ItemTemplate>
        <ItemStyle Width="140" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:BoundColumn
				HeaderText="添加日期"
				DataField="AddDate"
				DataFormatString="{0:yyyy-MM-dd}"
				ReadOnly="true">
        <ItemStyle Width="70" HorizontalAlign="center" />
      </asp:BoundColumn>
      <asp:TemplateColumn >
        <ItemTemplate> <a href="background_advertisementAdd.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&AdvertisementName=<%# DataBinder.Eval(Container.DataItem,"AdvertisementName")%>">编辑</a> </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn >
        <ItemTemplate> <a href="background_advertisement.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>&AdvertisementName=<%# DataBinder.Eval(Container.DataItem,"AdvertisementName")%>&Delete=True" onClick="javascript:return confirm('此操作将删除广告“<%# DataBinder.Eval(Container.DataItem,"AdvertisementName")%>”，确认吗？');">删除</a> </ItemTemplate>
        <ItemStyle Width="50" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn
				HeaderText="<input type=&quot;checkbox&quot; onclick=&quot;_checkFormAll(this.checked)&quot;>">
        <ItemTemplate>
          <input type="checkbox" name="AdvertisementNameCollection" value='<%#DataBinder.Eval(Container.DataItem, "AdvertisementName")%>' />
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
            <td><asp:Button class="button" id="AddAdvertisement" OnClick="AddAdvertisement_OnClick" Text="添加广告" runat="server" />
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