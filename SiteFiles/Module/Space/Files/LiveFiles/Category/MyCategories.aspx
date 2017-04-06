<%@ Page SmartNavigation="False" Language="C#" MasterPageFile="~/LiveServer/MasterPage/User/FullViewOneCol.master" Inherits="SiteServer.Space.Space.Pages.MyCategories" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">
	
<table cellspacing="0" class="pheader" border=0 style="width:100%;" height="22">
  <tr>
	<td class="mod_tlc" width=6 nowrap>&nbsp;</td>
	<td width="100%" align="left" class="modhead">类别管理</td>
	<td class="mod_trc" width=6 nowrap>&nbsp;</td>
  </tr>
</table>


<table border=0 cellpadding="0" cellspacing=0 style="width:100%;">
<tr>
	<td align="left" class="bvBody">
		
		<div class="opaquePartMain">
			   
				<div class="SUWizContent"><nobr><asp:LinkButton ID="AddCategory" OnClick="AddCategory_OnClick" runat="server">新增分类</asp:LinkButton>
				</nobr>&nbsp;<br />
					<asp:Label id="myLabel" width="100%" Style="text-align:center" runat="server"/>
				</div>
	      
		        <div class="SULayoutArea"><span class="bold"><asp:label id="CategoryType" runat="server"></asp:label>分类</span></div>
	      <div class="SUWizContent">
				      <table width="100%" align="center" cellspacing="0" cellpadding="0">
<tr>
<td class="mframe-m-mid"><ASP:DataGrid id="MyDataGrid2" runat="server"
			Width="100%"
			Align="center"
			ShowHeader="true"
			ShowFooter="false"
			CellPadding="0"
			AutoGenerateColumns="false"
			DataKeyField="CategoryID"
			OnItemDataBound="MyDataGrid_ItemBound"
			HeaderStyle-CssClass="summary-title"
			ItemStyle-CssClass="tdbg"
			CellSpacing="0" >
		<HeaderStyle HorizontalAlign="center" Height="25" />
		<ItemStyle Height="25"/>

		<Columns>
			<asp:TemplateColumn
				HeaderText="类别名称">
				<ItemTemplate>
					&nbsp;<%# (string)DataBinder.Eval(Container.DataItem,"CategoryName")%>
				</ItemTemplate>
				<ItemStyle HorizontalAlign="left" />
			</asp:TemplateColumn>
			<asp:TemplateColumn HeaderText="所属系统">
				<ItemTemplate>
					<%#GetValue((string)DataBinder.Eval(Container.DataItem,"ApplicationType"))%>
				</ItemTemplate>
				<ItemStyle Width="100" HorizontalAlign="center" />
			</asp:TemplateColumn>
			<asp:TemplateColumn
				HeaderText="修改">
				<ItemTemplate>
					<a href="MyCategoryAdd.aspx?Type=<%=Request.QueryString["Type"]%>&CategoryID=<%# DataBinder.Eval(Container.DataItem,"CategoryID")%>">修改</a>
				</ItemTemplate>
				<ItemStyle Width="100" HorizontalAlign="center" />
			</asp:TemplateColumn>
			<asp:TemplateColumn
				HeaderText="删除">
				<ItemTemplate>
					<a href="MyCategories.aspx?Type=<%=Request.QueryString["Type"]%>&Delete=True&CategoryID=<%# DataBinder.Eval(Container.DataItem,"CategoryID")%>" onclick="javascript:return confirm('此操作将删除类别“<%# (string)DataBinder.Eval(Container.DataItem,"CategoryName")%>”，确认吗？');">删除</a>
				</ItemTemplate>
				<ItemStyle Width="100" HorizontalAlign="center" />
			</asp:TemplateColumn>
		</Columns>
	</ASP:DataGrid></td>
</tr>
</table>
</div>

	      </div>
	  </div>
	</td>
</tr>
</table>
	
</asp:content>