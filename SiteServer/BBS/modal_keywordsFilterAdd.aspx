<%@ Page Language="C#" Inherits="SiteServer.BBS.BackgroundPages.Modal.KeywordsFilterAdd" %>

<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!--#include file="../inc/html_head.inc"-->
    <user:Custom Type="style" runat="server"/>
    <title>
        <asp:Literal ID="MyTitle" runat="server"></asp:Literal>
    </title>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <script src="../../BBS/js/jquery-1.4.4.min.js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript">
        $(document).ready(function () {
            $("#snewcategory").click(function () {
                $("#ddlCategory").hide();
                $("#snewcategory").hide();
                $("#Ok").hide();
                $("#tbCategory").show();
                $("#schoicecategory").show();
                $("#btnNewCategory").show();
            });
            $("#schoicecategory").click(function () {
                $("#ddlCategory").show();
                $("#snewcategory").show();
                $("#Ok").show();
                $("#tbCategory").hide();
                $("#schoicecategory").hide();
                $("#btnNewCategory").hide();
            });
        });
    </script>
</head>
<body>
    <bairong:Message runat="server"/>
    <form id="myForm" runat="server">
    <table cellpadding="3" cellspacing="3" width="95%" align="center">
        <tr>
            <td align="left" width="18%">
                敏感词：
            </td>
            <td align="left">
                <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"
                    Width="220" ID="tbName" runat="server" />
            </td>
        </tr>
        <tr>
            <td align="left">
                等级：
            </td>
            <td align="left">
                <asp:DropDownList ID="ddlGrade" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlGrade_SelectedIndexChanged">
                    <asp:ListItem Selected="True" Text="禁用" Value="1"></asp:ListItem>
                    <asp:ListItem Text="审核" Value="2"></asp:ListItem>
                    <asp:ListItem Text="替换" Value="3"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr id="trReplacement" runat="server">
            <td align="left">
                分类：
            </td>
            <td align="left">
                <asp:DropDownList ID="ddlCategory" runat="server">
                </asp:DropDownList>
                <asp:TextBox ID="tbCategory" runat="server" MaxLength="18" class="colorblur" onfocus="this.className='colorfocus';"
                    onblur="this.className='colorblur';" Width="220" Style="display: none"></asp:TextBox>
                <span id="snewcategory" style="cursor: hand" runat="server">新建分类</span> <span id="schoicecategory"
                    style="display: none; cursor: hand" runat="server">选择分类</span>
            </td>
        </tr>
        <tr>
            <td align="left">
                <asp:Literal ID="ltlReplacement" runat="server">替换为：</asp:Literal> 
            </td>
            <td align="left">
                <asp:TextBox ID="tbReplacement" runat="server" MaxLength="18" class="colorblur" onfocus="this.className='colorfocus';"
                    onblur="this.className='colorblur';" Width="220" Text="******"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
            <asp:Button ID="btnNewCategory" class="button" runat="server" Text="确定" OnClick="btnNewCategory_OnClick" style="display:none" />
                <asp:Button class="button" ID="Ok" Text="确 定" OnClick="Ok_OnClick" runat="server" />
                &nbsp;&nbsp;
                <asp:Button class="button" ID="Cancel" Text="取 消" runat="server" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
