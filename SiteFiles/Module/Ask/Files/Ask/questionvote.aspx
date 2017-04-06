<%@ Page Language="C#" Inherits="SiteServer.Ask.Pages.QuestionVote" %>
<%@ Register TagPrefix="ctrl" TagName="Theme" Src="include/theme.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <ctrl:Theme runat="server"></ctrl:Theme>
    
    <style type="text/css">
        .qnbox_l5
        {
            height: 300px;
            width: 400px;
            border: none;
            overflow: auto;
        }
        .box_con
        {
            padding: 15px;
        }
    </style>
</head>
<body style="background: #fff">
    <div class="qnbox_l5">
        <div class="box_con f14px ln22">
            <p class="black center">
                (本页仅显示至少获得1票的回答者ID及得票数)</p>
            <p class="hack5px">
            </p>
            <p class="line_part2">
            </p>
            <p class="hack5px">
            </p>
            <table width="300" align="center" border="0" cellspacing="0" cellpadding="0" class="black"
                style="margin: 0 auto;">
                <tr>
                    <td height="30" colspan="3" class="b">
                       感谢您的参与！&nbsp;<span class="orange"><asp:Literal ID="ltlVoteAdd" runat="server"></asp:Literal></span>
                    </td>
                </tr>
                <tr>
                    <td height="30" colspan="3" class="b">
                       当前投票结果：
                    </td>
                </tr>
                <asp:Repeater ID="rptVote" runat="server">
                <ItemTemplate>
                    <tr>
                        <td width="120" height="30" align="right">
                            <a href="#" class="orange b" target="_blank">
                                <asp:Literal ID="ltlUserName" runat="server"></asp:Literal></a>：
                        </td>
                        <td>
                            <asp:Literal ID="ltlVoteRate" runat="server"></asp:Literal>
                        </td>
                        <td align="left" width="100">
                            <asp:Literal ID="ltlVoteCounts" runat="server"></asp:Literal>
                        </td>
                    </tr>
                    </ItemTemplate>
                </asp:Repeater>
               
            </table>
            <p class="hack5px">
            </p>
            <p class="line_part2">
            </p>
            <p class="hack5px">
            </p>
        </div>
    </div>
</body>
</html>
