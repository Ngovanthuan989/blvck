<!DOCTYPE html>
<html lang="en">
<head>
    <title>@yield('title')</title>
    <meta name="ROBOTS" content="index, follow" />
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <meta name="title" content="@yield('title')" />
    <meta name="keywords" content="@yield('keywords')" />
    <meta name="description" content="@yield('meta_description')" />

    <!-- facebook gooogle -->
    <meta property="og:url"                content="@yield('meta_url')" />
    <meta property="og:type"               content="Website" />
    <meta property="og:title"              content="@yield('title')" />
    <meta property="og:description"        content="@yield('meta_description')" />
    <meta property="og:image"              content="@yield('meta_image')" />

    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="geo.position" content="10.763945;106.656201" />
	
	<link rel="icon" type="image/x-icon" href="{{ isset($information['icon']) ?  $information['icon'] : '' }}"/>
	<link rel="stylesheet" href="/site/css/bootstrap4.css">
       <link href="/site/css/style.css" rel="stylesheet" type="text/css" />
	    <link href="/site/css/custom.css" rel="stylesheet" type="text/css" />



    <script type="text/javascript" src="/site/js/jquery-1.8.2.min.js"></script>
	 <script type="text/javascript" src="/site/js/jquery3-3.js"></script>
	<script type="text/javascript" src="/site/js/jquery.matchHeight-min.js"></script>
	
	
	
       


    <script type="text/javascript" src="/site/js/ajax.js"></script>
	<link rel="stylesheet" href="/site/js/bootstrap4.js">

    <script  language="javascript" type="text/javascript" src="/site/js/home.js"></script>
    <script language="javascript" type="text/javascript" src="/site/js/ajax-dynamic-content.js"></script>


    <link rel="stylesheet" type="text/css" href="/site/menu_c1/ddsmoothmenu.css" />
    <script type="text/javascript" src="/site/menu_c1/ddsmoothmenu.js"></script>

    <script type="text/javascript">

    ddsmoothmenu.init({
    mainmenuid: "smoothmenu1", //menu DIV id
    orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
    classname: 'ddsmoothmenu', //class added to menu's outer DIV
    //customtheme: ["#1c5a80", "#18374a"],
    contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})


        function form_s1_submit(){
           document.form_s1.submit();
       }


   </script>  



   <script src="/site/slider/owl-carousel/owl.carousel.js"></script>
   <!-- Owl Carousel Assets -->
   <link href="/site/slider/owl-carousel/owl.carousel.css" rel="stylesheet">
   <link href="/site/slider/owl-carousel/owl.theme.css" rel="stylesheet">


   <script type="text/javascript" src="/site/js/wow.min.js"></script>
   <link href="/site/css/animate.css" rel="stylesheet" type="text/css" />
   <script type="text/javascript">
      new WOW().init();
  </script>


  <link href="/site/css/style_responsive.css" rel="stylesheet" type="text/css"  media="screen" />
  	    <link href="/site/css/custom.css" rel="stylesheet" type="text/css" />


  <script type="text/javascript">
    $(window).scroll(function() {
        var height = $("#baner ").height();
        if($(window).scrollTop()>  height) {
         $("div.ddsmoothmenu ").css({position:"fixed",top:'0px'});
     }else{

         $("div.ddsmoothmenu").css({position:"relative"});
     }
 });




    $(window).scroll(function() {

       if($(window).width()>1200)
       {
        var height = $("#baner").height() + 52;

        var width1 = ($(window).width() - 1200)/2;
        var bt=$('#bottom').offset().top;
        var cr=$("div.tt_col_right").height();


        if($(window).scrollTop()>  height && $(window).scrollTop()+cr<bt) {
           $("div.tt_col_right").css({position:"fixed",top:'55px',right:width1});
       }else if($(window).scrollTop()+cr>=bt){

           $("div.tt_col_right").css({position:"fixed",top:(bt-$(window).scrollTop()-cr),right:width1});
       }else{
         $("div.tt_col_right").css({position:"static"});
     }

 }
});
 $(window).scroll(function() {

    if($(window).width()< 500)
    {
		$(this).removeClass('wow');
        
    }

});


</script>

<!--analytics-->
<!-- Global site tag (gtag.js) - Google Ads: 958087358 -->

</head>
<body>
    <div id="full">
        <!-- header -->

    <!-- slider -->
    @include('site.common.header')

    

    <!-- Phần nội dung -->
    @yield('content')
    </div>

    @include('site.common.footer')
{{-- <script type="text/javascript">
  function contact(e) {
            var $btn = $(e).find('button').text('Đang tải ...');
            var data = $(e).serialize();

            $.ajax({
                type: "POST",
                url: '{!! route('sub_contact') !!}',
                data: data,
                success: function(result){
                    var obj = jQuery.parseJSON( result);
                    // gửi thành công
                    if (obj.status == 200) {
                        alert(obj.message);
                        $btn.text('Đăng ký ngay');

                        return;
                    }

                    // gửi thất bại
                    if (obj.status == 500) {
                        alert(obj.message);
                        $btn.text('Đăng ký ngay');

                        return;
                    }
                },
                error: function(error) {
                    //alert('Lỗi gì đó đã xảy ra!')
                }
            });
            return false;
        }
</script>
--}}


<style>.fb-livechat, .fb-widget{display: none}.ctrlq.fb-button, .ctrlq.fb-close{position: fixed; right: 24px; cursor: pointer}.ctrlq.fb-button{z-index: 999; background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/PjwhRE9DVFlQRSBzdmcgIFBVQkxJQyAnLS8vVzNDLy9EVEQgU1ZHIDEuMS8vRU4nICAnaHR0cDovL3d3dy53My5vcmcvR3JhcGhpY3MvU1ZHLzEuMS9EVEQvc3ZnMTEuZHRkJz48c3ZnIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDEyOCAxMjgiIGhlaWdodD0iMTI4cHgiIGlkPSJMYXllcl8xIiB2ZXJzaW9uPSIxLjEiIHZpZXdCb3g9IjAgMCAxMjggMTI4IiB3aWR0aD0iMTI4cHgiIHhtbDpzcGFjZT0icHJlc2VydmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiPjxnPjxyZWN0IGZpbGw9IiMwMDg0RkYiIGhlaWdodD0iMTI4IiB3aWR0aD0iMTI4Ii8+PC9nPjxwYXRoIGQ9Ik02NCwxNy41MzFjLTI1LjQwNSwwLTQ2LDE5LjI1OS00Niw0My4wMTVjMCwxMy41MTUsNi42NjUsMjUuNTc0LDE3LjA4OSwzMy40NnYxNi40NjIgIGwxNS42OTgtOC43MDdjNC4xODYsMS4xNzEsOC42MjEsMS44LDEzLjIxMywxLjhjMjUuNDA1LDAsNDYtMTkuMjU4LDQ2LTQzLjAxNUMxMTAsMzYuNzksODkuNDA1LDE3LjUzMSw2NCwxNy41MzF6IE02OC44NDUsNzUuMjE0ICBMNTYuOTQ3LDYyLjg1NUwzNC4wMzUsNzUuNTI0bDI1LjEyLTI2LjY1N2wxMS44OTgsMTIuMzU5bDIyLjkxLTEyLjY3TDY4Ljg0NSw3NS4yMTR6IiBmaWxsPSIjRkZGRkZGIiBpZD0iQnViYmxlX1NoYXBlIi8+PC9zdmc+) center no-repeat #0084ff; width: 60px; height: 60px; text-align: center; bottom: 30px; border: 0; outline: 0; border-radius: 60px; -webkit-border-radius: 60px; -moz-border-radius: 60px; -ms-border-radius: 60px; -o-border-radius: 60px; box-shadow: 0 1px 6px rgba(0, 0, 0, .06), 0 2px 32px rgba(0, 0, 0, .16); -webkit-transition: box-shadow .2s ease; background-size: 80%; transition: all .2s ease-in-out}.ctrlq.fb-button:focus, .ctrlq.fb-button:hover{transform: scale(1.1); box-shadow: 0 2px 8px rgba(0, 0, 0, .09), 0 4px 40px rgba(0, 0, 0, .24)}.fb-widget{background: #fff; z-index: 1000; position: fixed; width: 360px; height: 435px; overflow: hidden; opacity: 0; bottom: 0; right: 24px; border-radius: 6px; -o-border-radius: 6px; -webkit-border-radius: 6px; box-shadow: 0 5px 40px rgba(0, 0, 0, .16); -webkit-box-shadow: 0 5px 40px rgba(0, 0, 0, .16); -moz-box-shadow: 0 5px 40px rgba(0, 0, 0, .16); -o-box-shadow: 0 5px 40px rgba(0, 0, 0, .16)}.fb-credit{text-align: center; margin-top: 8px}.fb-credit a{transition: none; color: #bec2c9; font-family: Helvetica, Arial, sans-serif; font-size: 12px; text-decoration: none; border: 0; font-weight: 400}.ctrlq.fb-overlay{z-index: 0; position: fixed; height: 100vh; width: 100vw; -webkit-transition: opacity .4s, visibility .4s; transition: opacity .4s, visibility .4s; top: 0; left: 0; background: rgba(0, 0, 0, .05); display: none}.ctrlq.fb-close{z-index: 4; padding: 0 6px; background: #365899; font-weight: 700; font-size: 11px; color: #fff; margin: 8px; border-radius: 3px}.ctrlq.fb-close::after{content: "X"; font-family: sans-serif}.bubble{width: 20px; height: 20px; background: #c00; color: #fff; position: absolute; z-index: 999999999; text-align: center; vertical-align: middle; top: -2px; left: -5px; border-radius: 50%;}.bubble-msg{width: 120px; left: -125px; top: -8px; position: relative; background: rgba(59, 89, 152, .8); color: #fff; padding: 5px 8px; border-radius: 8px; text-align: center; font-size: 13px;}</style><div class="fb-livechat"> <div class="ctrlq fb-overlay"></div><div class="fb-widget"> <div class="ctrlq fb-close"></div><div class="fb-page" data-href="https://www.facebook.com/MayruaxegiadinhapluccaoLutian/" data-tabs="messages" data-width="360" data-height="400" data-small-header="true" data-hide-cover="true" data-show-facepile="false"> </div><div class="fb-credit"> <a href="https://vn3c.com" target="_blank">Powered by VN3C</a> </div><div id="fb-root"></div></div><a href="https://m.me/MayruaxegiadinhapluccaoLutian" title="Gửi tin nhắn cho chúng tôi qua Facebook" class="ctrlq fb-button"> <div class="bubble">1</div><div class="bubble-msg">Nhắn tin với chúng tôi!</div></a></div><script src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.9"></script><script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script><script>$(document).ready(function(){function detectmob(){if( navigator.userAgent.match(/Android/i) || navigator.userAgent.match(/webOS/i) || navigator.userAgent.match(/iPhone/i) || navigator.userAgent.match(/iPad/i) || navigator.userAgent.match(/iPod/i) || navigator.userAgent.match(/BlackBerry/i) || navigator.userAgent.match(/Windows Phone/i) ){return true;}else{return false;}}var t={delay: 125, overlay: $(".fb-overlay"), widget: $(".fb-widget"), button: $(".fb-button")}; setTimeout(function(){$("div.fb-livechat").fadeIn()}, 8 * t.delay); if(!detectmob()){$(".ctrlq").on("click", function(e){e.preventDefault(), t.overlay.is(":visible") ? (t.overlay.fadeOut(t.delay), t.widget.stop().animate({bottom: 0, opacity: 0}, 2 * t.delay, function(){$(this).hide("slow"), t.button.show()})) : t.button.fadeOut("medium", function(){t.widget.stop().show().animate({bottom: "30px", opacity: 1}, 2 * t.delay), t.overlay.fadeIn(t.delay)})})}});</script>
</body>
</html>