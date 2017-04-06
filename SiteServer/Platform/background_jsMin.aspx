<%@ Page Language="C#" validateRequest="false" Inherits="BaiRong.BackgroundPages.BackgroundBasePage" %>
<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<HTML>
<HEAD>
<!--#include file="../inc/html_head.inc"-->
<user:custom type="style" runat="server"></user:custom>
<script>
String.prototype.has=function(c){return this.indexOf(c)>-1;};function jsmin(comment,input,level){if(input===undefined){input=comment;comment='';level=2;}else if(level===undefined||level<1||level>3){level=2;}if(comment.length>0){comment+='\n';}var a='',b='',EOF=-1,LETTERS='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz',DIGITS='0123456789',ALNUM=LETTERS+DIGITS+'_$\\',theLookahead=EOF;function isAlphanum(c){return c!=EOF&&(ALNUM.has(c)||c.charCodeAt(0)>126);}function get(){var c=theLookahead;if(get.i==get.l){return EOF;}theLookahead=EOF;if(c==EOF){c=input.charAt(get.i);++get.i;}if(c>=' '||c=='\n'){return c;}if(c=='\r'){return'\n';}return' ';}get.i=0;get.l=input.length;function peek(){theLookahead=get();return theLookahead;}function next(){var c=get();if(c=='/'){switch(peek()){case'/':for(;;){c=get();if(c<='\n'){return c;}}break;case'*':get();for(;;){switch(get()){case'*':if(peek()=='/'){get();return' ';}break;case EOF:throw'Error: Unterminated comment.';}}break;default:return c;}}return c;}function action(d){var r=[];if(d==1){r.push(a);}if(d<3){a=b;if(a=='\''||a=='"'){for(;;){r.push(a);a=get();if(a==b){break;}if(a<='\n'){throw'Error: unterminated string literal: '+a;}if(a=='\\'){r.push(a);a=get();}}}}b=next();if(b=='/'&&'(,=:[!&|'.has(a)){r.push(a);r.push(b);for(;;){a=get();if(a=='/'){break;}else if(a=='\\'){r.push(a);a=get();}else if(a<='\n'){throw'Error: unterminated Regular Expression literal';}r.push(a);}b=next();}return r.join('');}function m(){var r=[];a='\n';r.push(action(3));while(a!=EOF){switch(a){case' ':if(isAlphanum(b)){r.push(action(1));}else{r.push(action(2));}break;case'\n':switch(b){case'{':case'[':case'(':case'+':case'-':r.push(action(1));break;case' ':r.push(action(3));break;default:if(isAlphanum(b)){r.push(action(1));}else{if(level==1&&b!='\n'){r.push(action(1));}else{r.push(action(2));}}}break;default:switch(b){case' ':if(isAlphanum(a)){r.push(action(1));break;}r.push(action(3));break;case'\n':if(level==1&&a!='\n'){r.push(action(1));}else{switch(a){case'}':case']':case')':case'+':case'-':case'"':case'\'':if(level==3){r.push(action(3));}else{r.push(action(1));}break;default:if(isAlphanum(a)){r.push(action(1));}else{r.push(action(3));}}}break;default:r.push(action(1));break;}}}return r.join('');}jsmin.oldSize=input.length;ret=m(input);jsmin.newSize=ret.length;return comment+ret;}
</script>
<script type="text/javascript">
function $(i) {
	return document.getElementById(i);
}
function go() {
	$('output').value = jsmin('', $('input').value, $('level').value);
	$('output').style.display = $('statstitle').style.display = $('stats').style.display = 'block';
	$('oldsize').value = jsmin.oldSize;
	$('newsize').value = jsmin.newSize;
	$('ratio').value = (Math.round(jsmin.newSize / jsmin.oldSize * 1000) / 10) + '%';
}
</script>
<style type="text/css">
#comment {
	width:95%;
	height:4em;
}
#input {
	width:95%;
	height:10em;
}
#go {
	font-weight:bold;
}
#outputtitle, #statstitle, #stats {
	display:none;
}
#oldsize, #newsize, #ratio {
	text-align:right;
	width:4em;
}
#output {
	width:95%;
	height:10em;
	display:none;
}
h2 {
	margin-bottom:0;
}
</style>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
</HEAD>
<body>
<form id="myForm" runat="server">
  <bairong:Message runat="server"></bairong:Message>
  <DIV class="column">
    <div class="columntitle">JS脚本压缩</div>
    <table width="95%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td width="160" align="left"><bairong:help HelpText="在此输入需要压缩的JS代码。" Text="需要压缩的代码：" runat="server" ></bairong:help></td>
        <td align="left"><textarea name="input" rows="10" id="input" class="colorblur" onFocus="this.className='colorfocus';" onBlur="this.className='colorblur';"></textarea></td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="JS的压缩级别。" Text="压缩级别：" runat="server" ></bairong:help></td>
        <td align="left"> Level:&nbsp;
          <select id="level">
            <option value="1">最小压缩</option>
            <option value="2" selected="selected">普通压缩</option>
            <option value="3">超级压缩</option>
          </select>
          &nbsp;&nbsp;
          <input type="button" value="JS脚本压缩" onClick="go();return false;"/>
          &nbsp;</td>
      </tr>
      <tr>
        <td width="160" align="left"><bairong:help HelpText="压缩后的JS代码。" Text="压缩后代码：" runat="server" ></bairong:help></td>
        <td align="left"><textarea name="output" rows="10" id="output" class="colorblur" onFocus="this.className='colorfocus';" onBlur="this.className='colorblur';"></textarea></td>
      </tr>
      <tr>
        <td colspan="2"><h2 id="statstitle">状态提示</h2>
          <div id="stats">原来大小:
            <input id="oldsize">
            </span> 压缩后大小:
            <input id="newsize">
            </span> 压缩率:
            <input id="ratio">
            </span></div></td>
      </tr>
    </table>
  </DIV>
</form>
</body>
</HTML>
