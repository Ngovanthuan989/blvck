<div class="clear"></div>

<div id="bottom" >
   <div class="footer" style="margin-bottom: 10px;">
	<div class="container">
		<div class="row">
		
      <div class="col_1 col-lg-4 col-md-6 col-sm-12">
         <p class="ten_cty_bottom" style="font-size:20px;padding-bottom:15px;">{{ isset($information['ten-cong-ty']) ?  $information['ten-cong-ty'] : '' }}</p>

         {!! isset($information['thong-tin-cong-ty']) ?  $information['thong-tin-cong-ty'] : '' !!}
      </div>
      <!--Col_1-->
	  
      <div class="col_2 col-lg-4 col-md-6 col-sm-12" data-wow-delay="1.2s" >
         <div class="fagefacebook">
             {!! isset($information['fanpage-facebook']) ?  $information['fanpage-facebook'] : '' !!}
         </div>
      </div>
	  
      <div class="col_3 col-lg-4 col-md-12 col-sm-12 mdtext-ct  mbtext-ct" data-wow-delay="1.2s" >
         <p class="title">{{ $languageSetup['tong-so-truy-cap'] }}</p>
         <div class="thongke">
		 {{-- @foreach (\App\Entity\Menu::showWithLocation('menu-chinh') as $menu)
         @foreach (\App\Entity\MenuElement::showMenuPageArray($menu->slug) as $id => $menuElement)
            <li class="hiddenImg">
               <a  class="c1" href="{{ $menuElement['url'] }}">{{ $menuElement['title_show'] }}</a> 
               
               <!--tintuc cat-->
            </li>
         @endforeach 
		 @endforeach --}}
		 
		
				online:  {{ isset($information['online']) ?  $information['online'] : '' }}<br>
                {{ $languageSetup['truy-cap-hom-nay'] }}:  {{ isset($information['truy-cap-hom-nay']) ?  $information['truy-cap-hom-nay'] : '' }}<br>
                {{ $languageSetup['truy-cap-hom-qua'] }}: {{ isset($information['truy-cap-hom-qua']) ?  $information['truy-cap-hom-qua'] : '' }}<br>
                {{ $languageSetup['tong-so-truy-cap'] }}:  {{ isset($information['online']) ?  $information['tong-so-truy-cap'] : '' }}<br>
                {{ $languageSetup['truy-cap-trung-binh'] }}: {{ isset($information['online']) ?  $information['truy-cap-trung-binh'] : '' }}<br>
         </div>
        
      </div>
	  </div>
	</div>
	
   </div>
   <div class="footer2" style="    text-align: right;
    border-top: 1px solid #fff;
    padding: 10px 0;">
      <a>{{ isset($information['copy-right']) ?  $information['copy-right'] : '' }}</a> 
      
   </div>
   <div class="clear"></div>
</div>

<style type="text/css">
   #bottom .footer .col_3 .thongke
   {
     padding-left:30px;
   }
   #bottom .footer .col_3 .thongke li
   {
      list-style: none;
   }
   #bottom .footer .col_3 .thongke li a
   {    color: #Fff;
         font-size: 14px;
    }
</style>


<a href="tel:{{ isset($information['hotline']) ?  $information['hotline'] : '' }}" class="fancybox"> 
        <div class="coccoc-alo-phone coccoc-alo-green coccoc-alo-show" id="coccoc-alo-phoneIcon" style="left:-50px; bottom: 0"> 
            <div class="coccoc-alo-ph-circle"></div> 
            <div class="coccoc-alo-ph-circle-fill"></div> <div class="coccoc-alo-ph-img-circle"></div> 
        </div>
    </a>
    <style>
    
.coccoc-alo-phone.coccoc-alo-show {
    visibility: visible;
}

.coccoc-alo-phone {
    position: fixed;
    visibility: hidden;
    background-color: transparent;
    width: 200px;
    height: 200px;
    cursor: pointer;
    z-index: 200000 !important;
    -webkit-backface-visibility: hidden;
    -webkit-transform: translateZ(0);
    -webkit-transition: visibility .5s;
    -moz-transition: visibility .5s;
    -o-transition: visibility .5s;
    transition: visibility .5s;
}

.coccoc-alo-phone.coccoc-alo-green .coccoc-alo-ph-circle {
    border-color: #00aff2;
    border-color: #bfebfc 9;
    opacity: .5;
}

.coccoc-alo-ph-circle {
    width: 160px;
    height: 160px;
    top: 20px;
    left: 20px;
    position: absolute;
    background-color: transparent;
    -webkit-border-radius: 100%;
    -moz-border-radius: 100%;
    border-radius: 100%;
    border: 2px solid rgba(30, 30, 30, 0.4);
    border: 2px solid #bfebfc 9;
    opacity: .1;
    -webkit-animation: coccoc-alo-circle-anim 1.2s infinite ease-in-out;
    -moz-animation: coccoc-alo-circle-anim 1.2s infinite ease-in-out;
    -ms-animation: coccoc-alo-circle-anim 1.2s infinite ease-in-out;
    -o-animation: coccoc-alo-circle-anim 1.2s infinite ease-in-out;
    animation: coccoc-alo-circle-anim 1.2s infinite ease-in-out;
    -webkit-transition: all .5s;
    -moz-transition: all .5s;
    -o-transition: all .5s;
    transition: all .5s;
    -webkit-transform-origin: 50% 50%;
    -moz-transform-origin: 50% 50%;
    -ms-transform-origin: 50% 50%;
    -o-transform-origin: 50% 50%;
    transform-origin: 50% 50%;
}

.coccoc-alo-phone.coccoc-alo-green .coccoc-alo-ph-circle-fill {
    background-color: rgba(0, 165, 233, 0.9);
    background-color: #a6e3fa 9;
    opacity: .75 !important;
}

.coccoc-alo-ph-circle-fill {
    width: 100px;
    height: 100px;
    top: 50px;
    left: 50px;
    position: absolute;
    background-color: #000;
    -webkit-border-radius: 100%;
    -moz-border-radius: 100%;
    border-radius: 100%;
    border: 2px solid transparent;
    opacity: .1;
    -webkit-animation: coccoc-alo-circle-fill-anim 2.3s infinite ease-in-out;
    -moz-animation: coccoc-alo-circle-fill-anim 2.3s infinite ease-in-out;
    -ms-animation: coccoc-alo-circle-fill-anim 2.3s infinite ease-in-out;
    -o-animation: coccoc-alo-circle-fill-anim 2.3s infinite ease-in-out;
    animation: coccoc-alo-circle-fill-anim 2.3s infinite ease-in-out;
    -webkit-transition: all .5s;
    -moz-transition: all .5s;
    -o-transition: all .5s;
    transition: all .5s;
    -webkit-transform-origin: 50% 50%;
    -moz-transform-origin: 50% 50%;
    -ms-transform-origin: 50% 50%;
    -o-transform-origin: 50% 50%;
    transform-origin: 50% 50%;
}

.coccoc-alo-phone.coccoc-alo-green .coccoc-alo-ph-img-circle {
    background-color: #00aff2;
}

.coccoc-alo-ph-img-circle {
    width: 60px;
    height: 60px;
    top: 70px;
    left: 70px;
    position: absolute;
    background: rgba(30, 30, 30, 0.1) url("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAACXBIWXMAAAsTAAALEwEAmpwYAAABNmlDQ1BQaG90b3Nob3AgSUNDIHByb2ZpbGUAAHjarY6xSsNQFEDPi6LiUCsEcXB4kygotupgxqQtRRCs1SHJ1qShSmkSXl7VfoSjWwcXd7/AyVFwUPwC/0Bx6uAQIYODCJ7p3MPlcsGo2HWnYZRhEGvVbjrS9Xw5+8QMUwDQCbPUbrUOAOIkjvjB5ysC4HnTrjsN/sZ8mCoNTIDtbpSFICpA/0KnGsQYMIN+qkHcAaY6addAPAClXu4vQCnI/Q0oKdfzQXwAZs/1fDDmADPIfQUwdXSpAWpJOlJnvVMtq5ZlSbubBJE8HmU6GmRyPw4TlSaqo6MukP8HwGK+2G46cq1qWXvr/DOu58vc3o8QgFh6LFpBOFTn3yqMnd/n4sZ4GQ5vYXpStN0ruNmAheuirVahvAX34y/Axk/96FpPYgAAACBjSFJNAAB6JQAAgIMAAPn/AACA6AAAUggAARVYAAA6lwAAF2/XWh+QAAAB/ElEQVR42uya7W3CMBCG31QM4A1aNggTlG6QbpBMkHYC1AloJ4BOABuEDcgGtBOETnD9c1ERCH/lwxeaV8oPFGP86Hy+DxMREW5Bd7gRjSDSNGn4/RiAOvm8C0ZCRD5PSkQVXSr1nK/xE3mcWimA1ZV3JYBZCIO4giQANoYxMwYS6+xKY4lT5dJPreWZY+uspqSCKPYN27GJVBDXheVSQe494ksiEWTuMXcu1dld9SARxDX1OAJ4lgjy4zDnFsC076A4adEiRwAZg4hOUSpNoCsBPDGM+HqkNGynYBCuILuWj+dgWysGsNe8nwL4GsrW0m2fxZBq9rW0rNcX5MOQ9eZD8JFahcG5g/iKT671alGAYQggpYWvpEPYWrU/HDTOfeRIX0q2SL3QN4tGhZJukVobQyXYWw7WtLDKDIuM+ZSzscyCE9PCy5IttCvnZNaeiGLNHKuz8ZVh/MXTVu/1xQKmIqLEAuJ0fNo3iG5B51oSkeKnsBi/4bG9gYB/lCytU5G9DryFW+3Gm+JLwU7ehbJrwTjq4DJU8bHcVbEV9dXXqqP6uqO5e2/QZRYJpqu2IUAA4B3tXvx8hgKp05QZW6dJqrLTNkB6vrRURLRwPHqtYgkC3cLWQAcDQGGKH13FER/NATzi786+BPDNjm1dMkfjn2pGkBHkf4D8DgBJDuDHx9BN+gAAAABJRU5ErkJggg==") no-repeat center center;
    -webkit-border-radius: 100%;
    -moz-border-radius: 100%;
    border-radius: 100%;
    border: 2px solid transparent;
    opacity: .7;
    -webkit-animation: coccoc-alo-circle-img-anim 1s infinite ease-in-out;
    -moz-animation: coccoc-alo-circle-img-anim 1s infinite ease-in-out;
    -ms-animation: coccoc-alo-circle-img-anim 1s infinite ease-in-out;
    -o-animation: coccoc-alo-circle-img-anim 1s infinite ease-in-out;
    animation: coccoc-alo-circle-img-anim 1s infinite ease-in-out;
    -webkit-transform-origin: 50% 50%;
    -moz-transform-origin: 50% 50%;
    -ms-transform-origin: 50% 50%;
    -o-transform-origin: 50% 50%;
    transform-origin: 50% 50%;
}

.coccoc-alo-phone.coccoc-alo-green.coccoc-alo-hover .coccoc-alo-ph-img-circle, .coccoc-alo-phone.coccoc-alo-green:hover .coccoc-alo-ph-img-circle {
    background-color: #75eb50;
}

@-moz-keyframes coccoc-alo-circle-anim {
    0% {
        -moz-transform: rotate(0) scale(.5) skew(1deg);
        opacity: .1;
        -moz-opacity: .1;
        -webkit-opacity: .1;
        -o-opacity: .1;
    }

    30% {
        -moz-transform: rotate(0) scale(.7) skew(1deg);
        opacity: .5;
        -moz-opacity: .5;
        -webkit-opacity: .5;
        -o-opacity: .5;
    }

    100% {
        -moz-transform: rotate(0) scale(1) skew(1deg);
        opacity: .6;
        -moz-opacity: .6;
        -webkit-opacity: .6;
        -o-opacity: .1;
    }

}

@-webkit-keyframes coccoc-alo-circle-anim {
    0% {
        -webkit-transform: rotate(0) scale(.5) skew(1deg);
        -webkit-opacity: .1;
    }

    30% {
        -webkit-transform: rotate(0) scale(.7) skew(1deg);
        -webkit-opacity: .5;
    }

    100% {
        -webkit-transform: rotate(0) scale(1) skew(1deg);
        -webkit-opacity: .1;
    }

}

@-o-keyframes coccoc-alo-circle-anim {
    0% {
        -o-transform: rotate(0) kscale(.5) skew(1deg);
        -o-opacity: .1;
    }

    30% {
        -o-transform: rotate(0) scale(.7) skew(1deg);
        -o-opacity: .5;
    }

    100% {
        -o-transform: rotate(0) scale(1) skew(1deg);
        -o-opacity: .1;
    }

}

@-moz-keyframes coccoc-alo-circle-fill-anim {
    0% {
        -moz-transform: rotate(0) scale(.7) skew(1deg);
        opacity: .2;
    }

    50% {
        -moz-transform: rotate(0) -moz-scale(1) skew(1deg);
        opacity: .2;
    }

    100% {
        -moz-transform: rotate(0) scale(.7) skew(1deg);
        opacity: .2;
    }

}

@-webkit-keyframes coccoc-alo-circle-fill-anim {
    0% {
        -webkit-transform: rotate(0) scale(.7) skew(1deg);
        opacity: .2;
    }

    50% {
        -webkit-transform: rotate(0) scale(1) skew(1deg);
        opacity: .2;
    }

    100% {
        -webkit-transform: rotate(0) scale(.7) skew(1deg);
        opacity: .2;
    }

}

@-o-keyframes coccoc-alo-circle-fill-anim {
    0% {
        -o-transform: rotate(0) scale(.7) skew(1deg);
        opacity: .2;
    }

    50% {
        -o-transform: rotate(0) scale(1) skew(1deg);
        opacity: .2;
    }

    100% {
        -o-transform: rotate(0) scale(.7) skew(1deg);
        opacity: .2;
    }

}

@-moz-keyframes coccoc-alo-circle-img-anim {
    0% {
        transform: rotate(0) scale(1) skew(1deg);
    }

    10% {
        -moz-transform: rotate(-25deg) scale(1) skew(1deg);
    }

    20% {
        -moz-transform: rotate(25deg) scale(1) skew(1deg);
    }

    30% {
        -moz-transform: rotate(-25deg) scale(1) skew(1deg);
    }

    40% {
        -moz-transform: rotate(25deg) scale(1) skew(1deg);
    }

    50% {
        -moz-transform: rotate(0) scale(1) skew(1deg);
    }

    100% {
        -moz-transform: rotate(0) scale(1) skew(1deg);
    }

}

@-webkit-keyframes coccoc-alo-circle-img-anim {
    0% {
        -webkit-transform: rotate(0) scale(1) skew(1deg);
    }

    10% {
        -webkit-transform: rotate(-25deg) scale(1) skew(1deg);
    }

    20% {
        -webkit-transform: rotate(25deg) scale(1) skew(1deg);
    }

    30% {
        -webkit-transform: rotate(-25deg) scale(1) skew(1deg);
    }

    40% {
        -webkit-transform: rotate(25deg) scale(1) skew(1deg);
    }

    50% {
        -webkit-transform: rotate(0) scale(1) skew(1deg);
    }

    100% {
        -webkit-transform: rotate(0) scale(1) skew(1deg);
    }

}

@-o-keyframes coccoc-alo-circle-img-anim {
    0% {
        -o-transform: rotate(0) scale(1) skew(1deg);
    }

    10% {
        -o-transform: rotate(-25deg) scale(1) skew(1deg);
    }

    20% {
        -o-transform: rotate(25deg) scale(1) skew(1deg);
    }

    30% {
        -o-transform: rotate(-25deg) scale(1) skew(1deg);
    }

    40% {
        -o-transform: rotate(25deg) scale(1) skew(1deg);
    }

    50% {
        -o-transform: rotate(0) scale(1) skew(1deg);
    }

    100% {
        -o-transform: rotate(0) scale(1) skew(1deg);
    }

}
    </style>