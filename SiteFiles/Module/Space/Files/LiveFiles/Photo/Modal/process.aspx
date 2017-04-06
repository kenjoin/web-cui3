<%@ Page Language="C#" Inherits="SiteServer.Space.Photo.Pages.Modal.Process" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="TitleHolder" runat="server">
	<title><bairong:NoTagText ID="ModalTitle" runat="server" /></title>
</asp:content>
<asp:content contentplaceholderid="ContentHolder" runat="server">

<div style="PADDING-RIGHT: 0px; PADDING-LEFT: 0px; PADDING-BOTTOM: 3px; PADDING-TOP: 3px; TEXT-ALIGN: center" id=idCodeDiv><bairong:NoTagText ID="Hint" runat="server"></bairong:NoTagText></div>
<div style="PADDING-RIGHT: 2px; DISPLAY: block; PADDING-TOP: 4px; PADDING-LEFT: 2px; PADDING-BOTTOM: 4px;">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%" align="left">
		<table cellpadding="3" width="95%" align="center" id="processBarTable">
			<tr>
				<td>
					<div id="progressBar" style="margin: 1em 2em 2em 2em;">
						<div id="theMeter">
							<div id="progressBarText" style="font-weight: bold; padding: 5px;">生成进度: <span id="prgressBarPercetage">0</span>%</div>
							<div id="progressBarBox" style="width: 200px; height: 20px; border: 1px inset; background: #eee;">
								<div id="progressBarBoxContent" style="width: 0; height: 20px; border-right: 1px solid #444; background: #9ACB34;"></div>
							</div>
						</div>
					</div>

					<div style="position:relative; margin: 2em;">
						<p style=" padding-left: 25px; padding-bottom: 5px; text-align: left; vertical-align: middle; no-repeat left top;"> <span id="progressBarText"></span><br /></p>
					</div>
				</td>
			</tr>
		</table>
	</td>
  </tr>
</table>
</div>
<br />
<div class="ButtonBar" style="text-align:center">
	<button ID="SubmitButton" OnServerClick="SubmitButton_ServerClick" CausesValidation="true" runat="server" class="Default Live_Controls_Button Web_Bindings_Base">确定</button>
</div>

</asp:content>
