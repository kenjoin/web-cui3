<%@ Page Language="C#" Inherits="SiteServer.CMS.BackgroundPages.BackgroundSeoMetaView" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.CMS.Controls" Assembly="SiteServer.CMS" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<user:custom type="showpopwin" runat="server" />
<DIV class="column">
  <div class="columntitle">页面元数据查询</div>
  <div class="columncontent" style="padding:4px;">
    <form method="post">
      <input type="hidden" id="publishmentSystemID" value="<%=PublishmentSystemID%>" />
      网站地址：
      <input name="SiteUrl" type="text" size="50" value="<%=GetSiteUrl()%>" class="colorblur" onFocus="this.className='colorfocus';" onBlur="this.className='colorblur';">
      &nbsp;
      <input type="submit" class="button" value="查 询" style="margin-bottom:0px;">
    </form>
  </div>
</DIV>
<br>
<div id="DetailControl" runat="server">
  <DIV class="column">
    <div class="columntitle">页面元数据详情</div>
    <TABLE width="100%" border=0 align=center cellPadding=0 cellSpacing=0>
      <TBODY>
        <TR>
          <TD><TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD vAlign=top><TABLE cellSpacing=1 cellPadding=2 width="100%" border=0>
                      <TBODY>
                        <bairong:NoTagText id="MetaView" runat="server" />
                      </TBODY>
                    </TABLE></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
        </TR>
      </TBODY>
    </TABLE>
    <input type="button" ID="SaveButton" class="button" value="保存此元数据" runat="server" />
  </div>
</div>
</body>
</html>