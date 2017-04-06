<%@ Register TagPrefix="bairong" Namespace="BaiRong.Controls" Assembly="BaiRong.Controls" %>
<%@ Register TagPrefix="user" Namespace="UserCenter.Controls" Assembly="UserCenter.Pages" %>
<%@ Register TagPrefix="space" Namespace="SiteServer.Space.Controls" Assembly="SiteServer.Space" %>

<table cellspacing="0" class="pheader" border=0 style="width:100%;" height="22">
  <tr>
	<td class="mod_tlc" width=6 nowrap>&nbsp;</td>
	<td width="100%" align="left" class="modhead"><space:ResourceControl runat="server" ResourceName="BasicSettings_Title" /></td>
	<td class="mod_trc" width=6 nowrap>&nbsp;</td>
  </tr>
</table>


<table border=0 cellpadding="0" cellspacing=0 style="width:100%;">
<tr>
	<td align="left" class="bvBody">
		
		<div class="opaquePartMain">
			   
				<div class="SUWizContent">选择设置以更改您的共享空间的外观。完成更改后，请单击“保存”。</div><br>

				<div class="SULayoutArea"><font class="bold">标题和标志行</font></div>
				<div class="SUWizContent">
				您的共享空间的标题告诉其他人他们查看的是什么共享空间。您可以用标志行告诉其他人您的共享空间的创建目的、您的心情或者任何您想分享的东西。<br><br>
				
				<div></div>
				<span class="bold"><span id="lblSpaceTitleTxt">共享空间标题:</span></span><br>
				<input id="txtTitle" name="txtTitle" class="txtURL" type="text"	maxlength="128" value="star的共享空间"><br><br>
				<span class="bold">共享空间标志行:</span><br>
				<input id="txtTagline" name="txtTagline" class="txtURL" type="text" value="" maxlength="256" style="width:350px;">
				</div>

				<div class="SULayoutArea"><font class="bold">日期和时间格式</font></div>
				<div class="SUWizContent">
				<table cellpadding="0" cellspacing="0" border="0">
				<tr>
					<td	class="SSDs" width="370">选择发布到您的共享空间的网络日志项的日期格式。</td>
					<td	class="SSDs" width="*">
						<select	name="EntryDate" size="1">
						<option	value="M">6月18日 
						<option	value="d">2006/6/18 
						<option	value="Y">2006年6月 
						</select>
					</td>
				</tr>
				<tr>
					<td	class="SSDs" width="370">选择发布到您的共享空间的网络日志项的时间格式。</td>
					<td	class="SSDs" width="*">
						<select	name="EntryTime" size="1">
						<option	value="t"	selected>8:09
						<option	value="T">8:09:24
						</select>
					</td>
				</tr>
				</table>
			</div>
			
			    <div class="SULayoutArea"><span class="bold">时区</span></div>
			    <div class="SUWizContent">
			    
<script>
var TimeZone = "0%(GMT-12:00) 国际日期变更线西%1%(GMT-11:00) 中途岛，萨摩亚群岛%2%(GMT-10:00) 夏威夷%3%(GMT-09:00) 阿拉斯加%4%(GMT-08:00) 太平洋时间(美国和加拿大); 蒂华纳%13%(GMT-07:00) 奇瓦瓦，拉巴斯，马扎特兰%15%(GMT-07:00) 山地时间(美国和加拿大)%10%(GMT-07:00) 亚利桑那%25%(GMT-06:00) 萨斯喀彻温%33%(GMT-06:00) 中美洲%20%(GMT-06:00) 中部时间(美国和加拿大)%30%(GMT-06:00) 瓜达拉哈拉，墨西哥城，蒙特雷%35%(GMT-05:00) 东部时间(美国和加拿大)%45%(GMT-05:00) 波哥大，利马，基多%40% (GMT-05:00) 印地安那(东部)%50%(GMT-04:00) 大西洋时间(加拿大)%56% (GMT-04:00) 圣地亚哥%55% (GMT-04:00) 加拉加斯，拉巴斯 %60% (GMT-03:30) 纽芬兰 %65%(GMT-03:00) 巴西利亚%73%(GMT-03:00) 格陵兰%70%(GMT-03:00) 布宜诺斯艾利斯，乔治敦%75%(GMT-02:00) 中大西洋%80%(GMT-01:00) 亚速尔群岛%83%(GMT-01:00) 佛得角群岛%90%(GMT) 卡萨布兰卡，蒙罗维亚%85%(GMT) 格林威治标准时间: 都柏林，爱丁堡，里斯本，伦敦%95%(GMT+01:00) 贝尔格莱德，布拉迪斯拉发，布达佩斯，卢布尔雅那，布拉格%100%(GMT+01:00) 萨拉热窝，斯科普里，华沙，萨格勒布%105%(GMT+01:00) 布鲁塞尔，哥本哈根，马德里，巴黎%113%(GMT+01:00) 中非西部%110%(GMT+01:00) 阿姆斯特丹，柏林，伯尔尼，罗马，斯德哥尔摩，维也纳%115%(GMT+02:00) 布加勒斯特%120%(GMT+02:00) 开罗%125%(GMT+02:00) 赫尔辛基，基辅，里加，索非亚，塔林，维尔纽斯%130%(GMT+02:00) 雅典，伊斯坦布尔，明斯克%135%(GMT+02:00) 耶路撒冷%140%(GMT+02:00) 哈拉雷，比勒陀利亚%150%(GMT+03:00) 科威特，利雅得%158%(GMT+03:00) 巴格达%155%(GMT+03:00) 内罗毕%145%(GMT+03:00) 莫斯科，圣彼得堡，伏尔加格勒%160%(GMT+03:30) 德黑兰          %165%(GMT+04:00) 阿尔扎比，马斯喀特%170%(GMT+04:00) 巴库，第比利斯，埃里温%175%(GMT+04:30) 喀布尔%180%(GMT+05:00) 叶卡捷琳堡%185%(GMT+05:00) 伊斯兰堡，卡拉奇，塔什干%190%(GMT+05:30) 马德拉斯，加尔各答，孟买，新德里%193%(GMT+05:45) 加德满都%195%(GMT+06:00) 阿斯塔纳，达卡%201%(GMT+06:00) 阿拉木图，新西伯利亚%200%(GMT+06:00) 科特%203%(GMT+06:30) 仰光%207%(GMT+07:00) 克拉斯诺伏斯克%205%(GMT+07:00) 曼谷，河内，雅加达%210%(GMT+08:00) 北京，重庆，香港特别行政区，乌鲁木齐%227%(GMT+08:00) 伊尔库次克，乌兰巴托%215%(GMT+08:00) 吉隆坡，新加坡%220%(GMT+08:00) 台北%225%(GMT+08:00) 珀斯%230%(GMT+09:00) 首尔%235%(GMT+09:00) 大阪，札幌，东京%240%(GMT+09:00) 雅库茨克%250%(GMT+09:30) 阿德莱德%245%(GMT+09:30) 达尔文%255%(GMT+10:00) 堪培拉，墨尔本，悉尼%260%(GMT+10:00) 布里斯班%265%(GMT+10:00) 霍巴特%270%(GMT+10:00) 符拉迪沃斯托克%275%(GMT+10:00) 关岛，莫尔兹比港%280%(GMT+11:00) 马加丹，所罗门群岛，新喀里多尼亚%285%(GMT+12:00) 斐济，勘察加半岛，马绍尔群岛%290%(GMT+12:00) 奥克兰，惠灵顿%300%(GMT+13:00) 努库阿洛法%"
function DisplayTimeZone(selectedTimeZone)
{
    var aTimeZone = TimeZone.split("%");
	var iCount=aTimeZone.length;
	var i=0;
	while(i<iCount)
	{
	    if (aTimeZone[i] == null || aTimeZone[i+1] == null)
	    {
	        break;
	    }
		document.write("<option id=\""+aTimeZone[i]+"\" value=\""+aTimeZone[i]+"\""+((selectedTimeZone==aTimeZone[i])?" selected":"")+">"+aTimeZone[i+1]);
		i=i+2;
	}
}
</script>
<table cellspacing=0>
    <tr>
    <td class=SSDs width=*>
                <select name="timezone">
                <script language=JavaScript>
                    DisplayTimeZone('210');
                </script>

            </select>
        </td>
    </tr>
</table>
			    </div>
			    <div class="SULayoutArea"><span class="bold">使用 RSS 2.0 与此共享空间联合</span></div>
			    <div class="SUWizContent">
				    
				    <div id="SyndicationPanel">
	
					    <table cellpadding="0" cellspacing="5" border="0" style="width:90%"><tr>
						    <td class="SSDs" width="320">选择是否联合您的共享空间。</td>
						    <td class="SSDs" width="*"><input name="allowSyn" id="allowSyn" type="checkbox" value="1" CHECKED   ><label for="allowSyn"> 联合</label></td>
					    </tr><tr>
						    <td class="SSDs" width="320">如果联合您的共享空间，它可以通过新闻阅读器和聚合器来阅读。新闻阅读器和聚合器可以让用户及时获得您发布的对您的空间的更新。如果联合您的共享空间，人们还可以用 MSN Alerts 获得更新通知。</td>
						    <td class="SSDs" width="*">&nbsp</td>
					    </table><br>
				    
</div>
			    </div>
    	        
			    <div class="SULayoutArea"><span class="bold">评论</span></div>
			    <div class="SUWizContent">
				    <table cellpadding="0" cellspacing="5" style="width:90%" border="0">
					    <tr>
						    <td class="SSDs" width="320" valign="top">选择是否允许访问者在您的共享空间上添加评论。</td>
						    <td class="SSDs" width="*" nowrap="nowrap">
							    <input name="blogComments" id="blogComments" type="checkbox" value="1" CHECKED /> 
							    <label for="blogComments"> 允许在网络日志上添加评论</label>
							    <br>
							    <input name="photoComments" id="photoComments" type="checkbox" value="1" CHECKED /> 
							    <label for="photoComments"> 允许在照片上添加评论</label>
						    </td>
					    </tr>
				    </table>
			    </div>


			<div id="CCardArea">
			    <div class="SULayoutArea"><span class="bold">联系人卡片设置</span></div>
			    <div class="SUWizContent">
				    <p>您希望您的共享空间上的信息显示在您的联系人卡片上或在其他人看到您时显示闪烁的图标吗？单击下面选定或清除复选框，然后单击“保存”。</p>
				    <p>
					    <input name="allowCCIntegration" id="allowCCIntegration" type="checkbox" value="1"CHECKED /> 
					    <label for="allowCCIntegration"> 我的 MSN 共享空间的信息应显示在我的联系人卡片上或其他人可以看到闪烁。</label>
				    </p>
			    </div>
</div>

	        
			
    	        
			    <div class="SULayoutArea"><span class="bold">删除您的空间</span></div>
			    <div class="SUWizContent">
				    删除了您的共享空间后，您的所有网络日志项、照片和列表都将永久删除，并且您的共享空间的网址将在 60 天内不可用。	
				    <script>
					    var strDelete = "是否要删除您的共享空间？\\n\\n删除了您的共享空间后，您的所有项、照片和列表都将永久删除，并且您的共享空间的网址将在 60 天内不可用。此操作无法恢复。\\n\\n若要删除您的共享空间，请单击“确定”。"
				    </script>
				    <p><a class="bold" href="#" tabindex=0 onClick="return DeleteSpace('_tok=7QmLTY42xAeTaGE9lICXLE8J8Y*sweIK2GciyXYjcnuicPScl3M7n6NqjuUERODvkYMsMPedeBB8Exo2qzdAxKC8EUJfwJdiIjXosbJ!v08CSl04jUWPWWeA$$','starlying',strDelete)">删除我的 MSN 共享空间 <img title="删除我的 MSN 共享空间" src="http://sc.services.spaces.msn.com/10.07.3003.0001/Web/images/clearicon.gif" border="0" align="middle" width="13" height="13"></a>
			    </div>

			    <div class="SaveRow" align="right"><input type="submit" id="subButton" value="保 存" />&nbsp;<input type="button" id="cancelButton" name="cancelButton" value="取 消" onClick="window.location='http://starlying.spaces.msn.com/personalspace.aspx?_c01_blogpart=myspace&_c02_owner=1&_c=blogpart'" /></div>
			</div>
		
	</td>
</tr>
</table>