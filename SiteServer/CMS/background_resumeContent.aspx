<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundResumeContent" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>

<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="Jquery" runat="server" />
<bairong:Code type="fancybox" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
<bairong:Message runat="server"></bairong:Message>
<DIV class="column" id="contents">
<div class="columntitle"><asp:Literal ID="ltlTitle" runat="server" /></div>
		<asp:DataList ID="MyDataList" ShowHeader="true" cellspacing="1" cellpadding="1" Align="center" border="0" Width="100%" runat="server" style="word-break: break-all">
			<headertemplate>
                <tr class="summary-title" style="height:25px;">
                    <td align="center" style="width:80px;">姓名</td>
                    <td align="center" style="width:40px;">性别</td>
                    <td align="center" style="width:100px;">手机号码</td>
                    <td align="center" style="width:160px;">邮箱</td>
                    <td align="center" style="width:60px;">学历</td>
                    <td align="center">毕业院校</td>
                    <td align="center" style="width:120px;">申请职位</td>
                    <td align="center" style="width:80px;">添加时间</td>
					<td align="center" style="width:40px;">&nbsp;</td>
					<td align="right" style="width:20px;"><input type="checkbox" onClick="_checkAll(document.getElementById('contents'),this.checked);" /></td>
				</tr>
			</headertemplate>
			<itemtemplate>
				<asp:Literal ID="ltlTr" runat="server"></asp:Literal>
					<td align="center" style="width:80px;"><asp:Literal ID="ltlRealName" runat="server"></asp:Literal></td>
                    <td align="center" style="width:40px;"><asp:Literal ID="ltlGender" runat="server"></asp:Literal></td>
                    <td align="center" style="width:100px;"><asp:Literal ID="ltlMobilePhone" runat="server"></asp:Literal></td>
                    <td align="center" style="width:160px;"><asp:Literal ID="ltlEmail" runat="server"></asp:Literal></td>
                    <td align="center" style="width:60px;"><asp:Literal ID="ltlEducation" runat="server"></asp:Literal></td>
                    <td align="left"><asp:Literal ID="ltlLastSchoolName" runat="server"></asp:Literal></td>
                    <td align="center" style="width:120px;">
                        <asp:Literal ID="ltlJobTitle" runat="server"></asp:Literal>
                    </td>
                    <td align="center" style="width:80px;">
						<asp:Literal ID="ltlAddDate" runat="server"></asp:Literal>
					</td>
					<td align="center" style="width:40px;">
						<asp:Literal ID="ltlViewUrl" runat="server"></asp:Literal>
					</td>
					<td align="right" style="width:20px;">
						<input type="checkbox" name="ContentIDCollection" value='<%#DataBinder.Eval(Container.DataItem, "ID")%>' />
					</td>
				</tr>
			</itemtemplate>
		</asp:DataList>
		
</DIV>

<table width="95%" align="center">
	<tr>
		<td align="right">
				<table cellpadding="0" cellspacing="0" width="100%">
					<tr>
						<td>
							<bairong:sqlpager id="MySqlPager" PagerStyle="NextPrev" PagingMode="NonCached" runat="server" Width="100%" cellspacing=0 border=0></bairong:sqlpager>						</td>
					</tr>
					<tr><td>
						<asp:Button class="button" id="SetIsView" Text="标记为已读" runat="server" />&nbsp;
                        <asp:Button class="button" id="SetNotView" Text="标记为未读" runat="server" />&nbsp;
						<asp:Button class="button" id="Delete" Text="删 除" runat="server" />&nbsp;
						<asp:Button class="button" id="Return" OnClick="Return_OnClick" Text="返 回" runat="server" />
					</td></tr>
				</table>
		</td>
	</tr>
</table>



</form>

</body>
</html>