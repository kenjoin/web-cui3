(function(a){
	a.fn.hoverClass=function(b){
		var a=this;
		a.each(function(c){
			a.eq(c).hover(function(){
				$(this).addClass(b)
			},function(){
				$(this).removeClass(b)
			})
		});
		return a
	};
})(jQuery);

$(function(){
    var $innovateDetail = $("#innovateDetail"),
        $detailPic = $("div[class='innovate-image']"),
        $detailContent = $("div[class='innovate-content']");
	
    if($('.flexslider').length){
        $('.flexslider').flexslider({
            directionNav: true,
            pauseOnAction: false
        });
    }
    
    if($("#cloud").length) $("#cloud").hoverClass("cur");
    
    if($("#box").length) $("#box").hoverClass("cur");
    
    if($("#box1").length) $("#box1").hoverClass("cur");    
	
	/* 创新图片经过和离开事件 */
    $('.innovate .pic a').mouseover(function(evt){
        var e = evt.srcElement || evt.target,
            tagname = e.tagName.toLowerCase();
            
        if( 'a'==tagname )
        {
            e = e.parentNode;
        }
        if( 'img'==tagname )
        {
            e = e.parentNode.parentNode;
        }
        $innovateDetail.show();
        
        var children = e.children,
            link = children[0],
            content = children[1],
            img = link.children[0];
                
        var imgElem = document.createElement('img');
        imgElem.src = img.src;
        
        $detailPic.append( imgElem );
        $detailContent.append( $(content).clone() );
    });
    
    var sID;
    $innovateDetail.mouseover(function(evt){
        clearTimeout(sID);
    });
    
    $innovateDetail.mouseout(function(evt){
        sID = setTimeout(function(){
            var e = evt.srcElement || evt.target;          
            
            //return;
            
            $innovateDetail.hide();
            $detailPic.html('');
            $detailContent.html('');
        },500);
    });
 
});