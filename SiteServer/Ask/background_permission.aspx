<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.Ask.BackgroundPages.BackgroundPermission" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<bairong:Code type="Calendar" runat="server" />
<bairong:Code type="Prototype" runat="server" />
<script language="javascript" type="text/javascript">
function _toggleTab(no,totalNum){
	Element.removeClassName("tab"+no, "tabOff");
	Element.addClassName("tab"+no, "tabOn");
	Element.show("column"+no);
	for (var i = 1; i <= totalNum; i++){
		if (i != no){
			Element.removeClassName("tab"+i, "tabOn");
			Element.addClassName("tab"+i, "tabOff");
			Element.hide("column"+i);
		}
	}
}
function _checkCol(column, className, bcheck)
{
	var elements = $(column).getElementsByClassName(className);
	for(var i=0; i<elements.length; i++){
		_checkAll(elements[i], bcheck);
	}
}
</script>
<script language="javascript" src="../Inc/auxiliary.js"></script>
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <div class="tab" style="margin-left:30px; margin-bottom:0px;">
    <div id="tab1" onClick="_toggleTab(1,3);" class="tabOn" style="cursor:pointer">基本设置</div>
    <div id="tab2" onClick="_toggleTab(2,3);" class="tabOff" style="cursor:pointer">帖子权限</div>
    <div id="tab3" onClick="_toggleTab(3,3);" class="tabOff" style="cursor:pointer">附件权限</div>
    <div class="clearer"></div>
  </div>
  <div id="column1" class="column">
    <table width="100%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td align="left">&nbsp;</td>
        <td align="left">&nbsp;</td>
        <td align="left">&nbsp;</td>
        <td align="left" width="50">横向扩展</td>
      </tr>
      <tr>
        <td width="120" align="left">访问论坛：</td>
        <td width="200" align="left"><asp:RadioButtonList ID="rblIsAllowVisit" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" Value="True"></asp:ListItem>
            <asp:ListItem Text="否" Value="False" Selected="true"></asp:ListItem>
          </asp:RadioButtonList></td>
        <td align="left">关闭后，用户将不能访问站点的任何页面</td>
        <td align="center"><input type="checkbox" name="horizontal" value="IsAllowVisit" /></td>
      </tr>
      <tr>
        <td width="120" align="left">隐身登录：</td>
        <td width="200" align="left"><asp:RadioButtonList ID="rblIsAllowHide" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" Value="True"></asp:ListItem>
            <asp:ListItem Text="否" Value="False" Selected="true"></asp:ListItem>
          </asp:RadioButtonList></td>
        <td align="left">开启后，用户可以隐身登陆站点</td>
        <td align="center"><input type="checkbox" name="horizontal" value="IsAllowHide" /></td>
      </tr>
      <tr>
        <td width="120" align="left">个性签名：</td>
        <td width="200" align="left"><asp:RadioButtonList ID="rblIsAllowSignature" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" Value="True"></asp:ListItem>
            <asp:ListItem Text="否" Value="False" Selected="true"></asp:ListItem>
          </asp:RadioButtonList></td>
        <td align="left">开启后，此用户组的用户可以使用个性签名功能</td>
        <td align="center"><input type="checkbox" name="horizontal" value="IsAllowSignature" /></td>
      </tr>
      <tr>
        <td width="120" align="left">搜索控制：</td>
        <td width="200" align="left"><asp:RadioButtonList ID="rblSearchType" runat="server"></asp:RadioButtonList></td>
        <td align="left">设置用户组的搜索权限</td>
        <td align="center"><input type="checkbox" name="horizontal" value="SearchType" /></td>
      </tr>
      <tr>
        <td width="120" align="left">两次搜索时间间隔：</td>
        <td width="200" align="left"><asp:TextBox ID="tbSearchInterval" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="120" runat="server"></asp:TextBox> 秒</td>
        <td align="left"></td>
        <td align="center"><input type="checkbox" name="horizontal" value="SearchInterval" /></td>
      </tr>
    </table>
  </div>
  <div id="column2" style="display:none" class="column">
    <table width="100%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td align="left">&nbsp;</td>
        <td align="left">&nbsp;</td>
        <td align="left">&nbsp;</td>
        <td align="left" width="50">横向扩展</td>
      </tr>
      <tr>
        <td width="120" align="left">浏览帖子：</td>
        <td width="200" align="left"><asp:RadioButtonList ID="rblIsAllowRead" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" Value="True"></asp:ListItem>
            <asp:ListItem Text="否" Value="False" Selected="true"></asp:ListItem>
          </asp:RadioButtonList></td>
        <td align="left">开启后，此用户组的用户可以浏览帖子</td>
        <td align="center"><input type="checkbox" name="horizontal" value="IsAllowRead" /></td>
      </tr>
      <tr>
        <td width="120" align="left">发表主题：</td>
        <td width="200" align="left"><asp:RadioButtonList ID="rblIsAllowPost" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" Value="True"></asp:ListItem>
            <asp:ListItem Text="否" Value="False" Selected="true"></asp:ListItem>
          </asp:RadioButtonList></td>
        <td align="left">开启后，此用户组的用户可以发表主题</td>
        <td align="center"><input type="checkbox" name="horizontal" value="IsAllowPost" /></td>
      </tr>
      <tr>
        <td width="120" align="left">回复主题：</td>
        <td width="200" align="left"><asp:RadioButtonList ID="rblIsAllowReply" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" Value="True"></asp:ListItem>
            <asp:ListItem Text="否" Value="False" Selected="true"></asp:ListItem>
          </asp:RadioButtonList></td>
        <td align="left">开启后，此用户组的用户可以回复主题</td>
        <td align="center"><input type="checkbox" name="horizontal" value="IsAllowReply" /></td>
      </tr>
      <tr>
        <td width="120" align="left">发起投票：</td>
        <td width="200" align="left"><asp:RadioButtonList ID="rblIsAllowPoll" RepeatDirection="Horizontal" runat="server">
            <asp:ListItem Text="是" Value="True"></asp:ListItem>
            <asp:ListItem Text="否" Value="False" Selected="true"></asp:ListItem>
          </asp:RadioButtonList></td>
        <td align="left">开启后，此用户组的用户可以发起投票</td>
        <td align="center"><input type="checkbox" name="horizontal" value="IsAllowPoll" /></td>
      </tr>
      <tr>
        <td align="left">每天最多发表帖子数：</td>
        <td align="left"><asp:TextBox ID="tbMaxPostPerDay" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="120" runat="server"></asp:TextBox>
          篇</td>
        <td align="left">0或留空表示不限制</td>
        <td align="center"><input type="checkbox" name="horizontal" value="MaxPostPerDay" /></td>
      </tr>
      <tr>
        <td width="120" align="left">发帖间隔：</td>
        <td width="200" align="left"><asp:TextBox ID="tbPostInterval" class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="120" runat="server"></asp:TextBox>
        秒</td>
        <td align="left">	
多少秒间隔内不能发帖，0或留空表示不限制</td>
        <td align="center"><input type="checkbox" name="horizontal" value="PostInterval" /></td>
      </tr>
    </table>
  </div>
  <div id="column3" style="display:none" class="column">
    <table width="100%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="160" align="left">&nbsp;</td>
        <td align="left">&nbsp;</td>
        <td align="left">&nbsp;</td>
        <td align="left" width="50">横向扩展</td>
      </tr>
      <tr>
        <td width="160" align="left">上传附件权限：</td>
        <td width="300" align="left"><asp:RadioButtonList ID="rblUploadType" runat="server"></asp:RadioButtonList></td>
        <td align="left">可在版块设置处设置上传附件&ldquo;奖励或扣除&rdquo;积分</td>
        <td align="center"><input type="checkbox" name="horizontal" value="UploadType" /></td>
      </tr>
      <tr>
        <td width="160" align="left">下载附件权限：</td>
        <td width="300" align="left"><asp:RadioButtonList ID="rblDownloadType" runat="server"></asp:RadioButtonList></td>
        <td align="left">可在版块设置处设置下载附件&ldquo;奖励或扣除&rdquo;积分</td>
        <td align="center"><input type="checkbox" name="horizontal" value="DownloadType" /></td>
      </tr>
      <tr>
      <td width="160" align="left">是否允许设置附件权限：</td>
      <td align="left">
      	<asp:RadioButtonList ID="rblIsAllowSetAttachmentPermissions" RepeatDirection="Horizontal" runat="server">
        	<asp:ListItem Text="允许" Value="True" ></asp:ListItem>
            <asp:ListItem Text="禁止" Value="False"></asp:ListItem>
        </asp:RadioButtonList>
      </td>
      <td align="left">0或留空表示不限制</td>
        <td align="center"><input type="checkbox" name="horizontal" value="IsAllowSetAttachmentPermissions" /></td>
    </tr>
    <tr>
      <td width="160" align="left">允许上传的最大附件大小：</td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="60" id="tbMaxSize" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="tbMaxSize"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
        <td align="left">单位K，0或留空表示不限制</td>
        <td align="center"><input type="checkbox" name="horizontal" value="MaxSize" /></td>
    </tr>
    <tr>
      <td width="160" align="left">允许上传的附件总大小：</td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="60" id="tbMaxSizePerDay" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="tbMaxSizePerDay"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
        <td align="left">每日，单位K，0或留空表示不限制</td>
        <td align="center"><input type="checkbox" name="horizontal" value="MaxSizePerDay" /></td>
    </tr>
    <tr>
      <td width="160" align="left">允许上传的附件数量：</td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="60" id="tbMaxNumPerDay" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="tbMaxNumPerDay"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/>
        个</td>
        <td align="left">每日，0或留空表示不限制</td>
        <td align="center"><input type="checkbox" name="horizontal" value="MaxNumPerDay" /></td>
    </tr>
    <tr>
      <td width="160" align="left">允许上传的附件类型：</td>
      <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Width="200" id="tbAttachmentExtensions" runat="server"/>
        <asp:RequiredFieldValidator
                        ControlToValidate="tbAttachmentExtensions"
                        ErrorMessage="*"
                        Display="Dynamic"
                        runat="server"/></td>
                        <td align="left">设置允许上传的附件扩展名，多个扩展名之间用半角逗号 "," 分割，留空为使用系统设置</td>
        <td align="center"><input type="checkbox" name="horizontal" value="AttachmentExtensions" /></td>
    </tr>
    </table>
  </div>
  
  <div class="column">
    <table width="100%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td colspan="99" class="tips">横向扩展</td>
      </tr>
      <tr>
        <td width="120" align="left">用户组权限横向设置：</td>
        <td width="200" align="left">
        <asp:ListBox ID="lbHorizontalGroup" Rows="10" runat="server"></asp:ListBox>
        </td>
        <td align="left">利用此功能可将一个或多个设置同时应用到其它用户组中，使操作更加简便<br>
操作说明:<br>
选中需要进行横向操作的权限设置后面的复选框<br>
在左边的复选框中选择需要进行横向操作的用户组<br>
然后提交即可完成横向操作<br>
注:<br>
选择用户组时可使用 &lsquo;Ctrl&rsquo; 键进行多选，也可使用 &lsquo;Shift&rsquo; 键或拖动鼠标连续选择多个版块<br>
不使用此功能，请不要选中权限设置后面的复选框和左边的复选框中版块</td>
      </tr>
      
    </table>
  </div>
  
  <table width="95%" align="center" cellspacing="0" cellpadding="0" >
    <tr>
      <td align="center"><asp:Button class="button" id="Submit" text="修 改" onclick="Submit_OnClick" runat="server"/>
        &nbsp;&nbsp;
        &nbsp;&nbsp;
        <input class="button" type="button" onClick="location.href='background_userGroup.aspx';return false;" value="返 回" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
