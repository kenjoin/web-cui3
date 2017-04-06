<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundSeoKeywordTrends" %>
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
  <div class="columntitle">关键字搜索量查询</div>
  <div class="columncontent" style="height:25px;">
    <form method="get">
      &nbsp;
      关键字：
      <input name="Keyword" type="text" size="50" value="<%=GetKeyword()%>" class="colorblur" onFocus="this.className='colorfocus';" onBlur="this.className='colorblur';">
      &nbsp;
      <input type="submit" class="button" value="查 询" style="margin-bottom:0px;">
    </form>
  </div>
</DIV>
<br>
<div id="DetailControl" runat="server">
  <DIV class="column">
    <div class="columntitle">关键字搜索量查询 结果</div>
    <TABLE width="100%" border=0 align=center cellPadding=0 
cellSpacing=0>
      <TBODY>
      
        <TD 
    style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" 
    align=middle><TABLE width="100%" border=0 cellPadding=1 cellSpacing=1 
      bgColor=#dbe9f4 style="MARGIN-BOTTOM: 5px">
            <TBODY>
              <TR bgColor=#f3f8fc>
                <TD height="26" colSpan=4>搜索量:</TD>
              </TR>
              <TR align=middle bgColor=#f3f8fc>
                <TD width="25%" height="26">当日搜索量</TD>
                <TD width="25%" height="26">一周平均搜索量</TD>
                <TD width="25%" height="26">一月平均搜索量</TD>
                <TD width="25%" height="26">一季度平均搜索量</TD>
              </TR>
              <TR align=middle bgColor=#ffffff>
                <TD height="26" id=RankToday style="FONT-WEIGHT: bold"><bairong:NoTagText id="RankToday" runat="server" /></TD>
                <TD height="26" id=RankwkAvg style="FONT-WEIGHT: bold"><bairong:NoTagText id="RankwkAvg" runat="server" /></TD>
                <TD height="26" id=RankmosAvg style="FONT-WEIGHT: bold"><bairong:NoTagText id="RankmosAvg" runat="server" /></TD>
                <TD height="26" id=RankmosChange style="FONT-WEIGHT: bold"><bairong:NoTagText id="RankmosChange" runat="server" /></TD>
              </TR>
            </TBODY>
          </TABLE>
          <script type="text/javascript">
function imgLoad(){
	document.getElementById('Loading').style.display = "none";
	document.getElementById('TrendsFigure').style.display = "";
	document.getElementById('FigureMessage').style.display = "none";
}

function imgError(){
	document.getElementById('Loading').style.display = "none";
	document.getElementById('TrendsFigure').style.display = "none";
	document.getElementById('FigureMessage').style.display = "";
}
</script>
          <TABLE width="100%" border=0 align=center cellPadding=0 cellSpacing=0>
            <TBODY>
              <TR>
                <TD class=navalexa align=middle><B>搜索量走势图</B></TD>
              </TR>
              <TR>
                <TD 
    style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" 
    align=middle><TABLE cellSpacing=0 cellPadding=0 align=center border=0>
                    <TBODY>
                      <TR>
                        <TD align=middle colSpan=6><img id="TrendsFigure" src="http://www.google.com/trends/viz?hl=zh-CN&q=<%=GetKeyword()%>&date=all&geo=CN&graph=weekly_img&sa=N" width="580" height="260" onload="imgLoad()" onerror="imgError()" style="COLOR: red;display:none" /> <img src = "../Pic/loading.gif" id="Loading" width="16" height="16" />
                          <div id="FigureMessage" style="display:none">搜索量太小，无法生成走势图。</div></TD>
                      </TR>
                    </TBODY>
                  </TABLE></TD>
              </TR>
            </TBODY>
          </TABLE>
          <div id="RelatedKeywordsControl" runat="server">
            <TABLE style="MARGIN-BOTTOM: 5px" cellSpacing=1 cellPadding=1 width="100%" 
      bgColor=#dbe9f4 border=0>
              <TBODY>
                <TR bgColor=#f3f8fc>
                  <TD height="26" colspan="2">相关关键字及被搜索比例:</TD>
                </TR>
                <TR bgColor=#f3f8fc>
                  <TD width="25%" height="26">相关关键字</TD>
                  <TD width="75%" height="26">被搜索比例</TD>
                </TR>
                <bairong:NoTagText id="RelatedKeywords" runat="server" />
              </TBODY>
            </TABLE>
          </div></TD>
      </TR>
        </TBODY>
    </TABLE>
  </div>
</div>
</body>
</html>