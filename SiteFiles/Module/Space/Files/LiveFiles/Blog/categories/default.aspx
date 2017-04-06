<%@ Page Language="C#" Inherits="SiteServer.Space.Blog.Pages.BlogSets" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Blog.Controls" Assembly="SiteServer.Space" %>

<asp:content contentplaceholderid="GlobalScriptHolder" runat="server">
	
</asp:content>
<asp:content contentplaceholderid="ContentHolder" runat="server">
<div class="ContainerPadding">
	<table style="width:100%;" cellspacing=0 border=0 >
      <tr>
        <td height=7></td>
      </tr>
      <tr height=18>
        <td width="6"></td>
        <td><table width="100%" border=0 cellspacing=0 class="graytitle">
            <tr class="entryhdr">
              <th width="2"></th>
              <th align="left"><strong>类别</strong></th>
              <th width=80 align="left" nowrap><strong>日志数量</strong></th>
			<space:OwnerView runat="server">
				<OwnerTemplate>
				  <th width=50 align="left" nowrap><strong>上升</strong></th>
              	  <th width=50 align="left" nowrap><strong>下降</strong></th>
				  <th width=50 align="left" nowrap></th>
            	  <th width=50 align="left" nowrap></th>
				</OwnerTemplate>
			</space:OwnerView>
            </tr>
          </table></td>
        <td width="6"></td>
      </tr>
      <tr>
        <td></td>
        <td>
        <table cellspacing=0 border=0 cellpadding="0" width='100%'>
			<space:OwnerView runat="server">
				<OwnerTemplate>
				  <asp:Repeater ID="MyRepeater" runat="server" >
					<itemtemplate>			
						<tr style="height:28px;" id="MyRepeaterItem" runat="server">
							<td width="2"></td>
							<td align="left"><span class='bmtitlewrap'><nobr><a href='<%# (int)DataBinder.Eval(Container.DataItem, "SetID") %>.aspx' class='entryttl' title="<%# (string)DataBinder.Eval(Container.DataItem, "Description") %>"><%# (string)DataBinder.Eval(Container.DataItem, "SetName") %></a></nobr></span> </td>
							<td width="80"><span class='bmcategorywrap'><%# GetArticleNum((int)DataBinder.Eval(Container.DataItem, "SetID")) %></span> </td>
							<td width='50' nowrap><asp:LinkButton Visible='<%# GetUpDownVisible((string)DataBinder.Eval(Container.DataItem, "UserID")) %>' OnClick="CommandButton_Click" CommandName="Subtract" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"SetID")%>' runat="server"><space:ClientIcon ImageUrl="up.gif" runat="server" alt="上升"></space:ClientIcon></asp:LinkButton></td>
							<td width='50' nowrap><asp:LinkButton Visible='<%# GetUpDownVisible((string)DataBinder.Eval(Container.DataItem, "UserID")) %>' OnClick="CommandButton_Click" CommandName="Add" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"SetID")%>' runat="server"><space:ClientIcon ImageUrl="down.gif" runat="server" alt="下降"></space:ClientIcon></asp:LinkButton></td>
							<td width="50" align="center"><%# GetEditHtml((string)DataBinder.Eval(Container.DataItem, "UserID"), (int)Eval("SetID")) %></td>
							<td width="50" align="center"><%# GetDeleteHtml((string)DataBinder.Eval(Container.DataItem, "UserID"), (int)Eval("SetID"), (string)DataBinder.Eval(Container.DataItem, "SetName")) %></td>
						</tr>					
					</itemtemplate>
					<separatortemplate>
					  <tr>
						<td colspan=8 class='line' height=1></td>
					  </tr>
					</separatortemplate>
				  </asp:Repeater>
				</OwnerTemplate>
				<VisitorTemplate>
					<asp:Repeater ID="MyRepeater" runat="server" >
					  <itemtemplate>
						<tr style="height:28px;">
						  <td width="2"></td>
							<td align="left"><span class='bmtitlewrap'><nobr><a href='<%# (int)DataBinder.Eval(Container.DataItem, "SetID") %>.aspx' class='entryttl' title="<%# (string)DataBinder.Eval(Container.DataItem, "Description") %>"><%# (string)DataBinder.Eval(Container.DataItem, "SetName") %></a></nobr></span> </td>
							<td width="80"><span class='bmcategorywrap'><%# GetArticleNum((int)DataBinder.Eval(Container.DataItem, "SetID")) %></span> </td>
						</tr>
					  </itemtemplate>
					  <separatortemplate>
						<tr>
						  <td colspan=8 class='line' height=1></td>
						</tr>
					  </separatortemplate>
					</asp:Repeater>
              </VisitorTemplate>
			</space:OwnerView>
        </table>
        </td>
        <td></td>
      </tr>
      <tr>
        <td height=6></td>
      </tr>
    </table>


  </div>
</asp:content>
<asp:content contentplaceholderid="NavigationHolder" runat="server">

<space:NavigationContent runat="server" title="日志索引">
	<contentsTemplate>	
		<space:BlogContentsSelector id="selector" runat="server"></space:BlogContentsSelector>
	</contentsTemplate>
</space:NavigationContent>

</asp:content>
