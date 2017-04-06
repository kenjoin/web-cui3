<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.Modal.TaskAdd" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title id="MyTitle" runat="server"></title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script type="text/javascript" language="javascript">
function selectAll(isChecked)
{
	for(var i=0; i<document.getElementById('<%=CreateChannelIDCollection.ClientID%>').options.length; i++)
	{
		document.getElementById('<%=CreateChannelIDCollection.ClientID%>').options[i].selected = isChecked;
	}
}
</script>
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="2" width="95%" align="center">
    <tr>
      <td align="left" width="120"><bairong:help HelpText="任务名称" Text="任务名称：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="35" MaxLength="200" id="TaskName" runat="server" />
        <asp:RequiredFieldValidator ControlToValidate="TaskName" ErrorMessage=" *" Display="Dynamic" runat="server" />
        <asp:RegularExpressionValidator runat="server" ControlToValidate="TaskName"
						ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
    </tr>
    <tr>
      <td align="left"><bairong:help HelpText="任务执行的频率" Text="任务执行频率：" runat="server" ></bairong:help></td>
      <td align="left"><asp:DropDownList ID="FrequencyType" AutoPostBack="true" OnSelectedIndexChanged="FrequencyType_SelectedIndexChanged" runat="server"></asp:DropDownList>
        <asp:PlaceHolder id="PlaceHolder_PeriodIntervalMinute" Visible="false" runat="server"> &nbsp;周期：&nbsp;每
          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" Text="30" id="PeriodInterval" runat="server" />
          &nbsp;
          <asp:DropDownList ID="PeriodIntervalType" runat="server"></asp:DropDownList>
          <asp:RequiredFieldValidator ControlToValidate="PeriodInterval" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator
						ControlToValidate="PeriodInterval"
						ValidationExpression="\d+"
						Display="Dynamic"
						ErrorMessage="必须为大于零的整数"
						runat="server"/>
          <asp:CompareValidator 
						ControlToValidate="PeriodInterval" 
						Operator="GreaterThan" 
						ValueToCompare="0" 
						Display="Dynamic"
						ErrorMessage="必须为大于零的整数"
						runat="server"/>
        </asp:PlaceHolder></td>
    </tr>
    <asp:PlaceHolder id="PlaceHolder_NotPeriod" runat="server">
      <tr>
        <td align="left"><bairong:help HelpText="任务执行的开始时刻" Text="任务开始时刻：" runat="server" ></bairong:help></td>
        <td align="left"><table width="100%" border="0" cellspacing="1" cellpadding="1">
            <tr>
              <td>日期：</td>
              <td><asp:DropDownList ID="StartDay" runat="server"></asp:DropDownList></td>
              <td>星期：</td>
              <td><asp:DropDownList ID="StartWeekday" runat="server"></asp:DropDownList></td>
              <td>小时：</td>
              <td><asp:DropDownList ID="StartHour" runat="server"></asp:DropDownList></td>
            </tr>
          </table></td>
      </tr>
    </asp:PlaceHolder>
    <tr>
      <td align="left" width="120"><bairong:help HelpText="任务描述" Text="任务描述：" runat="server" ></bairong:help></td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="55" TextMode="MultiLine" Rows="2" MaxLength="200" id="Description" runat="server" /></td>
    </tr>
    <tr style="BACKGROUND-POSITION:center 50%; BACKGROUND-IMAGE:url(../pic/line.gif); BACKGROUND-REPEAT:repeat-x">
      <td colspan="2" align="left">&nbsp;</td>
    </tr>
    <asp:PlaceHolder id="PlaceHolder_Publish" Visible="false" runat="server">
      <tr>
        <td align="left"><bairong:help HelpText="选择任务需要将文件发布到的服务器" Text="选择发布服务器：" runat="server" ></bairong:help></td>
        <td align="left"><asp:CheckBoxList ID="PublishMachineNames" RepeatDirection="Horizontal" RepeatColumns="3" runat="server"></asp:CheckBoxList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="选择需要发布的文件夹或文件的相对路径" Text="相对路径：" runat="server" ></bairong:help></td>
        <td align="left"><asp:TextBox ID="PublishPaths" runat="server" TextMode="MultiLine" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="65" Rows="5" Text="/"></asp:TextBox>
          <asp:RequiredFieldValidator ControlToValidate="PublishPaths" ErrorMessage=" *" Display="Dynamic" runat="server" />
          <div class="tips">路径可以是文件夹或文件路径，多个路径以换行分隔，示例：<br />
            /channels<br />
            /contents</div></td>
      </tr>
      <asp:PlaceHolder id="PlaceHolder_Publish_JustInTime" Visible="false" runat="server">
        <tr>
          <td align="left"><bairong:help HelpText="实时监听的变动类型" Text="监听变动类型：" runat="server" ></bairong:help></td>
          <td align="left"><asp:CheckBoxList ID="PublishFileWatchTypes" RepeatDirection="Horizontal" runat="server"></asp:CheckBoxList></td>
        </tr>
        <tr>
          <td align="left"><bairong:help HelpText="实时监听的文件类型" Text="监听文件类型：" runat="server" ></bairong:help></td>
          <td align="left"><asp:TextBox ID="PublishFilter" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" runat="server"></asp:TextBox>
            <br>
            (“*.txt”代表监听文本文件，“*.*”或空代表监听所有文件) </td>
        </tr>
      </asp:PlaceHolder>
    </asp:PlaceHolder>
    <asp:PlaceHolder id="PlaceHolder_Create" Visible="false" runat="server">
      <tr>
        <td align="left"><bairong:help HelpText="选择需要生成的对象" Text="需要生成的对象：" runat="server" ></bairong:help></td>
        <td align="left"><asp:ListBox ID="CreateChannelIDCollection" SelectionMode="Multiple" Rows="13" runat="server"></asp:ListBox>
          &nbsp;&nbsp;
          <asp:CheckBox ID="CreateIsCreateAll" runat="server" onClick="selectAll(this.checked);" Text="全部"></asp:CheckBox></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="生成文件的类型" Text="生成类型：" runat="server" ></bairong:help></td>
        <td align="left"><asp:CheckBoxList ID="CreateCreateTypes" RepeatDirection="Horizontal" runat="server"></asp:CheckBoxList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="生成站点地图(SiteMap)" Text="生成站点地图(SiteMap)：" runat="server" ></bairong:help></td>
        <td align="left"><asp:CheckBox ID="CreateIsCreateSiteMap" runat="server" Text="生成"></asp:CheckBox></td>
      </tr>
    </asp:PlaceHolder>
    <asp:PlaceHolder id="PlaceHolder_Gather" Visible="false" runat="server">
      <tr>
        <td align="left"><bairong:help id="GatherHelp" Text="需要定时采集的的对象：" runat="server" ></bairong:help></td>
        <td align="left"><asp:ListBox ID="GatherListBox" SelectionMode="Multiple" Rows="10" runat="server"></asp:ListBox>
          <asp:RequiredFieldValidator ControlToValidate="GatherListBox" ErrorMessage=" *" Display="Dynamic" runat="server" /></td>
      </tr>
    </asp:PlaceHolder>
    <asp:PlaceHolder id="PlaceHolder_Backup" Visible="false" runat="server">
      <tr>
        <td align="left"><bairong:help HelpText="选择备份服务器" Text="选择备份服务器：" runat="server" ></bairong:help></td>
        <td align="left"><asp:CheckBoxList ID="BackupMachineNames" RepeatDirection="Horizontal" RepeatColumns="3" runat="server"></asp:CheckBoxList></td>
      </tr>
      <tr>
        <td align="left"><bairong:help HelpText="选择备份类型" Text="选择备份类型：" runat="server" ></bairong:help></td>
        <td align="left"><asp:DropDownList ID="BackupType" runat="server"></asp:DropDownList></td>
      </tr>
      <asp:PlaceHolder id="PlaceHolder_Backup_PublishmentSystem" Visible="false" runat="server">
        <tr>
          <td align="left"><bairong:help HelpText="选择需要备份的站点" Text="需要备份的站点：" runat="server" ></bairong:help></td>
          <td align="left"><asp:ListBox ID="BackupPublishmentSystemIDCollection" SelectionMode="Multiple" Rows="8" runat="server"></asp:ListBox>
            &nbsp;&nbsp;
            <asp:CheckBox ID="BackupIsBackupAll" runat="server" onClick="selectAll(this.checked);" Text="全部"></asp:CheckBox></td>
        </tr>
      </asp:PlaceHolder>
    </asp:PlaceHolder>
    <tr>
      <td colspan="2" align="center"><asp:Button class="button" id="Ok" text="确 定" OnClick="Ok_OnClick" runat="server" />
        &nbsp;&nbsp;
        <asp:Button class="button" id="Cancel" text="取 消" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
