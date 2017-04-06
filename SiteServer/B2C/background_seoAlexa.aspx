<%@ Page Language="C#" Inherits="SiteServer.B2C.BackgroundPages.BackgroundSeoAlexa" %>
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
  <div class="columntitle">Alexa排名查询</div>
  <div class="columncontent" style="height:25px;">
    <form method="get">
      &nbsp;
      网站地址：
      <input name="SiteUrl" type="text" size="50" value="<%=GetSiteUrl()%>" class="colorblur" onFocus="this.className='colorfocus';" onBlur="this.className='colorblur';">
      &nbsp;
      <input type="submit" class="button" value="查 询" style="margin-bottom:0px;">
    </form>
  </div>
</div>
<br>
<div id="DetailControl" runat="server">
  <div class="column">
    <div class="columntitle">Alexa排名查询 结果（
      <bairong:NoTagText id="LinkToAlexa" runat="server" />
      ）</div>
    <TABLE width="100%" border=0 align=center cellPadding=0 
cellSpacing=0>
      <TBODY>
      
        <TD 
    style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" 
    align=middle><div class="data">
            <table width="100%" cellpadding="2" cellspacing="2" class="DoubleColorTable">
              <tr>
                <td width="70">站点名称:</td>
                <td align="left"><bairong:NoTagText id="SiteName" runat="server" /></td>
                <td width="70">电子信箱:</td>
                <td align="left"><bairong:NoTagText id="Email" runat="server" /></td>
              </tr>
              <tr>
                <td width="70">网站简介:</td>
                <td colspan="5" align="left"><bairong:NoTagText id="SiteDesc" runat="server" /></td>
              </tr>
              <tr>
                <td width="70">综合排名:</td>
                <td width="0" align="left" style="color:red;"><bairong:NoTagText id="Rank" runat="server" /></td>
                <td width="70">收录日期:</td>
                <td width="0" align="left"><bairong:NoTagText id="AlexaDate" runat="server" /></td>
              </tr>
              <tr>
                <td width="70">所属国家:</td>
                <td width="0" align="left"><bairong:NoTagText id="Lang" runat="server" /></td>
                <td width="70">访问速度:</td>
                <td width="0" align="left"><bairong:NoTagText id="Speed" runat="server" /></td>
              </tr>
              <tr>
                <td width="70">所属目录:</td>
                <td colspan="3" align="left"><bairong:NoTagText id="Cat" runat="server" /></td>
              </tr>
              <tr>
                <td colspan="7">&nbsp;</td>
              </tr>
            </table>
          </div>
          <div id="IPAndPVControl" runat="server">
            <TABLE style="MARGIN-BOTTOM: 5px" cellSpacing=1 cellPadding=1 width="100%" 
      bgColor=#dbe9f4 border=0>
              <TBODY>
                <TR bgColor=#f3f8fc>
                  <TD height="26" colspan="2">根据 ALEXA 统计数据估算网站 IP &amp; PV 值，以下数据仅做参考之用、根据网站工具条用户比例不同会产生不同误差率:</TD>
                </TR>
                <TR align=middle bgColor=#f3f8fc>
                  <TD width="50%" height="26">日均 IP 访问量[一周平均]</TD>
                  <TD width="50%" height="26">日均 PV 浏览量[一周平均]</TD>
                </TR>
                <TR align=middle>
                  <TD width="50%" height="26">≈
                    <bairong:NoTagText id="IPwkAvg" runat="server" /></TD>
                  <TD width="50%" height="26">≈
                    <bairong:NoTagText id="PVwkAvg" runat="server" /></TD>
                </TR>
              </TBODY>
            </TABLE>
          </div>
          <div>
            <table border="0" cellspacing="0" cellpadding="0" width="100%">
              <tr>
                <td width="50%" valign="top"><div id="WhereDoPeopleGoControl" runat="server">
                    <TABLE style="MARGIN-BOTTOM: 5px" cellSpacing=1 cellPadding=1 width="100%" 
      bgColor=#dbe9f4 border=0>
                      <TBODY>
                        <TR bgColor=#f3f8fc>
                          <TD height="26" colspan="2">下属子站点及被访问比例:</TD>
                        </TR>
                        <TR align=middle bgColor=#f3f8fc>
                          <TD width="50%" height="26">子站点网址</TD>
                          <TD height="26">近月访问比例</TD>
                        </TR>
                        <bairong:NoTagText id="WhereDoPeopleGo" runat="server" />
                      </TBODY>
                    </TABLE>
                  </div></td>
                <td width="10">&nbsp;</td>
                <td width="50%" valign="top"><div id="RelatedLinksControl" runat="server">
                    <TABLE style="MARGIN-BOTTOM: 5px" cellSpacing=1 cellPadding=1 width="100%" 
      bgColor=#dbe9f4 border=0>
                      <TBODY>
                        <TR bgColor=#f3f8fc>
                          <TD height="26" colspan="2">访问此站的用户还访问:</TD>
                        </TR>
                        <TR align=middle bgColor=#f3f8fc>
                          <TD width="50%" height="26">站点</TD>
                          <TD height="26">地址</TD>
                        </TR>
                        <bairong:NoTagText id="RelatedLinks" runat="server" />
                      </TBODY>
                    </TABLE>
                  </div></td>
              </tr>
            </table>
          </div>
          <div class=rankimg>
            <style type="text/css">
<!--
body {
font-size: 12px;
font-family: 宋体;
color:#333333;
background-color:#ffffff;
}
.title3
{
width:203px;height:31px;background:url('../pic/alexa/titlebg3.gif');line-height: 120%;padding-top:8px;cursor:hand;
font-size:13;
}
.title4
{
width:203px;height:31px;background:url('../pic/alexa/titlebg4.gif');color: #ffffff;font-weight: normal;padding-top:8px;cursor:hand;
font-weight: bold;font-size:13;
}
.title5
{
width:80px;background:url('../pic/alexa/titlebg2.gif');line-height: 120%;padding-top:2px;cursor:hand;
font-size:13;
}
.title6
{
width:80px;background:url('../pic/alexa/titlebg1.gif');color: #ffffff;font-weight: normal;padding-top:2px;cursor:hand;
font-weight: bold;font-size:13;
}
.tdbg5{
FONT-SIZE: 12px; 
COLOR: #555555; 
WORD-BREAK: break-all; 
LINE-HEIGHT: 20px; 
FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; 
BACKGROUND-COLOR: #f2f2f2; 
TEXT-ALIGN: center;
BORDER: #8897c5 1px solid;
MARGIN: auto auto 4px; 
width:666px;
}
.titletable{
BORDER-top: #8897c5 1px solid;
BORDER-left: #8897c5 1px solid;
BORDER-right: #8897c5 1px solid;
BACKGROUND-COLOR: #D8E4F4;
width:680px;
}
-->
</style>
            <script language='javascript'>
var SmalltID=0;
function ShowSmallTabs(SmallID){
  if(SmallID!=SmalltID){
    SmallTabTitle[SmalltID].className='title5';
    SmallTabTitle[SmallID].className='title6';
    SmallTabs[SmalltID].style.display='none';
    SmallTabs[SmallID].style.display='';
    SmalltID=SmallID;
  }
}
</script> 
            <script language='javascript'>
var tID=0;
function ShowTabs(ID){
  if(ID!=tID){
	if(ID==0){ShowSmallTabs(0);}
	if(ID==1){ShowSmallTabs(5);}
	if(ID==2){ShowSmallTabs(10);}
    TabTitle[tID].className='title3';
    TabTitle[ID].className='title4';
    SecondTabs[tID].style.display='none';
    SecondTabs[ID].style.display='';
    tID=ID;
  }
}
</script>
            <table align='center' cellpadding='0' cellspacing='0' class="titletable">
              <tr align='center'>
                <td>&nbsp;</td>
                <td id='TabTitle' class='title4' onclick='ShowTabs(0)'>全球排名</td>
                <td id='TabTitle' class='title3' onclick='ShowTabs(1)'>每百万人中平均访问人数</td>
                <td id='TabTitle' class='title3' onclick='ShowTabs(2)'>人均页面浏览量(PV)</td>
                <td>&nbsp;</td>
              </tr>
            </table>
            <table align='center' cellpadding='5' cellspacing='1' class='tdbg5'>
              <tr class='tdbg'>
                <td height='100' valign='top'><table align='center' cellpadding='0' cellspacing='0'>
                    <tbody id='SecondTabs' style='display:'>
                      <tr align='center'>
                        <td id='SmallTabTitle' class='title6' onclick='ShowSmallTabs(0)'>3月曲线</td>
                        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(1)'>6月曲线</td>
                        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(2)'>1年曲线</td>
                        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(3)'>2年曲线</td>
                        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(4)'>总曲线</td>
                        <td>&nbsp;</td>
                      </tr>
                    </tbody>
                    <tbody id='SecondTabs' style='display:none'>
                      <tr align='center'>
                        <td id='SmallTabTitle' class='title6' onclick='ShowSmallTabs(5)'>3月曲线</td>
                        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(6)'>6月曲线</td>
                        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(7)'>1年曲线</td>
                        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(8)'>2年曲线</td>
                        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(9)'>总曲线</td>
                        <td>&nbsp;</td>
                      </tr>
                    </tbody>
                    <tbody id='SecondTabs' style='display:none'>
                      <tr align='center'>
                        <td id='SmallTabTitle' class='title6' onclick='ShowSmallTabs(10)'>3月曲线</td>
                        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(11)'>6月曲线</td>
                        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(12)'>1年曲线</td>
                        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(13)'>2年曲线</td>
                        <td id='SmallTabTitle' class='title5' onclick='ShowSmallTabs(14)'>总曲线</td>
                        <td>&nbsp;</td>
                      </tr>
                    </tbody>
                  </table>
                  <table width='100%'  border='0' align='center' cellpadding='5' cellspacing='1' class='tdbg5'>
                    <tr class='tdbg'>
                      <td height='100' valign='top'><table width='95%' align='center' cellpadding='2' cellspacing='1' bgcolor='#FFFFFF'>
                          <tbody id='SmallTabs' style='display:'>
                            <tr class='tdbg'>
                              <td class='tdbg5' align='right' ><img border=0 src="http://traffic.alexa.com/graph?w=643&h=368&r=3m&z=&y=t&u=<%=GetSiteUrl()%>/&u="></td>
                            </tr>
                          </tbody>
                          <tbody id='SmallTabs' style='display:none'>
                            <tr class='tdbg'>
                              <td class='tdbg5' align='right' ><img border=0 src="http://traffic.alexa.com/graph?w=643&h=368&r=6m&z=&y=t&u=<%=GetSiteUrl()%>/&u="></td>
                            </tr>
                          </tbody>
                          <tbody id='SmallTabs' style='display:none'>
                            <tr class='tdbg'>
                              <td class='tdbg5' align='right' ><img border=0 src="http://traffic.alexa.com/graph?w=643&h=368&r=1y&z=&y=t&u=<%=GetSiteUrl()%>/&u="></td>
                            </tr>
                          </tbody>
                          <tbody id='SmallTabs' style='display:none'>
                            <tr class='tdbg'>
                              <td class='tdbg5' align='right' ><img border=0 src="http://traffic.alexa.com/graph?w=643&h=368&r=2y&z=&y=t&u=<%=GetSiteUrl()%>/&u="></td>
                            </tr>
                          </tbody>
                          <tbody id='SmallTabs' style='display:none'>
                            <tr class='tdbg'>
                              <td class='tdbg5' align='right' ><img border=0 src="http://traffic.alexa.com/graph?w=643&h=368&r=max&z=&y=t&u=<%=GetSiteUrl()%>/&u="></td>
                            </tr>
                          </tbody>
                          <tbody id='SmallTabs' style='display:none'>
                            <tr class='tdbg'>
                              <td class='tdbg5' align='right' ><img border=0 src="http://traffic.alexa.com/graph?w=643&h=368&r=3m&z=&y=r&u=<%=GetSiteUrl()%>/&u="></td>
                            </tr>
                          </tbody>
                          <tbody id='SmallTabs' style='display:none'>
                            <tr class='tdbg'>
                              <td class='tdbg5' align='right' ><img border=0 src="http://traffic.alexa.com/graph?w=643&h=368&r=6m&z=&y=r&u=<%=GetSiteUrl()%>/&u="></td>
                            </tr>
                          </tbody>
                          <tbody id='SmallTabs' style='display:none'>
                            <tr class='tdbg'>
                              <td class='tdbg5' align='right' ><img border=0 src="http://traffic.alexa.com/graph?w=643&h=368&r=1y&z=&y=r&u=<%=GetSiteUrl()%>/&u="></td>
                            </tr>
                          </tbody>
                          <tbody id='SmallTabs' style='display:none'>
                            <tr class='tdbg'>
                              <td class='tdbg5' align='right' ><img border=0 src="http://traffic.alexa.com/graph?w=643&h=368&r=2y&z=&y=r&u=<%=GetSiteUrl()%>/&u="></td>
                            </tr>
                          </tbody>
                          <tbody id='SmallTabs' style='display:none'>
                            <tr class='tdbg'>
                              <td class='tdbg5' align='right' ><img border=0 src="http://traffic.alexa.com/graph?w=643&h=368&r=max&z=&y=r&u=<%=GetSiteUrl()%>/&u="></td>
                            </tr>
                          </tbody>
                          <tbody id='SmallTabs' style='display:none'>
                            <tr class='tdbg'>
                              <td class='tdbg5' align='right' ><img border=0 src="http://traffic.alexa.com/graph?w=643&h=368&r=3m&z=&y=p&u=<%=GetSiteUrl()%>/&u="></td>
                            </tr>
                          </tbody>
                          <tbody id='SmallTabs' style='display:none'>
                            <tr class='tdbg'>
                              <td class='tdbg5' align='right' ><img border=0 src="http://traffic.alexa.com/graph?w=643&h=368&r=6m&z=&y=p&u=<%=GetSiteUrl()%>/&u="></td>
                            </tr>
                          </tbody>
                          <tbody id='SmallTabs' style='display:none'>
                            <tr class='tdbg'>
                              <td class='tdbg5' align='right' ><img border=0 src="http://traffic.alexa.com/graph?w=643&h=368&r=1y&z=&y=p&u=<%=GetSiteUrl()%>/&u="></td>
                            </tr>
                          </tbody>
                          <tbody id='SmallTabs' style='display:none'>
                            <tr class='tdbg'>
                              <td class='tdbg5' align='right' ><img border=0 src="http://traffic.alexa.com/graph?w=643&h=368&r=2y&z=&y=p&u=<%=GetSiteUrl()%>/&u="></td>
                            </tr>
                          </tbody>
                          <tbody id='SmallTabs' style='display:none'>
                            <tr class='tdbg'>
                              <td class='tdbg5' align='right' ><img border=0 src="http://traffic.alexa.com/graph?w=643&h=368&r=max&z=&y=p&u=<%=GetSiteUrl()%>/&u="></td>
                            </tr>
                          </tbody>
                        </table></td>
                    </tr>
                  </table></td>
              </tr>
            </table>
          </div></TD>
      </TR>  </TBODY>
    </TABLE>
  </div>
</div>
</body>
</html>