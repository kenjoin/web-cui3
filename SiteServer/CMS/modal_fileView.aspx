<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.Modal.FileView" Trace="false"%>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<bairong:Code type="JQuery" runat="server" />
<title>文件属性查看</title>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<user:custom type="showpopwin" runat="server" />
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <table cellpadding="3" width="95%" align="center">
    <tr>
      <td align="center"><DIV class="column" id="contents">
          <table cellpadding="3" cellspacing="3" border="0" width="100%">
            <tr class="summary-title" style="height:25px;">
              <td align="left" colspan="2"> 文件属性 </td>
            </tr>
            <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';" style="height:25px;">
              <td width="33%" align="left"><bairong:help HelpText="文件名称" Text="文件名称：" runat="server" ></bairong:help></td>
              <td align="left"><asp:Literal ID="ltlFileName" runat="server"></asp:Literal></td>
            </tr>
            <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';" style="height:25px;">
              <td width="33%" align="left"><bairong:help HelpText="文件类型" Text="文件类型：" runat="server" ></bairong:help></td>
              <td align="left"><asp:Literal ID="ltlFileType" runat="server"></asp:Literal></td>
            </tr>
            <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';" style="height:25px;">
              <td width="33%" align="left"><bairong:help HelpText="文件位置" Text="位置：" runat="server" ></bairong:help></td>
              <td align="left"><asp:Literal ID="ltlFilePath" runat="server"></asp:Literal></td>
            </tr>
            <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';" style="height:25px;">
              <td width="33%" align="left"><bairong:help HelpText="文件大小" Text="大小：" runat="server" ></bairong:help></td>
              <td align="left"><asp:Literal ID="ltlFileSize" runat="server"></asp:Literal></td>
            </tr>
            <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';" style="height:25px;">
              <td width="33%" align="left"><bairong:help HelpText="文件创建时间" Text="创建时间：" runat="server" ></bairong:help></td>
              <td align="left"><asp:Literal ID="ltlCreationTime" runat="server"></asp:Literal></td>
            </tr>
            <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';" style="height:25px;">
              <td width="33%" align="left"><bairong:help HelpText="文件最后修改时间" Text="最后修改时间：" runat="server" ></bairong:help></td>
              <td align="left"><asp:Literal ID="ltlLastWriteTime" runat="server"></asp:Literal></td>
            </tr>
            <tr class="tdbg" onMouseOver="this.className='tdbg-dark';" onMouseOut="this.className='tdbg';" style="height:25px;">
              <td width="33%" align="left"><bairong:help HelpText="文件最后访问时间" Text="最后访问时间：" runat="server" ></bairong:help></td>
              <td align="left"><asp:Literal ID="ltlLastAccessTime" runat="server"></asp:Literal></td>
            </tr>
          </table>
        </DIV></td>
    </tr>
    <tr>
      <td align="center"><asp:Literal ID="Open" runat="server"></asp:Literal>
        &nbsp;&nbsp;
        <asp:PlaceHolder ID="PlaceHolder_Edit" runat="server">
          <asp:LinkButton ID="Edit" OnClick="Edit_OnClick" runat="server" Text="修 改" />
          &nbsp;&nbsp;</asp:PlaceHolder>
        <asp:Literal ID="ChangeName" runat="server"></asp:Literal>
        &nbsp;&nbsp;
        <asp:LinkButton id="Cancel" Text="关 闭" runat="server" /></td>
    </tr>
  </table>
</form>
</body>
</HTML>
