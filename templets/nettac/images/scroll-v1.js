$(window).scroll(function(){
  try{
	if($(window).scrollTop()>$(window).height()){
	  if($.browser.msie&&$.browser.version=="6.0")
	    $(".fixed-navs").css({display:"block"});
		else
	    $(".fixed-navs").stop().animate({top:0},400);
	}else{
		if($.browser.msie&&$.browser.version=="6.0")
	    $(".fixed-navs").css({display:"none"});
		else
		$(".fixed-navs").stop().animate({top:"-75px"},400);
		}
	
    if($(window).scrollTop()>($(".mark-effect:eq(0)").offset().top-$(window).height()/2)){
		if($(".mark-effect:eq(0)").attr("effected")=="no")
		  effect_one();
		$(".quick-nav .on").removeClass("on");
		$(".quick-nav li:eq(0)").addClass("on");
		$(".mark-effect:eq(0)").attr("effected","yes");
		}
	if($(window).scrollTop()>($(".mark-effect:eq(1)").offset().top-$(window).height()/2)){
		if($(".mark-effect:eq(1)").attr("effected")=="no")
		  effect_two();
		$(".quick-nav .on").removeClass("on");
		$(".quick-nav li:eq(1)").addClass("on");
		$(".mark-effect:eq(1)").attr("effected","yes");
		}
	if($(window).scrollTop()>($(".mark-effect:eq(2)").offset().top-$(window).height()/2)){
		if($(".mark-effect:eq(2)").attr("effected")=="no")
		  effect_three();
		$(".quick-nav .on").removeClass("on");
		$(".quick-nav li:eq(2)").addClass("on");
		$(".mark-effect:eq(2)").attr("effected","yes");
		}
	if($(window).scrollTop()>($(".mark-effect:eq(3)").offset().top-$(window).height()/2)){
		if($(".mark-effect:eq(3)").attr("effected")=="no")
		  effect_four();
		$(".quick-nav .on").removeClass("on");
		$(".quick-nav li:eq(3)").addClass("on");
		$(".mark-effect:eq(3)").attr("effected","yes");
		}
	if($(window).scrollTop()>($(".mark-effect:eq(4)").offset().top-$(window).height()/2)){
		if($(".mark-effect:eq(4)").attr("effected")=="no")
		  effect_five();
		$(".quick-nav .on").removeClass("on");
		$(".quick-nav li:eq(4)").addClass("on");
		$(".mark-effect:eq(4)").attr("effected","yes");
		}
	}catch(e){
		
		}
  });