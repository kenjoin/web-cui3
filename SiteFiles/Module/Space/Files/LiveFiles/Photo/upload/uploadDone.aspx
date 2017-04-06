<%@ Page SmartNavigation="False" Language="C#" Inherits="SiteServer.Space.Photo.Pages.PhotoUploadDone" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ContentHolder" runat="server">

<table width="100%" border=0 cellspacing=0>
  <tr>
	<td width="8"></td>
	<td class="bvBody" align="center"><asp:DataList ID="MyDataList" ItemStyle-VerticalAlign="Top" Width="100%" runat="server">
		<itemtemplate>
		  <TABLE class=Describe cellSpacing=5 cellpadding="6" align="left">
			<TBODY>
			  <TR>
				<TD class=ThisPhoto align="left" valign="top" style="width:260px;"><%# GetImageHtml((int)DataBinder.Eval(Container.DataItem, "ID"), (DateTime)DataBinder.Eval(Container.DataItem, "AddDate"), (string)DataBinder.Eval(Container.DataItem, "ImageType")) %></TD>
				<TD class=As valign="top"><input type="hidden" id="ContentID" runat="server" value='<%# DataBinder.Eval(Container.DataItem, "ID") %>' /><TABLE cellPadding=5>
					<TBODY>
					  <TR>
						<TD class=Label>标题:</TD>
						<TD>
							<asp:TextBox style="WIDTH: 350px" ID="Title" Text='<%# DataBinder.Eval(Container.DataItem, "Title") %>' runat="server" CssClass="text"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="Title" ErrorMessage="*" Display="Dynamic" runat="server"/>
						</TD>
					  </TR>
					  <TR>
						<TD class=Label>图片介绍:</TD>
						<TD><asp:TextBox CssClass="text" style="WIDTH: 350px" TextMode="MultiLine" ID="Description" Text='<%# DataBinder.Eval(Container.DataItem, "Content") %>' runat="server" Rows="6" Wrap="true"></asp:TextBox></TD>
					  </TR>
					  <TR>
						<TD class=Label>Tags:</TD>
						<TD>
							<asp:TextBox style="WIDTH: 350px" ID="Tags" runat="server" CssClass="text"></asp:TextBox>
						</TD>
					  </TR>
					</TBODY>
				  </TABLE></TD>
			  </TR>
			</TBODY>
		  </TABLE>
		</itemtemplate>
	  </asp:DataList>
	</td>
	<td width='8'><img  width=8 height=1></td>
  </tr>
</table>
<div style="text-align:center">
	<asp:Button ID="saveButton" onclick="Submit_OnClick" runat="server" Text="保 存" CssClass="button"></asp:Button>&nbsp;&nbsp;&nbsp;<asp:Button ID="cancelButton" CausesValidation="false" OnClick="Cancel_OnClick" runat="server" Text="取 消" CssClass="button"></asp:Button>
</div>
	
</asp:content>