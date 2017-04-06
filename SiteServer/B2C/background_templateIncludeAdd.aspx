<%@ Page Language="C#" validateRequest="false" Inherits="SiteServer.B2C.BackgroundPages.BackgroundTemplateIncludeAdd" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<script>
    function changeExtension(sel,tb,holder){
        tb.value = sel.options[sel.options.selectedIndex].value;
        if (sel.options[sel.options.selectedIndex].value==""){
            holder.style.display = '';
        }else{
            holder.style.display = 'none';
        }
    }
</script>
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">
      <asp:Literal id="literalTitle" runat="server" />
      包含文件</div>
    <table width="100%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="155" align="left"><bairong:help HelpText="包含文件名" Text="包含文件名：" runat="server" ></bairong:help></td>
        <td colspan="3" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="45" MaxLength="50" id="RelatedFileName" runat="server" />
          <asp:RequiredFieldValidator
										 ControlToValidate="RelatedFileName" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator 
										 ControlToValidate="RelatedFileName" ValidationExpression="[^'\.]+" 
										 ErrorMessage="不能有文件扩展名" Display="Dynamic" runat="server"/></td>
      </tr>
      <tr>
        <td width="155" align="left"><bairong:help HelpText="模板对应的文件扩展名" Text="文件扩展名：" runat="server" ></bairong:help></td>
        <td colspan="3" align="left"><asp:DropDownList ID="CreatedFileExtNameDropDownList" runat="server"></asp:DropDownList>
          <span id="CreatedFileExtNameHolder" runat="server">&nbsp;
          <asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="16" MaxLength="50" id="CreatedFileExtName" runat="server" />
          <asp:RequiredFieldValidator
										 ControlToValidate="CreatedFileExtName" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator 
										 ControlToValidate="CreatedFileExtName" ValidationExpression="^\.[^'\.\\/]+" 
										 ErrorMessage="*" Display="Dynamic" runat="server"/>
          </span></td>
      </tr>
      <tr>
        <td width="155" align="left"><bairong:help HelpText="网页的编码" Text="网页编码：" runat="server" ></bairong:help></td>
        <td colspan="3" align="left"><asp:DropDownList id="Charset" runat="server"></asp:DropDownList></td>
      </tr>
      <tr>
        <td width="155" align="left"><bairong:help HelpText="放置HTML代码及需要嵌入的标签" Text="模板文件内容：" runat="server" ></bairong:help></td>
        <td colspan="3" align="left">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="4" align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="146" TextMode="MultiLine" id="Content" runat="server" Rows="30" Wrap="false" /></td>
      </tr>
      <tr>
        <td colspan="4" align="center"><asp:Button class="button" id="Submit" text="添 加" onclick="Submit_OnClick" runat="server" />
          &nbsp;&nbsp;&nbsp;
          <input type=button class="button" onClick="location.href='background_templateInclude.aspx?PublishmentSystemID=<%=Request.QueryString["PublishmentSystemID"]%>';" value="返 回" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</HTML>