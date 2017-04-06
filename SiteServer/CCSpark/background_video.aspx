<%@ Page Language="C#" Inherits="SiteServer.CCSpark.BackgroundPages.BackgroundVideo" %>

<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
    <!--#include file="../inc/html_head.inc"-->
    <user:Custom ID="Custom1" Type="style" runat="server" />
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
    <user:Custom ID="Custom2" Type="showpopwin" runat="server" />
    <form id="myForm" style="margin: 0" runat="server">
    <bairong:Message ID="Message1" runat="server" />
    <div class="column">
        <div class="columntitle">
            视频管理</div>
        <div class="tips">
            一共有<strong><asp:Literal ID="ltlTips" runat="server"></asp:Literal></strong>篇视频</div>
        <asp:DataGrid ID="MyDataGrid" runat="server" Width="100%" Align="center" ShowHeader="true"
            ShowFooter="false" CellPadding="1" BorderWidth="0" AutoGenerateColumns="false"
            OnItemDataBound="MyDataGrid_ItemBound" HeaderStyle-CssClass="summary-title" ItemStyle-CssClass="tdbg"
            CellSpacing="1" GridLines="none">
            <HeaderStyle HorizontalAlign="center" Height="25" />
            <ItemStyle Height="25" />
            <Columns>
                <asp:TemplateColumn HeaderText="视频ID">
                    <ItemTemplate>
                        <asp:Literal ID="ltlID" runat="server"></asp:Literal>
                    </ItemTemplate>
                    <ItemStyle Width="50" HorizontalAlign="center" />
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="视频标题">
                    <ItemTemplate>
                        <asp:Literal ID="ltlTitle" runat="server"></asp:Literal>
                    </ItemTemplate>
                    <ItemStyle Width="200" HorizontalAlign="left" />
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="视频截图">
                    <ItemTemplate>
                        <asp:Literal ID="ltlImage" runat="server"></asp:Literal>
                    </ItemTemplate>
                    <ItemStyle Width="130" HorizontalAlign="center" />
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="视频标签">
                    <ItemTemplate>
                        <asp:Literal ID="ltlTags" runat="server"></asp:Literal>
                    </ItemTemplate>
                    <ItemStyle Width="120" HorizontalAlign="left" />
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="视频介绍">
                    <ItemTemplate>
                        <asp:Literal ID="ltlDesp" runat="server"></asp:Literal>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="left" />
                </asp:TemplateColumn>
                <asp:TemplateColumn>
                    <ItemTemplate>
                        <asp:Literal ID="ltlUrl" runat="server"></asp:Literal>
                    </ItemTemplate>
                    <ItemStyle Width="50" HorizontalAlign="center" />
                </asp:TemplateColumn>
                <asp:TemplateColumn>
                    <ItemTemplate>
                        <asp:Literal ID="ltlCode" runat="server"></asp:Literal>
                    </ItemTemplate>
                    <ItemStyle Width="50" HorizontalAlign="center" />
                </asp:TemplateColumn>
            </Columns>
        </asp:DataGrid>
    </div>
    <table width="95%" align="center">
        <tr>
            <td align="right">
                <table cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td>
                            <asp:Button class="button" ID="AddButton" Text="上传视频" runat="server" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
