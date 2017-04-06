// JScript 文件
//checkbox全选
function SelectAllCheckboxes(spanChk){

   // Added as ASPX uses SPAN for checkbox
   var oItem = spanChk.children;
   var theBox= (spanChk.type=="checkbox") ? 
        spanChk : spanChk.children.item[0];
   xState=theBox.checked;
   elm=theBox.form.elements;

   for(i=0;i<elm.length;i++)
     if(elm[i].type=="checkbox" && 
              elm[i].id!=theBox.id)
     {
       //elm[i].click();
       if(elm[i].checked!=xState)
         elm[i].click();
       //elm[i].checked=xState;
     }
 }
 
 function checkgt(value)
 {
   var search = document.getElementById(value);        
   if(search.value=="")
   {
    alert("请输入您要提问的信息");
    search.focus();
    return false;
   }
  return true;
 }
  function pagereload()
  {
     window.location.href=window.location.href; 
  }
     
  function feedBackMessage(message,x,y,delay)
       {
          if(!message) return;
          x=/\d{1,2}%|100%|left|right/.test(x)?x:(parseInt(x)||0)+"px";
          y=/\d{1,2}%|100%|top|bottom/.test(y)?y:(parseInt(y)||0)+"px";
          delay=parseInt(delay)||-1;
          var fdDiv=document.getElementById('show_feedBack_message');
          if(!fdDiv){
          var showMessage=document.createElement("<div id='show_feedBack_message' style='z-index:10000;filter:alpha(opacity=100);position:absolute;white-space:nowrap'></div>");
          document.body.appendChild(showMessage);
          fdDiv=document.getElementById('show_feedBack_message');
       }
       /* /  */
      if(feedBackMessage.timer){clearInterval(feedBackMessage.timer)}
       fdDiv.innerHTML=message;
       fdDiv.style.display="";
       var docWidth=document.documentElement.scrollWidth>document.documentElement.clientWidth?document.documentElement.scrollWidth:document.documentElement.clientWidth;
       var docHeight=document.documentElement.scrollHeight>document.documentElement.clientHeight?document.documentElement.scrollHeight:document.documentElement.clientHeight;
       if(/left|right/.test(x)){x=(x=="left")?"0px":(docWidth-fdDiv.offsetWidth)+"px";}
       if(/top|bottom/.test(y)){y=(y=="top")?"0px":(docHeight-fdDiv.offsetHeight)+"px";}
       fdDiv.style.left=x;
       fdDiv.style.top=y;
       fdDiv.filters.Alpha.Opacity=100;

       //渐隐效果
       var step=parseInt(delay/100);
       var alpha=fdDiv.filters.Alpha.Opacity;
       if(delay!=-1){
         feedBackMessage.timer=setInterval(function(){
            if(fdDiv.filters.Alpha.Opacity>0){
               fdDiv.filters.Alpha.Opacity--
            }else{clearInterval(feedBackMessage.timer);fdDiv.style.display="none"}},step);}
       }
 
    
 
 
