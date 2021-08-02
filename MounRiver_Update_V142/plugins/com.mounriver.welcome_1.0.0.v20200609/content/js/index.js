;(function(){
    
    var contentHeight = $(window).height() - $(".top").height();
    var contentWidth = $(window).width()
    $(".content").css({"height": contentHeight -80+ "px"})
    $(".content .content_show").css({"height":contentHeight - 120 +"px"})
    if(contentWidth>=1400){
        $(".safeBox").css({"width":'1300px',"margin-top":'-300px'})
        $(".slider").css({"height":'410px'})
        
    }else if(contentWidth<1400&&contentWidth>=1200){
        $(".safeBox").css({"width":'1100px',"margin-top":'-275px'})
        $(".showWord").css({"font-size":'13px'})
    }else if (contentWidth<1200&&contentWidth>=1000){
        $(".safeBox").css({"width":'1000px',"margin-top":'-250px'})
        $(".commonPart").css({})
        $(".slider").css({"height":'360px'})
    }else {
        $(".safeBox").css({"width":'900px',"margin-top":'-225px'})
        $(".slider").css({"height":'350px'})
    }

    $(window).resize(function(){
        var contentWidth = $(window).width()
        var contentHeight = $(window).height() - $(".top").height();
        $(".content").css({"height": contentHeight -80 + "px"})
        $(".content .content_show").css({"height":contentHeight - 120+"px"})
        if(contentWidth>=1400){
            $(".safeBox").css({"width":'1300px',"margin-top":'-300px'})
            $(".slider").css({"height":'410px'})
            
        }else if(contentWidth<1400&&contentWidth>=1200){
            $(".safeBox").css({"width":'1100px',"margin-top":'-275px'})
            $(".slider").css({"height":'380px'})
        }else if (contentWidth<1200&&contentWidth>=1000){
            $(".safeBox").css({"width":'1000px',"margin-top":'-250px'})
            $(".commonPart").css({})
            $(".slider").css({"height":'360px'})
        }else {
            $(".safeBox").css({"width":'900px',"margin-top":'-225px'})
            $(".slider").css({"height":'350px'})
        }
        
    })
   
    $(".content .content_tip li").click(function(){
        var index = $(this).index();
        $(".content .content_tip li").eq(index).addClass("current").siblings().removeClass("current");
        $(".content .content_show .content_panel").eq(index).addClass("current").siblings().removeClass("current");

    })
    $(".closeContent").click(function(e){
        $(".showContent").fadeOut(250)
    });

    $(".imgClick").click(function(){
        var index=$(".imgClick").index($(this))
          $(".showContent").fadeIn(250)
        $(".showContentImg").eq(index).css({"display":'block'}).siblings().css({"display":'none'});
      
    });





    $.ajax({
        url:"https://api.github.com/repos/MounRiver/MounRiver/pulls",
        type:"get",
        success:function(res){
         
            var str = "";
            for(var i=0;i<res.length;i++){
                var createTime = res[i].created_at.split("T");
                // console.log(createTime)
                str += '<div class="request"><a  href="' + res[i].html_url + '"><h3><i class="iconfont icon-pull-request"></i><span>'+  res[i].title  +'</span></h3><p><span>#'+ res[i].number +'</span> opened on <span>' + createTime[0] + '</span>  by <span>' + res[i].user.login + '</span> </p></a></div>'
            }

            $(".content .content_request").html(str)
        }
    })

})();



(function(){
    $.ajax({
        url:"https://www.MounRiver.org/news.html",
        type:"get",
        success:function(res){
            // console.log(res)
            var el = document.createElement( 'html' );
            el.innerHTML = res;
            var domArr = $(el).find("#articles .item");
            // console.log(domArr)
            var dataArr = [];
            for(var i=0;i<domArr.length;i++){
                var item = {
                    title: domArr.eq(i).find("a").text(),
                    href: domArr.eq(i).find("a").attr("href"),
                    content: domArr.eq(i).find(".text").text(),
                    date: domArr.eq(i).find(".pull-right span:nth-child(2)").html()
                }
                dataArr.push(item)
            }
            // console.log(dataArr)
            var str = "";
            dataArr.forEach(function(item,index){
                var panel = '<div class="panel"><a href="https://www.MounRiver.org' + item.href + '" ><div class="panel_title"><h3>' + item.title + '</h3><div class="time"><i class="iconfont icon-shijian1"></i><span>' + item.date + '</span></div></div><p class="panel_desc">' + item.content + '</p></a></div>';
                str += panel;
            })
            $(".content_panel1").empty();
            $(".content_panel1").html(str)

        },
        error:function(err){
			window.console = window.console || (function(){  
				var c = {};   
				c.log = c.warn = c.debug = c.info = c.error = c.time = c.dir = c.profile = c.clear = c.exception = c.trace = c.assert = function(){};  
				return c;  
			})();
			if(window.console){  
			  console.log(err);  
			}  
            //console.log(err)
        }
    })
})();