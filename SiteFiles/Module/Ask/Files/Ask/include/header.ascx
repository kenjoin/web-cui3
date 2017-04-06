<%@ Control Language="c#" Inherits="SiteServer.Ask.Controls.Header" %>
<link href="css/dialog.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/dialog.js"></script>
<div id="navibar" class="navibar">
    <div class="navibarR">
        <span class="webGroup">
            <asp:PlaceHolder ID="phAnonymous" runat="server"><a href="javascript:undefined;"
                onclick="dialogLogin();return false;">
                登录</a> | <a href="../UserCenter/register.aspx?returnUrl=/Ask/">注册</a> </asp:PlaceHolder>
            <asp:PlaceHolder ID="phLoggedIn" runat="server"><a href="#">
                <asp:Literal ID="ltlUserName" runat="server"></asp:Literal> - <asp:Literal ID="ltlUserGroup" runat="server"></asp:Literal></a> | 积分(<asp:Literal ID="ltlCredits" runat="server"></asp:Literal>)
                | <asp:Literal ID="ltlMyQuestion" runat="server"></asp:Literal>
                | <asp:Literal ID="ltlMyAnswer" runat="server"></asp:Literal>
                | <asp:Literal ID="ltlMessage" runat="server"></asp:Literal> |
                <asp:HyperLink ID="hlLogout" Text="退出登录" runat="server"></asp:HyperLink>
            </asp:PlaceHolder>
        </span>
    </div>
</div>
<div class="main header">
    <div class="logo">
        <span class="pic"><asp:Literal ID="ltlLogo" runat="server"></asp:Literal></span>
    </div>
    <div class="login">
        <table border="0" cellspacing="0" cellpadding="0" width="100%">
            <tbody>
                <tr>
                    <td align="right" valign="middle">
                        <div id="ad_headerbanner"></div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<div class="main">
    <div class="shadow_hd">
    </div>
</div>
<div class="main search">

<script>
var searchType = 1;
function dosearch(v){
    var frm = document.getElementById("searchFrm");
	var val = trimString(frm.word.value.replace(/　/g," "));
	searchType = v;
	
	if(val == ""){
		alert("请输入您的问题");
		frm.word.focus();
		return false;
	}else{
		var uname = '<%=UserName%>';
		if (searchType == 1){
			doSubmit();
		}else{
			if(uname == "")
			{
			    dialogLogin();
				return false;
			}
			else
			{
				doSubmit();
			}
		}
	}
}

function doSubmit(){
	var frm = document.getElementById("searchFrm");
	var val = trimString(frm.word.value.replace(/　/g," "));
	if (searchType == 1){
		frm.action = "../ask/search.aspx";
	}else{
		if(val == ""){
			frm.action = "../ask/questionto.aspx";
		}else{
			frm.action = "../ask/question.aspx";
		}
	}
	frm.submit();
}

function trimString(s){
	s=s.replace(/\r\n/g,"");
	s=s.replace(/^\s*|\s*$/g, "");
	s=s.replace(/　/g,"");
	return s;
}
</script>

    <form id="searchFrm" method="get" onsubmit="dosearch(1);return false;">
    <table border="0" cellspacing="0" cellpadding="0" width="950" align="center">
        <tbody>
            <tr>
                <td width="350" align="right">
                    <input class="inp_txt" id="word" name="word" value="<%=Request.QueryString["word"]%>"/>
                </td>
                <td width="110" align="center">
                    <input class="btn_search" type="button" onclick="dosearch(1);return false;" value="搜索答案" />
                </td>
                <td width="130" align="center">
                    <input class="btn_ask" type="button" onclick="dosearch(2);return false;" value="我要提问" />
                </td>
                <td width="10">
                    <img src="../ask/images/line_part.gif" width="3" height="66" />
                </td>
                <td align="left">
                    <span id="hotTopLink">
                        <p>
                            <div id="ad_righttext"></div>
                        </p>
                    </span>
                </td>
            </tr>
            <tr>
                <td height="8" colspan="7">
                </td>
            </tr>
        </tbody>
    </table>
    </form>
</div>

<div class="box950">
<div id="ad_bigbanner"></div>
<div class="hack10px"></div>
</div>
