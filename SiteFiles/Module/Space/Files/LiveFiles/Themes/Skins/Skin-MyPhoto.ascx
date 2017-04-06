<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<table cellspacing="0" class="pheader" border=0 style="width:100%;" height="22">
  <tr>
    <td class="mod_tlc" width=6 nowrap>&nbsp;</td>
    <td width="100%" align="left" class="modhead">Starlying</td>
    <td class="mod_trc" width=6 nowrap>&nbsp;</td>
  </tr>
</table>
<table border=0 cellpadding="0" cellspacing=0 style="width:100%;" class="partsmb">
  <tr>
  
  <td align="left" class="bvBody">
  
    <div class="SUWizContent">填写需要添加/修改的文章信息。完成后，请单击“保存”。</div>
    <div class="SULayoutArea">个人照片&nbsp;<A href="../EditPhoto.aspx">(编辑)</A></div>
    <div class="SUWizContent">
    
    <table align="center" width="100%">
      <tr>
      <td colspan="2">
        <table width="100%" align="center" cellpadding="3" cellspacing="3">
          <tr>
            <td colspan="2"><img height="127" src="3.jpg" width="190" border="0" /><br />
            </td>
          </tr>
          <tr>
            <td colspan="2">
			<div>
				<span><img height="40" src="2.jpg" width="60" border="0" /></span>
				<span><img height="40" src="1.jpg" width="60" border="0" /></span>
				<span><img height="40" src="4.jpg" width="60" border="0" /></span>			</div>
          </td>
          </tr>
        </table>      
      </td>
      </tr>
    </table>

  <div class="SULayoutArea">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><span class="bold" style="cursor:hand;" onClick="ToggleVisible('Attributes_Contents',Attributes_ContentsImg,'<%=RootUrl%>/livefiles/images/icon/toggleUp.gif','<%=RootUrl%>/livefiles/images/icon/toggleDown.gif'); return false;">个人信息</span></td>
        <td width="16" align="16"><IMG id="Attributes_ContentsImg" onClick="ToggleVisible('Attributes_Contents',this,'<%=RootUrl%>/livefiles/images/icon/toggleUp.gif','<%=RootUrl%>/livefiles/images/icon/toggleDown.gif'); return false;" alt="点击显示或隐藏内容" src="<%=RootUrl%>/livefiles/images/icon/toggleDown.gif" border="0" style="cursor:hand;"></td>
      </tr>
    </table>
  </div>
  <div id="Attributes_Contents" class="SUWizContent" style="display:;">
    <table cellpadding="3" width="95%" align="center">
      <tr>
        <td width="120" align="left">真实姓名:        </td>
        <td align="left"><asp:Label ID="RealName" runat="server"></asp:Label>        </td>
      </tr>
      <tr>
        <td width="120" align="left">性别:        </td>
        <td align="left"><asp:Label ID="Gender" runat="server"></asp:Label>        </td>
      </tr>
      <tr>
        <td width="120" align="left">年龄:        </td>
        <td align="left"><asp:Label ID="Age" runat="server"></asp:Label>        </td>
      </tr>
    </table>
  </div>
  </td>
  
  </tr>
  
</table>
