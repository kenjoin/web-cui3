<%@ Page SmartNavigation="False" Language="C#"  Inherits="SiteServer.Space.Space.Pages.MyCategoryAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">
	
<table cellspacing="0" class="pheader" border=0 style="width:100%;" height="22">
  <tr>
	<td class="mod_tlc" width=6 nowrap>&nbsp;</td>
	<td width="100%" align="left" class="modhead">分类管理</td>
	<td class="mod_trc" width=6 nowrap>&nbsp;</td>
  </tr>
</table>


<table border=0 cellpadding="0" cellspacing=0 style="width:100%;">
<tr>
	<td align="left" class="bvBody">
		
		<div class="opaquePartMain">
			   
				<div class="SUWizContent">填写需要添加的分类信息。完成添加后，请单击“保存”。</div>
		        <div class="SULayoutArea"><span class="bold">分类信息</span></div>
	      <div class="SUWizContent">
	        <table cellpadding="3" width="95%" align="center">
              <tr>
                <td width="130" align="left"><space:Help HelpText="此类别的名称" Text="类别名称：" runat="server" ></space:Help>                </td>
                <td width="76%" align="left"><asp:TextBox Columns="25" MaxLength="50" id="CategoryName" runat="server" CssClass="text"/>            
                    <asp:RequiredFieldValidator
			ControlToValidate="CategoryName"
			ErrorMessage="*"
			Display="Dynamic"
			runat="server"/>              
                    <asp:RegularExpressionValidator
			runat="server"
			ControlToValidate="CategoryName"
			ValidationExpression="[^']+"
			ErrorMessage="*"
			Display="Dynamic" />                </td>
              </tr>
              <tr>
                <td width="130" align="left"><space:Help HelpText="此类别所属的系统。" Text="类别所属系统：" runat="server" ></space:Help>                </td>
                <td align="left"><asp:RadioButtonList id="ApplicationType" RepeatDirection="Vertical" runat="server"> </asp:RadioButtonList></td>
              </tr>
            </table>
	      </div>
		  <div class="SaveRow"><asp:Button ID="saveButton" onclick="Submit_OnClick" runat="server" Text="保 存" CssClass="button"></asp:Button>&nbsp;&nbsp;<asp:Button ID="cancelButton" CausesValidation="false" onclick="Cancel_OnClick" runat="server" Text="取 消" CssClass="button"></asp:Button></div>
	  </div>
	</td>
</tr>
</table>
	
</asp:content>