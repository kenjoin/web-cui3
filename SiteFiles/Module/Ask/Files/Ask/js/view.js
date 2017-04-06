function vote(questionId,answersId,uname){
 if(uname == ""){
	dialogLogin();
	return false;
 } else { 
	 $.ajax({
	   url:askUrl + "/service.aspx?action=vote&qid="+questionId,
	   type:'POST',
	   success:function(data){
		 var dataObj=eval("("+data+")");
		 if(dataObj.state=='full'){
		  	alert(dataObj.message);return false;
		 }else if(dataObj.state=='ishave'){
		  	alert(dataObj.message);return false;
		 }else{
		 	showDialog('questionvote.aspx?answersId='+answersId+'&questionId='+questionId, 300, 400, '投票结果');
		 }
		}
	  });}
   return true;
 }
  
function voteResults(questionId){
	showDialog('questionvote.aspx?questionId='+questionId, 300, 400, '投票结果');
}
  
function setBestAnswer(answersID){
	showDialog('dialog/setBestAnswer.aspx?answersID='+answersID, 520, 500, '选择最佳答案');
}
 
function addNewContent(){
 if(document.getElementById("addNewContent").style.display == "none"){
	document.getElementById("addNewContent").style.display = "";
  }else{
	document.getElementById("addNewContent").style.display = "none";}
  }

function commitContent(){
  var content = document.getElementById("newContent"); 
  $.ajax({
	   url:"../ask/service.aspx?action=add&qid="+qId+"&avalue="+escape(content.value),
	   type:'POST',
	   success:function(data){
		 var dataObj=eval("("+data+")");
		 alert(dataObj.message);
		 window.location.href = "view-" + qId + ".aspx";}
	  });
 }
 
function commitEditAnswer(answersId,contentid, formID){
	KE.sync(contentid);
	$('#' + formID).ajaxSubmit({
		dataType: 'json',
		success: function(data) {
			if (data.success == 'true'){
				$('#container_' + answersId).html($('#' + contentid).val());
				$('#' + formID).hide();
			}else{
				alert(data.errorMessage);
			}
		}
	});
 }
 
function addReward(){
	showDialog('dialog/addreward.aspx?questionID=' + qId, 200, 450, '提高您的问题悬赏');
}

function closeQuestion(){
	showDialog('questionclose.aspx?questionId='+qId, 140, 500, '无满意回答');
}

function setVote(){
	showDialog('setvote.aspx?questionId='+qId, 180, 500, '将问题转入投票流程');
}

function addReply(){
  var form = $('#answerForm');
  
  form.ajaxSubmit({
		dataType: 'json',
		success: function(data) {
			if (data.success == 'true'){
				alert(data.message);
				window.location.href = "view-" + qId + ".aspx";
			}else{
				alert(data.errorMessage);
			}
		}
	});
  
  
}

function onAddReplySubmit(userName) {
	var form = $('#answerForm');
	KE.sync("reply");

	if($('#reply', form).val() == '') {
		alert("请输入您要回答的内容!");
		KE.util.focus("reply");
	}
	else if(userName == "")
	{
		dialogLogin();
	} else {
		addReply();
	}
}

KE.show({
	id : 'reply',
	imageUploadJson : askUrl + '/editor/upload_json.ashx',
	allowFileManager : false,
	items : ['fontname', 'fontsize', '|', 'textcolor', 'bgcolor', 'bold', 'italic', 'underline', 'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist', '|', 'emoticons', 'image', 'media', 'link', '|', 'ubb_code', 'ubb_hide'],
	afterCreate : function(id) {
		KE.event.ctrl(document, 13, function() {
			KE.util.setData(id);
			onAddReplySubmit(document.forms['myform']);
		});
		KE.event.ctrl(KE.g[id].iframeDoc, 13, function() {
			KE.util.setData(id);
			onAddReplySubmit(document.forms['myform']);
		});
	}
});