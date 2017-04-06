<%@ Page SmartNavigation="False" Language="C#" Inherits="SiteServer.Space.Photo.Pages.PhotoUpload" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Photo.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="ScriptHolder" runat="server">
  <script type="text/javascript" language="javascript">
	function upload_submit_form()
	{
		upload_hide_form();
		document.forms[0].encType="multipart/form-data";
		document.forms[0].submit();
		return true;
	}
	function upload_hide_form()
	{
		document.getElementById("upload_container").style.display="none";
		document.getElementById("uploading_container").style.display="block";
		document.location.href="#";
	}

//显示图片

	</script>
</asp:content>
<asp:content contentplaceholderid="ContentHolder" runat="server">
  <table border=0 cellpadding="0" cellspacing=0 style="width:100%;" class="partsmb">
    <tr>
      <td align="left" class="bvBody">
	    <div id="upload_container" style="display:">
          <div class="opaquePartMain">
            <div class="SUWizContent">
              <TABLE width="100%">
                <TBODY>
                  <TR>
                    <TD width="200" valign="top"><DIV style="BORDER-RIGHT: #eaeaea 2px solid; PADDING-RIGHT: 3px; BORDER-TOP: #eaeaea 2px solid; MARGIN-TOP: 10px; PADDING-LEFT: 3px; PADDING-BOTTOM: 3px; BORDER-LEFT: #eaeaea 2px solid; PADDING-TOP: 3px; BORDER-BOTTOM: #eaeaea 2px solid; TEXT-ALIGN: center">
                        <H4 style="MARGIN-TOP: 10px">您已经使用了本月总流量的</H4>
                        <P style="FONT-SIZE: 2.5em; MARGIN: 5px; COLOR: #63aa5a"><%=GetPercentage()%></SPAN></P>
                        <P style="MARGIN-TOP: 15px">(您每月能够使用 <BR>
                          <B>60 MB </B>的图片空间.)</P>
                      </DIV>
                      <!--<br />
                      <div> <strong>您知道吗？</strong><br />
                        <br />
                        <P class=Hint>在这里除了可以上传<SPAN class=Highlight><B>jpg,gif,bmp,png</B></SPAN>的照片外,您还可以将许多照片压缩成一个<SPAN class=Highlight><B>zip</B></SPAN>文件后一起上传! <A href="/help/photos.html#zip">如何打包?</A></P>
                        <br />
                        <strong>其它上传方式:</strong><br />
                        <br />
                        <DIV>
                          <UL>
                            <LI><A href="/photo/uploadbymail">邮件、彩信上传</A>
                            <LI><A href="/photo/uploadbyclient">客户端上传</A>
                            <LI><A href="/photo/bookmarklet">一键上传</A> </LI>
                          </UL>
                        </DIV>
                      </div>-->
					  </TD>
                    <TD style="PADDING-LEFT: 20px; line-height:22px;">
                        <strong>从您的电脑上选择照片</strong>:
			<TABLE cellSpacing=5 cellPadding=5 width=570 border=0>
					  <TBODY>
						<TR>
						  <TD><div id="selects">
								<p>1. <input id="file1" class="text" onchange="_showImage(this, 'preview')" onclick="_showImage(this, 'preview')" type="file" name="file1" size="40" runat="server" /></p>
								<p>2. <input id="file2" onchange="_showImage(this, 'preview')" onclick="_showImage(this, 'preview')" type="file" name="file2" size="40" class="text" runat="server" /></p>
								<p>3. <input id="file3" onchange="_showImage(this, 'preview')" onclick="_showImage(this, 'preview')" type="file" name="file3" size="40" class="text" runat="server" /></p>
								<p>4. <input id="file4" onchange="_showImage(this, 'preview')" onclick="_showImage(this, 'preview')" type="file" name="file4" size="40" class="text" runat="server" /></p>
								<p>5. <input id="file5" onchange="_showImage(this, 'preview')" onclick="_showImage(this, 'preview')" type="file" name="file5" size="40" class="text" runat="server" /></p>
								<p>6. <input id="file6" onchange="_showImage(this, 'preview')" onclick="_showImage(this, 'preview')" type="file" name="file6" size="40" class="text" runat="server" /></p>
							</div></TD>
						  <TD align=left>
							<IMG src="<%=RootUrl%>/sitefiles/bairong/Icons/empty.gif" alt=图片预览 name="preview" width=120 height=90 class=myphoto id=preview>
						  </TD>
						</TR>
					  </TBODY>
					</TABLE>
		
			<strong>指定标签:</strong> <span class="Hint">(一般用照片拍摄的时间, 地点, 人物, 事件来作为标签,支持<b>空格</b>,<b>双引号</b>分开多个标签)</span><br />
				<asp:TextBox id="Tags" MaxLength="200" Size="60" runat="server" CssClass="text"/>
			<br /><br />
			<strong>控制您的照片访问权限:</strong><br />
			<asp:RadioButtonList ID="SecurityType" RepeatDirection="Horizontal" runat="server"></asp:RadioButtonList><br />
			<strong>发送到相册:</strong><br />
			<asp:CheckBox ID="IsAddToSet" Checked="false" Text="发送到相册" runat="server"></asp:CheckBox>
			<br />
			<script>
				function ShowAddToSetSection(isAddToSet)
				{
					if (isAddToSet)
					{
						_get("<%=Sets.ClientID%>").style.display = "";
						//_get("<%=AddSet.ClientID%>").style.display = "";
					}
					else
					{
						_get("<%=Sets.ClientID%>").style.display = "none";
						//_get("<%=AddSet.ClientID%>").style.display = "none";
					}
				}
			</script>
			<asp:DropDownList ID="Sets" runat="server" style="display:none;">
				<asp:ListItem Value="0" Text="请选择相册"></asp:ListItem>
			</asp:DropDownList>
			<asp:HyperLink ID="AddSet" runat="server" style="display:none;" Text="新建相册"></asp:HyperLink>
			<br />
			<strong>控制是否允许别人评论上传的图片:</strong><br />
			<asp:CheckBox ID="IsCommentable" Checked="true" Text="允许评论" runat="server"></asp:CheckBox>
                      </TD>
                  </TR>
                </TBODY>
              </TABLE>
            </DIV>
          </div>
		  <div style="text-align:center">
			  <input type="button" class="button-submit" onclick="upload_submit_form();" value="上传图片" />
			  &nbsp;
			  <asp:Button ID="cancelButton" CausesValidation="false" OnClick="Cancel_OnClick" runat="server" Text="取 消" CssClass="button"></asp:Button>
		  </div>
        </div>
        <div id="uploading_container" style="DISPLAY:none; MARGIN-LEFT: 150px; HEIGHT: 500px">
          <div class="separator"></div>
          <H3>图片上传中...<asp:Image ImageUrl="~/sitefiles/bairong/icons/loading.gif" runat="server" /></H3>
          <p> 请不要关闭本窗口！ 您可以打开新窗口继续浏览相册。</p>
        </div>
        </td>
    </tr>
  </table>
</asp:content>
