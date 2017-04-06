<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundSeoIndexed" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="site" Namespace="SiteServer.B2C.Controls" Assembly="SiteServer.B2C" %>
<html>
<head>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</head>
<body>
<DIV class="column">
  <div class="columntitle">搜索引擎收录查询</div>
  <div class="columncontent" style="height:25px;">
    <form method="get">
      &nbsp;
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
    <div class="columntitle">收录详情</div>
    <TABLE width="100%" border=0 align=center cellPadding=0 cellSpacing=0>
      <TBODY>
        <TR>
          <TD><TABLE width="100%" height="30" border=0 cellPadding=0 cellSpacing=0>
              <TBODY>
                <TR>
                  <TD style="PADDING-LEFT: 2px" noWrap><bairong:NoTagText id="SiteLink" runat="server" />
                    的收录结果</TD>
                  <TD noWrap align=right>&nbsp;</TD>
                </TR>
              </TBODY>
            </TABLE>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
                <TR>
                  <TD vAlign=top><TABLE cellSpacing=1 cellPadding=2 width="100%" border=0>
                      <TBODY>
                        <TR align=middle bgColor=#cad2d9>
                          <TD height="28" noWrap bgColor=#cad2d9>搜索引擎</TD>
                          <TD height="28"><A href="http://www.baidu.com/" target=_blank><IMG 
                  height=16 alt="baidu 百度搜索" 
                  src="../pic/seo/icon_baidu.gif" 
                  width=16 align=absMiddle border=0>百度</A></TD>
                          <TD height="28"><A href="http://www.google.com/" target=_blank><IMG 
                  height=16 alt="Google 搜索" 
                  src="../pic/seo/icon_google.gif" 
                  width=16 align=absMiddle border=0>Google</A></TD>
                          <TD height="28"><A href="http://www.yahoo.cn/" target=_blank><IMG 
                  height=16 alt="Yahoo 搜索" 
                  src="../pic/seo/icon_yahoo.gif" 
                  width=16 align=absMiddle border=0>Yahoo</A></TD>
                          <TD height="28"><A href="http://www.live.com/" target=_blank><IMG 
                  height=16 alt="Live 搜索" 
                  src="../pic/seo/icon_live.gif" 
                  width=16 align=absMiddle border=0>Live</A></TD>
                          <TD height="28"><A href="http://www.sogou.com/" target=_blank><IMG 
                  height=16 alt="sogou 搜狗搜索" 
                  src="../pic/seo/icon_sohu.gif" 
                  width=16 align=absMiddle border=0>搜狗</A></TD>
                        </TR>
                        <TR align=middle bgColor=#eaecef>
                          <TD width="8%" height="28" noWrap bgColor=#cad2d9 title=搜寻引擎收录情况>收录情况</TD>
                          <TD width="7%" height="28"><bairong:NoTagText id="BaiduSite" runat="server" /></TD>
                          <TD width="7%" height="28"><bairong:NoTagText id="GoogleSite" runat="server" /></TD>
                          <TD width="8%" height="28"><bairong:NoTagText id="YahooSite" runat="server" /></TD>
                          <TD width="7%" height="28"><bairong:NoTagText id="LiveSite" runat="server" /></TD>
                          <TD width="7%" height="28"><bairong:NoTagText id="SogouSite" runat="server" /></TD>
                        </TR>
                        <TR align=middle bgColor=#eaecef>
                          <TD height="28" noWrap bgColor=#cad2d9 title=外部网站链接到你的网站>反向链接</TD>
                          <TD height="28"><bairong:NoTagText id="BaiduLink" runat="server" /></TD>
                          <TD height="28"><bairong:NoTagText id="GoogleLink" runat="server" /></TD>
                          <TD height="28"><bairong:NoTagText id="YahooLink" runat="server" /></TD>
                          <TD height="28"><bairong:NoTagText id="LiveLink" runat="server" /></TD>
                          <TD height="28"><bairong:NoTagText id="SogouLink" runat="server" /></TD>
                        </TR>
                      </TBODY>
                    </TABLE></TD>
                </TR>
              </TBODY>
            </TABLE></TD>
        </TR>
      </TBODY>
    </TABLE>
  </div>
</div>
</body>
</html>