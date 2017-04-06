<%@ Page Language="C#" Inherits="SiteServer.Space.Photo.Pages.Modal.Rotate" %>
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
    <td><nobr><asp:Image ImageUrl="~/sitefiles/bairong/icons/photo/rotateLeft.gif" class="sppIcon" runat="server"></asp:Image><a href="javascript:undefined;" onclick="rdl_SetRotation(false);">逆时针左转</a></nobr></td>
    <td width="100%" align="center">
		<style>
#idDiv{width:75px;height:75px;text-align:center;padding:6px;filter:progid:DXImageTransform.Microsoft.Matrix(M11=1.0, sizingmethod="auto expand");}
</style>
<script>
var sFilter="filter : progid:DXImageTransform.Microsoft.Matrix(";
var fM11,fM12,fM21,fM22,fDx,fDy,sType,sMethod;
var oDiv,oCodeDiv;
var i=0;
var deg = 0;

function rdl_SetRotation(isRight) {
if (isRight) {
	deg += 90;
}else{
	deg -= 90;
}
var deg2rad=Math.PI*2/360;
rad=deg*deg2rad;
costheta = Math.cos(rad);
sintheta = Math.sin(rad);
with (oDiv.filters.item(0)) {
M11=costheta;M12=-sintheta;M21=sintheta;M22=costheta;
}
rdl_UpdateMatrix();
}

function rdl_DoAnimation(){
oDiv.onfilterchange=rdl_DoAnimation;
i+=5;
if (i>359) {
i=0;
oDiv.onfilterchange=null;
}
rdl_SetRotation(i);
}

function rdl_UpdateMatrix() {
with (oDiv.filters.item(0)) {
fM11=Math.round(M11*10)/10;fM12=Math.round(M12*10)/10;fM21=Math.round(M21*10)/10;fM22=Math.round(M22*10)/10;
fDx=Math.round(Dx*10)/10;fDy=Math.round(Dy*10)/10;sType=FilterType;sMethod=SizingMethod;
}
//oCodeDiv.innerText="M11="+fM11+",M12="+fM12+",M21="+fM21+",M22="+fM22;
setHiddenValue();
}

function setHiddenValue(){
	_get("<%=M11.ClientID%>").value = fM11;
	_get("<%=M12.ClientID%>").value = fM12;
	_get("<%=M21.ClientID%>").value = fM21;
	_get("<%=M22.ClientID%>").value = fM22;
}

function rdl_Load(e){
oDiv=document.all("idDiv");
oCodeDiv=document.all("idCodeDiv");
rdl_UpdateMatrix();
}

function rdl_DoHFlip(e){
with (oDiv.filters.item(0)) {M11=0-M11;M12=0-M12;}
rdl_UpdateMatrix();
}

function rdl_DoVFlip(e){
with (oDiv.filters.item(0)) {M21=0-M21;M22=0-M22;}
rdl_UpdateMatrix();
}

window.onload=rdl_Load;
</script>

<input type="hidden" id="M11" value="1" runat="server" />
<input type="hidden" id="M12" value="0" runat="server" />
<input type="hidden" id="M21" value="0" runat="server" />
<input type="hidden" id="M22" value="1" runat="server" />
<div id=idParentDiv><div id=idDiv>
<asp:Image ID="Square" runat="server"></asp:Image>
</div></div>
	</td>
    <td><nobr><asp:Image ImageUrl="~/sitefiles/bairong/icons/photo/rotateRight.gif" class="sppIcon" runat="server"></asp:Image><a href="javascript:undefined;" onclick="rdl_SetRotation(true);">顺时针右转</a></nobr></td>
  </tr>
  <tr>
  	<td colspan="3" align="center"><a href="javascript:undefined;" onclick="rdl_DoHFlip();">左右反转</a> &nbsp;&nbsp; <a href="javascript:undefined;" onclick="rdl_DoVFlip();">上下反转</a></td>
  </tr>
</table>
</div>
<br />
<div class="ButtonBar" style="text-align:center">
	<button ID="SubmitButton" OnServerClick="SubmitButton_ServerClick" CausesValidation="true" runat="server" class="button">确定</button>&nbsp;&nbsp;
	<button ID="CancelButton" runat="server" class="button">取消</button>
</div>

</asp:content>
