<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundGatherDatabaseRuleAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>

<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script language="JavaScript" type="text/JavaScript">

function hideBoxAndShowMessage(){
	var selects = document.getElementsByTagName("SELECT");
	var objects = document.getElementsByTagName("OBJECT");
	for(var i = 0; i < selects.length; i++) {
		selects[i].style.visibility="hidden";
	}
	for(var i = 0; i < objects.length; i++) {
		objects[i].style.visibility="hidden";
	}
	document.getElementById('success').style.display = 'block';
}
</script>
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<bairong:Message runat="server"></bairong:Message>
<form runat="server">
  <div id="success" style="position:absolute;z-index:300;height:120px;width:320px;left:50%;top:120px;margin-left:-150px;margin-top:-80px; display:none">
    <div class="column" style="position:absolute;z-index:300;width:100%;left:4px;top:5px;height:90px;font-size:14px;background-color:#FFFFFF">
      <div class="columntitle">操作提示</div>
      <div class="content" style="height:64px;line-height:150%;" align="center"><BR />
        <img border="0" src="../pic/animated_loading.gif" align="absmiddle" />&nbsp;正在验证采集规则, 请稍候...
        <BR /><BR />
      </div>
    </div>
  </div>
  <DIV class="column">
<div class="columntitle">
        <asp:Literal id="literalTitle" runat="server" />数据库采集规则 </div>
  <table cellpadding="1" width="100%" height="380" align="center">
        <tr>
        <td colspan="2" height="320" align="left" valign="top"><div style="PADDING-RIGHT: 0px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; PADDING-TOP: 0px">
            <asp:panel id="GatherRuleBase" runat="server" Visible="false">
              <table cellpadding="5" cellspacing="3" width="95%" align="center">
                <tr>
                  <td width="140" align="left"><bairong:help HelpText="采集规则的显示名称" Text="采集规则名称：" runat="server" ></bairong:help>
                  </td>
                  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="25" MaxLength="50" id="GatherRuleName" runat="server"/>
                  </td>
                </tr>
                <tr>
                  <td align="left"><bairong:help HelpText="选择栏目，采集到的内容将添加到此栏目中" Text="采集到栏目：" runat="server" ></bairong:help>
                  </td>
                  <td align="left"><asp:DropDownList ID="NodeIDDropDownList" runat="server"></asp:DropDownList>
                  </td>
                </tr>
                <tr>
                  <td align="left"><bairong:help HelpText="需要采集的内容数，0代表采集所有内容" Text="采集内容数：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="4" MaxLength="4" id="GatherNum" Style="text-align:right" Text="0" runat="server"/>
                    （0代表不限定）
                    <asp:RequiredFieldValidator
									ControlToValidate="GatherNum"
									ErrorMessage="*"
									Display="Dynamic"
									runat="server"/>
                    <asp:RegularExpressionValidator
									ControlToValidate="GatherNum"
									ValidationExpression="\d+"
									ErrorMessage="采集数只能是数字"
									Display="Dynamic"
									runat="server"/>
                  </td>
                </tr>
                <tr>
                  <td align="left"><bairong:help HelpText="采集的内容是否不经过审核直接添加到栏目中" Text="不经过审核：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:RadioButtonList id="IsChecked" RepeatDirection="Horizontal"
									runat="server">
                      <asp:ListItem Value="True" Selected="true">是</asp:ListItem>
                      <asp:ListItem Value="False">否</asp:ListItem>
                    </asp:RadioButtonList></td>
                </tr>
              </table>
              </asp:panel>
            <asp:panel id="GatherDatabaseLogin" runat="server" Visible="false">
              <table cellpadding="5" cellspacing="3" width="95%" align="center">
                <tr>
                  <td align="left" width="150"><bairong:help HelpText="选择数据库类型" Text="数据库类型：" runat="server" ></bairong:help>
                  </td>
                  <td align="left"><asp:DropDownList ID="DatabaseType" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DatabaseType_Changed"></asp:DropDownList>
                  </td>
                </tr>
                <tr id="DatabaseServerRow" runat="server">
                  <td align="left"><bairong:help HelpText="数据库所在的IP地址或者服务器名" Text="IP地址或者服务器名：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="DatabaseServer" runat="server" Columns="40" MaxLength="200" value="(local)"></asp:textbox>
                  </td>
                </tr>
				<tr id="DatabaseFilePathRow" runat="server">
                  <td align="left"><bairong:help HelpText="数据库的文件路径" Text="数据库文件路径：" runat="server" ></bairong:help></td>
                  <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="DatabaseFilePath" runat="server" Columns="40" MaxLength="200"></asp:textbox><br />（以“~/”开头代表系统根目录，以“@/”开头代表站点根目录）
                  </td>
                </tr>
                <TR>
                  <TD align="left"><bairong:help HelpText="登录数据库的账号" Text="登录账号：" runat="server" ></bairong:help></TD>
                  <TD align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="UserName" style="width:150px;" runat="server"></asp:textbox></TD>
                </TR>
                <TR>
                  <TD align="left"><bairong:help HelpText="登录数据库的密码" Text="登录密码：" runat="server" ></bairong:help></TD>
                  <TD align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" id="Password" style="width:150px;" runat="server" TextMode="Password"></asp:textbox>
				  <input type="hidden" runat="server" id="PasswordHidden" />
				  <input type="hidden" runat="server" id="DatabaseNameHidden" />
				  <input type="hidden" runat="server" id="RelatedTableNameHidden" />
				  <input type="hidden" runat="server" id="RelatedIdentityHidden" />
				  <input type="hidden" runat="server" id="RelatedOrderByHidden" />
                  </TD>
                </TR>
              </table>
              </asp:panel>
            <asp:panel id="GatherRelatedTable" runat="server" Visible="false">
              <table cellpadding="5" cellspacing="3" width="95%" align="center">
			  	<tr id="DatabaseNameRow" runat="server">
                  <td align="left" width="150"><bairong:help HelpText="选择需要采集的数据库名称" Text="采集数据库名称：" runat="server" ></bairong:help>
                  </td>
                  <td align="left"><asp:DropDownList ID="DatabaseName" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DatabaseName_Changed"></asp:DropDownList>
                  </td>
                </tr>
				<tr>
                  <td align="left" width="150"><bairong:help HelpText="选择需要采集的表名称" Text="采集表名称：" runat="server" ></bairong:help>
                  </td>
                  <td align="left"><asp:DropDownList ID="RelatedTableName" runat="server" AutoPostBack="true" OnSelectedIndexChanged="RelatedTable_Changed"></asp:DropDownList>
                  </td>
                </tr>
				<tr>
                  <td align="left" width="150"><bairong:help HelpText="选择需要采集表的主键字段名称" Text="主键字段名称：" runat="server" ></bairong:help>
                  </td>
                  <td align="left"><asp:DropDownList ID="RelatedIdentity" runat="server"></asp:DropDownList>
                  </td>
                </tr>
				<tr>
                  <td align="left" width="150"><bairong:help HelpText="选择需要采集表的排序字段名称" Text="排序字段名称：" runat="server" ></bairong:help>
                  </td>
                  <td align="left"><asp:DropDownList ID="RelatedOrderBy" runat="server"></asp:DropDownList>
                  </td>
                </tr>
				<tr>
                  <td align="left"><bairong:help HelpText="是否按排序字段倒序采集" Text="倒序采集：" runat="server" ></bairong:help>
                  </td>
                  <td align="left">
				  	<asp:RadioButtonList id="IsOrderByDesc" RepeatDirection="Horizontal" runat="server">
                      <asp:ListItem Value="True" Selected="true">是</asp:ListItem>
                      <asp:ListItem Value="False">否</asp:ListItem>
                    </asp:RadioButtonList>
                  </td>
                </tr>
				<tr>
                  <td align="left"><bairong:help HelpText="是否按排序字段倒序采集" Text="Where条件语句：" runat="server" ></bairong:help>
                  </td>
                  <td align="left">
				  	<asp:TextBox ID="WhereString" runat="server" TextMode="MultiLine" Rows="4" Columns="60"></asp:TextBox>
                  </td>
                </tr>
              </table>
              </asp:panel>
            <asp:panel id="GatherTableMatch" runat="server" Visible="false">
              <table cellpadding="5" cellspacing="3" width="95%" align="center">
			  	<tr>
			  	<td align="left">
					<input type="hidden" id="TableMatchIDHidden" runat="server" />
					<style>
						.ColumnsListBox
						{
							width:320px;
							height:220px;
							border: solid 1px #000000;
						}
						.ColumnsToMatchListBox
						{
							width:160px;
							height:220px;
							border: solid 1px #000000;
						}
					</style>
					<table cellpadding="0" width="530" align="left">
					  <tr>
						<td align="center"><bairong:help HelpText="前台发布表的名称及字段" Text="采集数据库：" runat="server" ></bairong:help><asp:Literal ID="TableName" runat="server"></asp:Literal></td>
						<td width="50"></td>
						<td align="center"><bairong:help HelpText="发布到后台的内容表名称及字段" Text="内容数据库：" runat="server" ></bairong:help><asp:Literal ID="TableNameToMatch" runat="server"></asp:Literal></td>
					  </tr>
					  <tr>
						<td align="right" valign="top">
							<asp:ListBox ID="Columns" runat="server" SelectionMode="Single" Rows="14" class="ColumnsListBox"></asp:ListBox>        </td>
						<td height="100%"><table height="100%" cols="1" cellpadding="0" width="100%">
							<tr>
							  <td align="center" valign="middle">
								<p><asp:Button class="button" id="Add" text=" <- " onclick="Add_OnClick" runat="server" /></p>
								<p><asp:Button class="button" id="Delete" text=" -> " onclick="Delete_OnClick" runat="server" /></p>
							  </td>
							</tr>
						</table></td>
						<td valign="top" >
							<asp:ListBox ID="ColumnsToMatch" runat="server" SelectionMode="Single" Rows="14" class="ColumnsToMatchListBox"></asp:ListBox>        </td>
					  </tr>
					</table>
				</td>
				</tr>
              </table>
              </asp:panel>
            <asp:panel id="Done" runat="server" Visible="false">
              <SPAN class="mainTitle">完成!</SPAN> <BR>
              <BR>
              <DIV> 操作成功。<BR>
                </asp:Panel>
            </DIV>
            </asp:panel>
          <asp:Panel id="OperatingError" runat="server" Visible="false">
            <span class="mainTitle"></span> <STRONG>发生错误</STRONG> <br>
            <br>
            <div> 执行向导过程中出错 </div>
            <br>
            <DIV><B><U>错误信息</U></B>:
              <asp:Label ID="ErrorLabel" runat="server"></asp:Label>
            </DIV>
            </asp:Panel>
        </td>
        </tr>
        
        <tr style="BACKGROUND-POSITION:center 50%; BACKGROUND-IMAGE:url(../pic/line.gif); BACKGROUND-REPEAT:repeat-x">
          <td width="30%">&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td colspan="2"><table cellpadding="0" cellspacing="0" width="100%" border="0" align="center" >
              <tr >
                <td align="right"><span style="padding-right:30 "><span style="padding-right:30 "></span> <span style="padding-right:30 "></span>
                  <asp:Button class="button" ID="Previous" OnClick="PreviousPanel" runat="server" Text="< 上一步"></asp:Button>
                  &nbsp;
                  <asp:Button class="button" id="Next" onclick="NextPanel" runat="server" text="下一步 >"></asp:button>
                  <span style="padding-right:30 "></span></span></td>
              </tr>
            </table></td>
        </tr>
      </table>
	 </DIV>
  </TD>
  </TR>
  </TBODY>
  </TABLE>
  </TD>
  </TR>
  </TBODY>
  </TABLE>
</form>
</body>
</HTML>
