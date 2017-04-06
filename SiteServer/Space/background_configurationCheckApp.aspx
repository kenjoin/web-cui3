<%@ Page Language="C#" Inherits="SiteServer.Space.BackgroundPages.LiveServerConfigurationCheckApp" %>

<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<html>
<head>
    <!--#include file="../inc/html_head.inc"-->
    <user:Custom Type="style" runat="server" />
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
</head>
<body>
    <user:Custom Type="showpopwin" runat="server" />
    <form id="MyForm" runat="server">
    <bairong:Message runat="server" />
    <div class="tab">
        <div onclick="location.href='background_configurationCheck.aspx';" class="tabOff"
            style="cursor: pointer">
            全 局</div>
        <asp:Literal ID="ltlTabs" runat="server"></asp:Literal>
        <div class="clearer">
        </div>
    </div>
    <div class="column">
        <table width="95%" align="center" cellpadding="3" cellspacing="3">
            <%--<tr>
                <td width="170" align="left">
                    <bairong:Help HelpText="审核规则设置" Text="审核规则设置：" runat="server">
                    </bairong:Help>
                </td>
                <td align="left" width="900">
                    <asp:RadioButtonList ID="IsCheckByUserGroup" AutoPostBack="true" OnSelectedIndexChanged="IsCheckByUserGroup_SelectedIndexChanged"
                        RepeatDirection="Horizontal" runat="server">
                        <asp:ListItem Text="统一审核规则" Value="False" Selected="true"></asp:ListItem>
                        <asp:ListItem Text="按用户组审核" Value="True"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>--%>
            <asp:PlaceHolder ID="phGlobal" runat="server">
                <tr>
                    <td width="170" align="left">
                        <bairong:Help HelpText="是否审核内容" Text="是否审核内容：" runat="server">
                        </bairong:Help>
                    </td>
                    <td align="left">
                        <asp:RadioButtonList ID="IsCheckContent" RepeatDirection="Horizontal" runat="server">
                            <asp:ListItem Text="是" Value="True"></asp:ListItem>
                            <asp:ListItem Text="否" Value="False" Selected="true"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <asp:PlaceHolder ID="phComment" runat="server">
                    <tr>
                        <td width="170" align="left">
                            <bairong:Help HelpText="是否审核评论" Text="是否审核评论：" runat="server">
                            </bairong:Help>
                        </td>
                        <td align="left">
                            <asp:RadioButtonList ID="IsCheckComment" RepeatDirection="Horizontal" runat="server">
                                <asp:ListItem Text="是" Value="True"></asp:ListItem>
                                <asp:ListItem Text="否" Value="False" Selected="true"></asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                </asp:PlaceHolder>
            </asp:PlaceHolder>
            <asp:PlaceHolder ID="phUserGroup" runat="server">
                <tr>
                    <td align="left" colspan="2">
                        <asp:DataList ID="dlUserGroup" ShowHeader="true" CellSpacing="1" CellPadding="1"
                            Width="100%" Align="center" border="0" runat="server">
                            <HeaderTemplate>
                                <tr class="summary-title" style="height: 25px;">
                                    <td>
                                        &nbsp;会员组名称
                                    </td>
                                    <asp:Literal ID="ltlCheck" runat="server"></asp:Literal>
                                    <td align="Center" style="width: 100px;">
                                        用户组类型
                                    </td>
                                    <td align="Center" style="width: 80px;">
                                        星星数
                                    </td>
                                    <td align="Center" style="width: 60px;">
                                        编辑
                                    </td>
                                </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr class="tdbg" onmouseover="this.className='tdbg-dark';" onmouseout="this.className='tdbg';"
                                    style="height: 25px;">
                                    <td>
                                        &nbsp;
                                        <asp:Literal ID="ltlGroupName" runat="server"></asp:Literal>
                                    </td>
                                    <asp:Literal ID="ltlCheck" runat="server"></asp:Literal>
                                    <td align="Center" style="width: 100px;">
                                        <asp:Literal ID="ltlGroupType" runat="server"></asp:Literal>
                                    </td>
                                    <td align="left" style="width: 80px;">
                                        &nbsp;
                                        <asp:Literal ID="ltlStars" runat="server"></asp:Literal>
                                    </td>
                                    <td align="Center" style="width: 60px;">
                                        <asp:Literal ID="ltlEditUrl" runat="server"></asp:Literal>
                                    </td>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                </tr>
            </asp:PlaceHolder>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button class="button" ID="Submit" Text="修 改" OnClick="Submit_OnClick" runat="server" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
