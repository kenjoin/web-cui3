<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<table border=0 cellpadding="0" cellspacing=0 style="width:100%;">
<tr>
	<td align="left" class="bvBody">
		<div class="opaquePartMain">
			<div class="SULayoutArea"><span class="bold">数目设置</span></div>
				<div class="SUWizContent">
					<table width="100%" border="0" cellpadding="0" cellspacing="5">
					<tr>
						<td width="220">博客文章列表的每页显示数量:</td>
						<td width="290">
							<asp:TextBox Columns="10" MaxLength="50"  id="BlogContentPageNum" runat="server" />
							<asp:RequiredFieldValidator ControlToValidate="BlogContentPageNum" ErrorMessage=" *" Display="Dynamic" runat="server" />
							<asp:RegularExpressionValidator ControlToValidate="BlogContentPageNum" ValidationExpression="\d+" Display="Dynamic" ErrorMessage=" *" runat="server"/></td>
					</tr>
					</table>
					<br>
				</div>
		
		<div class="SULayoutArea"><span class="bold">评论选项</span></div>
        <div class="SUWizContent">
            
            <div id="ctl03_PingingPanel">
	
                <table cellpadding="0" cellspacing="5" border="0">
                  <tr>
                    <td class="SSDs">是否允许匿名回复(选中此项则其他用户可以匿名发表评论)。</td>
                    <td class="SSDs" width="*"><asp:CheckBox ID="IsBlogAcceptAnonymousComment" Text="允许匿名回复" runat="server"></asp:CheckBox></td>
              </tr></table>
            
		</div>
        </div>

				<div class="SULayoutArea"><span class="bold">保密设置</span></div>
			<div id="CCardArea">
				  <div class="SUWizContent">
				保密设置决定谁可以查看您的博客。您可以选择让所有人或者只有您可以看到您的博客。 
				<asp:RadioButtonList ID="BlogPermission" runat="server"></asp:RadioButtonList>
		      </div>
</div>

	        
			
    	        
			    <div class="SaveRow" align="right"><asp:Button ID="saveButton" runat="server" Text="保 存"></asp:Button>&nbsp;<asp:Button ID="cancelButton" runat="server" Text="取 消"></asp:Button></div>
	  </div>
		
	</td>
</tr>
</table>