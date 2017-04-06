<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.BackgroundUserGroup" %>
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
    <div class="columntitle">积分用户组</div>
    <div class="tips"> 积分用户组以积分确定组别和权限，系统将根据用户积分判断所在组别并赋予相应的阅读及操作权限。 </div>
    <ASP:DataGrid id="MyDataGrid1" runat="server"
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
      <asp:TemplateColumn HeaderText="会员组名称">
        <ItemTemplate>
          <asp:Literal ID="ltlGroupName" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="最低积分">
        <ItemTemplate>
          <asp:Literal ID="ltlCreditsFrom" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="最高积分">
        <ItemTemplate>
          <asp:Literal ID="ltlCreditsTo" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="星星数">
        <ItemTemplate>
          <asp:Literal ID="ltlStars" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ltlAddUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ltlEditUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ltlPermissionUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="100" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ltlDeleteUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td><asp:Button ID="AddButton1" class="button" Text="添加积分用户组" runat="server" /></td>
    </tr>
  </table>
  <br>
  <DIV class="column">
    <div class="columntitle">特殊用户组</div>
    <div class="tips"> 特殊用户组是人为设定，不需要指定积分，特殊组的用户需要在编辑会员时将其加入。 </div>
    <ASP:DataGrid id="MyDataGrid2" runat="server"
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
      <asp:TemplateColumn HeaderText="会员组名称">
        <ItemTemplate>
          <asp:Literal ID="ltlGroupName" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="星星数">
        <ItemTemplate>
          <asp:Literal ID="ltlStars" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ltlEditUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ltlPermissionUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="100" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ltlDeleteUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </DIV>
  <table width="95%" align="center">
    <tr>
      <td><asp:Button ID="AddButton2" class="button" Text="添加特殊用户组" runat="server" /></td>
    </tr>
  </table><br>
<DIV class="column">
    <div class="columntitle">系统用户组</div>
    <div class="tips"> 系统用户组是系统预定义的用户组，预留了从论坛管理员到游客的 8 个系统等级。 </div>
    <ASP:DataGrid id="MyDataGrid3" runat="server"
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
      <asp:TemplateColumn HeaderText="会员组名称">
        <ItemTemplate>
          <asp:Literal ID="ltlGroupName" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn HeaderText="星星数">
        <ItemTemplate>
          <asp:Literal ID="ltlStars" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="left" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ltlEditUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ltlPermissionUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="100" HorizontalAlign="center" />
      </asp:TemplateColumn>
      <asp:TemplateColumn>
        <ItemTemplate>
          <asp:Literal ID="ltlDeleteUrl" runat="server"></asp:Literal>
        </ItemTemplate>
        <ItemStyle Width="70" HorizontalAlign="center" />
      </asp:TemplateColumn>
      </Columns>
    </ASP:DataGrid>
  </DIV>
</form>
</body>
</html>