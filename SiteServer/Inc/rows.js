function chkSelect(e){
 var e = (e || event);
 var el = this;
 if (el.className == 'summary-title' || el.className == '') return;
 if (el.getElementsByTagName('input') && el.getElementsByTagName('input').length > 0){
	 el.className = (el.className == 'tdbg-dark' ? 'tdbg' : 'tdbg-dark');
	 el.getElementsByTagName('input')[0].checked = (el.className == 'tdbg-dark');
 }
}

function loopRows(oTable, callBack){
 if (!oTable) return;
 callBack = callBack || function(){};
 var trs = oTable.rows;
 var i = 0 , l = trs.length;
 var flag = i < l;

 while(flag ? i < l : i > l ){
  var cur = trs[i];
  try{
   callBack(cur, i);
  }catch(e){ if(e == 'break'){ break; }}
  flag ? i++ : i--;
 }
}