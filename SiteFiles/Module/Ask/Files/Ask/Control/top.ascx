<%@ Control Language="C#" Inherits="SiteServer.Ask.BackgroundPages.Control.top" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>

 <script language="javascript" src="js/common.js" type="text/javascript"></script>
 <script type="text/javascript" src="js/zDialog.js"></script>
 <link id="themeCss" rel="stylesheet" type="text/css" href="css/Theme/style_blue/style.css" />
<table cellpadding="1" cellspacing="1" border="0" width="940" height="50" align="center">
    <tr>
        <td width="175">
            <img src="../ask/images/logo.jpg" border="0"  style="margin-left:2px;" ></td>
        <td valign="bottom" align="right">
            <img src="../ask/images/home.gif" border="0">&nbsp;&nbsp; <font color="Gray">Hi，欢迎您，</font><font
                color="#0B7ACF" style="font-weight: bold;"><asp:Label ID="lblUserID" runat="server"></asp:Label></font>&nbsp;&nbsp;|&nbsp;&nbsp;
            <img id="img_private" src="../images/member.gif" border="0" runat="server"><asp:Label
                ID="lblRegisterOrLogin" runat="server" Visible="false"></asp:Label>&nbsp;&nbsp;<a
                    style="text-decoration: none; color: Gray;" href="../UserCenter/main.aspx"><asp:Label
                        ID="lblUserCenter" runat="server" Text="个人中心"></asp:Label></a><asp:Label ID="lblUserCenter0"
                            runat="server" Text="个人中心" Visible="false"></asp:Label>
        </td>
        <td width="5px">
        </td>
    </tr>
    <tr>
        <td style="height: 74px; width: 100%;" colspan="3">
            <div class="div_HeaderTheme">
                <table cellpadding="0" cellspacing="0" border="0" height="100%">
                    <tr>
                        <td width="200px" style="height: 35px">
                        </td>
                        <td>
                            <table cellpadding="0" cellspacing="0" border="0">
                                <tr>
                                    <td valign="top">
                                        <div>
                                            &nbsp;<input id="Txtsearch" runat="server" value="请输入您要搜索或提问的信息" type="text" onmousedown="if(intvboo){this.value='';intvboo=false}"
                                                style="border-style: none; border-width: 1px; width: 400px; color: #83878A; margin-left: 2px;
                                                margin-top: 6px;" /></div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td width="25px">
                        </td>
                        <td style="height: 30px">
                            <asp:Button ID="btnSearch" runat="server" Text="搜索答案"  CssClass="btn_Theme_0" OnClick="btnSearch_Click"
                                Height="30px" Width="100px"></asp:Button>&nbsp;
                            <asp:Button ID="btnQuestion" runat="server" Text="我要提问" CssClass="btn_Theme_1" OnClick="btnQuestion_Click"
                                Height="30px" Width="100px"></asp:Button>
                        </td>
                        <td style="padding-top:20px;">
                            &nbsp;&nbsp;
                            <a href="javascript:undefined;" onclick="changeTheme('blue')" title="蓝色主题"><img src="css/Theme/style_blue/blue_0.gif" border="0" /></a>
                            <a href="javascript:undefined;" onclick="changeTheme('purple')" title="紫色主题"><img src="css/Theme/style_purple/purple_0.gif" border="0" /></a>
                            <a href="javascript:undefined;" onclick="changeTheme('gray')" title="灰色主题"><img src="css/Theme/style_gray/gray_0.gif" border="0" /></a>
                            <a href="javascript:undefined;" onclick="changeTheme('green')" title="绿色主题"><img src="css/Theme/style_green/green_0.gif" border="0" /></a>
                            <a href="javascript:undefined;" onclick="changeTheme('red')" title="红色主题"><img src="css/Theme/style_red/red_0.gif" border="0" /></a>
                           
                           <%-- <asp:ImageButton ID="ImgBtnBlue" ToolTip="蓝色主题" runat="server" OnClick="ImgBtnBlue_Click" />
                            <asp:ImageButton ID="ImgBtnPurple" ToolTip="紫色主题" runat="server" OnClick="ImgBtnPurple_Click" />
                            <asp:ImageButton ID="ImgBtnGray" ToolTip="灰色主题" runat="server" OnClick="ImgBtnGray_Click" />
                            <asp:ImageButton ID="ImgBtnGreen" ToolTip="绿色主题" runat="server" OnClick="ImgBtnGreen_Click" />
                            <asp:ImageButton ID="ImgBtnRed" ToolTip="红色主题" runat="server" OnClick="ImgBtnRed_Click" />--%>
                            
                        </td>
                    </tr>
                </table>
                <div style="left: 1000px; position: absolute; top: 115px; width: 100%;">
                </div>
            </div>
        </td>
    </tr>
</table>

<script type="text/javascript">
function changeTheme(color){
    var csslink = document.getElementById("themeCss");
    if (csslink){
		csslink.href = csslink.href.replace(/\/style_.+\//, '/style_' + color + '/');
		setCookie("themeCss",color,100);
	}
}

// --- 设置cookie
function setCookie(name,value,days) {
  if (days) {
    var date = new Date();
    date.setTime(date.getTime()+(days*24*60*60*1000));
    var expires = "; expires="+date.toGMTString();
  }
  else expires = "";
  document.cookie = name+"="+value+expires+"; path=/";
}
//--- 获取cookie
function getCookie(name) {
  var nameEQ = name + "=";
  var ca = document.cookie.split(';');
  for(var i=0;i < ca.length;i++) {
    var c = ca[i];
    while (c.charAt(0)==' ') c = c.substring(1,c.length);
    if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
  }
  return null;
}

function skin(){
 var themeCss="";
 if(getCookie("themeCss")!=null){
      themeCss=getCookie("themeCss");
   }
   if (themeCss && themeCss.length > 0){
	   changeTheme(themeCss);
   }
}

skin();


var intvboo=true;
var intid=1;
function tab(ID)
{  for(var i=0;i<=3;i++) 
    { 
        if(ID==i) 
        { 
           $('Tab_'+i).className='on'; 
        } 
        else 
        { 
           $('Tab_'+i).className='off'; 
        } 
    } 
    intid=ID;
} 
function $(ID) 
{ 
  return document.getElementById(ID); 
} 

function doso()
{
   document.getElementById("+btnSearch.ClientID+").click();   
   return false;  
}
var colorid="";

function login()
{
   var diag = new Dialog();
	  diag.Width = 320;
	  diag.Height = 350;
	  diag.Title = "用户登录";
	  diag.URL = "login.aspx";
	  diag.show();
}
function checksearch()
{
   txtsearch = document.getElementById("<%=Txtsearch.ClientID %>");

   if(txtsearch.value=="")
   {
    alert("请输入您要搜索或提问的信息");
    txtsearch.focus();
    return false;
   }
   if(txtsearch.value=="请输入您要搜索或提问的信息")
   {
    alert("请输入您要搜索或提问的信息");
    txtsearch.focus();
    return false;
   }
  return true;
 }
 function checkquestion()
 {
   var classcounts=SiteServer.Ask.BackgroundPages.Control.top.getclasscounts();
   if(classcounts.value == "0")
   {
     alert("对不起!后台没有添加分类,无法提问!");
     return false;
   }
   return true;
 }
</script>

