@extends('site.layout.site')

@section('title', isset($information['meta_title']) ? $information['meta_title'] : '')
@section('meta_description', isset($information['meta_description']) ? $information['meta_description'] : '')
@section('keywords', isset($information['meta_keyword']) ? $information['meta_keyword'] : '')

@section('content')
   @include('site.partials.slider')

      <div id="main">
      <script language="javascript" type="text/javascript">
         function addtocart(pid){
             document.form1.productid.value=pid;
             document.form1.command.value='add';
             document.form1.submit();
         }
      </script>
      <form name="form1" action="index.php">
         <input type="hidden" name="productid" />
         <input type="hidden" name="command" />
      </form>
      <h1 class="the_h1_first">{{ isset($information['tieu-de-gioi-thieu']) ?  $information['tieu-de-gioi-thieu'] : '' }}</h1>
      <h2 class="the_h1_first">{{ isset($information['tieu-de-gioi-thieu']) ?  $information['tieu-de-gioi-thieu'] : '' }}</h2>
      <div class="content_main div_center"  >
         <div class="gioithieu_index wow fadeInUp">
            <a href="">
            <img src="{{ isset($information['anh-gioi-thieu']) ?  $information['anh-gioi-thieu'] : '' }}" alt="{{ isset($information['tieu-de-gioi-thieu']) ?  $information['tieu-de-gioi-thieu'] : '' }}" title="{{ isset($information['tieu-de-gioi-thieu']) ?  $information['tieu-de-gioi-thieu'] : '' }}" class="img" />
            </a>
            <p><span style="font-size: medium; color: #800000; font-family: 'andale mono', times;"><strong>{{ isset($information['tieu-de-gioi-thieu']) ?  $information['tieu-de-gioi-thieu'] : '' }}</span></p>
            <p><span style="color: #000000;">{{ isset($information['mo-ta-gioi-thieu']) ?  $information['mo-ta-gioi-thieu'] : '' }}</span></p>
            <br />
            <a class="xemthem" href="{{ route('post', ['cate_slug' => ($languageCurrent == 'vn') ? 'tin-tuc' : 'new' , 'post_slug' => ($languageCurrent == 'vn') ? 'gioi-thieu' : 'introduce', 'languageCurrent' => $languageCurrent]) }}">{{ $languageSetup['xem-them'] }}</a>
         </div>
         <div class="div_video">
            <style type="text/css">
               .videoShow
               {
                  display: none;
				  height:270px;
               }
               .acticeShowVideo
               {
                  display: block;
               }
            </style>
            <!-- <script type="text/javascript">
               $(document).ready(function() {
                   $('p.video1').click(function (){
                       var value = $(this).attr('id');
                       var videoshow = $('.ajax_video').find('.videoShow').attr('dataid');
                          
                        $('.videoShow').removeClass('.acticeShowVideo');
                        if(value == videoshow)
                        {
                           $(videoshow).addClass('.acticeShowVideo');
                        }



                   });
               });
            </script> -->


            <div class="ajax_video">
               @foreach(\App\Entity\SubPost::showSubPost('video', 8) as $id => $video)
                  <div class="videoShow city {{ ($id == 0) ? 'acticeShowVideo' : '' }} " dataid="video{{ $id + 1 }}" id="{{ $id + 1 }}">
                      {!! $video['description'] !!}
                  </div>
               <!-- <iframe width="100%" height="300px" src="embed/7Pa_uTs1W84" frameborder="0" allowfullscreen></iframe> -->
               @endforeach
            </div>
            <center>
               <div class="content_video_index">
                  @foreach(\App\Entity\SubPost::showSubPost('video', 8) as $id => $video)
                     <p class="video1" id="video{{ $id + 1 }}" 
                     onclick="openVideo('{{ $id + 1 }}')">{{ $id + 1 }}. {{ $video['title'] }} </p>
                  @endforeach

                 
               </div>
            </center>
            <script>
            function openVideo(name) {
              var i;
              var x = document.getElementsByClassName("city");
              for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";  
              }
              document.getElementById(name).style.display = "block";  
            }
            </script>



         </div>
      </div>
      <div class="clear"></div>
      <!-- Demo -->
      <style>
         #owl-doitac
         {
         width:97%;
         margin:0px auto;
         overflow:hidden;
         border:solid 1px #CCCCCC;
         margin-left:-1px;
         padding:1%;
         }
         .customNavigation{
         float:left;
         text-align: center;
         height:0px;
         width:100%;
         }
         .customNavigation a{
         -webkit-user-select: none;
         -khtml-user-select: none;
         -moz-user-select: none;
         -ms-user-select: none;
         user-select: none;
         cursor:pointer;
         -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
         }
         .btn.prev_2 {
         background:url(images/btn_prev2.png) no-repeat left center;
         width:35px;
         height:58px;
         float:left;
         position:relative;
         z-index:100;
         display:block;
         left:0px;
         top:110px;
         }
         .btn.next_2 {
         background:url(images/btn_next2.png) no-repeat right center;
         width:35px;
         height:58px;
         float:right;
         position:relative;
         z-index:100;
         display:block;
         right:0px;
         top:110px;
         }
         #owl-doitac .item_sp
         {
         margin:5px auto !important;
         }
      </style>
      <script>
         <!--$j=jQuery.noConflict();-->
         $(document).ready(function() {
         
           var owl = $("#owl-doitac");
         
           owl.owlCarousel({
         
         items :5, //10 items above 1000px browser width
         itemsDesktop : [1280,5], //5 items between 1000px and 901px
         itemsDesktopSmall : [999,4], // 3 items betweem 900px and 601px
         
         
         itemsTablet: [820,3], //2 items between 600 and 0;
         
         itemsTabletSmall: [640,2], //2 items between 600 and 0;
         
         itemsMobile : [450,1], // itemsMobile disabled - inherit from itemsTablet option
         navigation: false,
         pagination: false,
         autoPlay: true,
         
         //Basic Speeds
         slideSpeed : 200,
         paginationSpeed : 300,
         rewindSpeed : 500,
         
         });
           
           $(".next_2").click(function(){
            owl.trigger('owl.next');
         })
           $(".prev_2").click(function(){
            owl.trigger('owl.prev');
         })
         
           
         
         });
      </script>
      <!-- sản phẩm nổi bật -->
      @include('site.partials.san-pham')



      <div class="content_main div_center"  >
         <div id="tintuc_index"   >
            
            
                  <div class="div_tintuc wow fadeInRight" data-wow-delay="0.4s"  >
                     @foreach (\App\Entity\Menu::showWithLocation('category-home-left') as $mainLeft)
                        @foreach (\App\Entity\MenuElement::showMenuPageArray($mainLeft->slug) as $id=>$menuLeft)
                     <h2 class="title_tt">{{ $menuLeft['title_show'] }}</h2>
                   
                        <?php 
                           $slug =  \App\Ultility\Ultility::createSlug($menuLeft['title_show']);
                        ?>  
                        @foreach(\App\Entity\Post::categoryShow( $slug , 5) as $id=>$post) 
                           <div class="content">
                           
                           @if($id == 0)
                       
                           <!-- createSlug -->
                           <div class="box_news_i wow fadeInUp" data-wow-delay="0.8s" >
							<div class="maxImg">
								
							
                              <a href="{{ route('post', ['cate_slug' => $slug, 'post_slug' => $post->slug, 'languageCurrent' => $languageCurrent]) }}" >
                                 <img src="{{ isset($post['image']) ? $post['image'] : '' }}"  alt="{{ isset($post['title']) ? $post['title'] : '' }}" class="img" /></a>
								 </div>
                              <h2 class="title"> 
                                 <a href="{{ route('post', ['cate_slug' => $slug, 'post_slug' => $post->slug, 'languageCurrent' => $languageCurrent]) }}">
                                 {{ isset($post['title']) ? $post['title'] : ''  }} </a>
                              </h2>
                              <div class="mota">
                              {{ isset($post['description']) ? \App\Ultility\Ultility::textLimit($post['description'], 20) : '' }}
                              </div>
                           </div>
                           @else
							
							<div class="contentHeight">
                           <p class="list_ttt"><a href="{{ route('post', ['cate_slug' => $slug, 'post_slug' => $post->slug, 'languageCurrent' => $languageCurrent]) }}">• {{ isset($post['title']) ? $post['title'] : ''  }}</a></p>
						   </div>
                           @endif
                         
                           </div>
                          @endforeach 
                        @endforeach
                     @endforeach  
                    

                  </div>
                  <div class="div_tintuc wow fadeInRight" data-wow-delay="0.8s">
                  
                     @foreach (\App\Entity\Menu::showWithLocation('category-home-center') as $mainCenter)
                        @foreach (\App\Entity\MenuElement::showMenuPageArray($mainCenter->slug) as $id=>$menuCenter)
                     <h2 class="title_tt">{{ $menuCenter['title_show'] }}</h2>
                   
                        <?php 
                           $slug =  \App\Ultility\Ultility::createSlug($menuCenter['title_show']);
                        ?>  
                        @foreach(\App\Entity\Post::categoryShow( $slug , 5) as $id=>$post) 
                           <div class="content">
                           
                           @if($id == 0)
                       
                           <!-- createSlug -->
                           <div class="box_news_i wow fadeInUp" data-wow-delay="0.8s" >
						   <div class="maxImg">
                              <a href="{{ route('post', ['cate_slug' => $slug, 'post_slug' => $post->slug, 'languageCurrent' => $languageCurrent]) }}" >
                                 <img src="{{ isset($post['image']) ? $post['image'] : '' }}"  alt="{{ isset($post['title']) ? $post['title'] : '' }}" class="img" /></a>
								 </div>
                              <h2 class="title"> 
                                 <a href="{{ route('post', ['cate_slug' => $slug, 'post_slug' => $post->slug, 'languageCurrent' => $languageCurrent]) }}">
                                 {{ isset($post['title']) ? $post['title'] : ''  }} </a>
                              </h2>
                              <div class="mota">
                              {{ isset($post['description']) ? \App\Ultility\Ultility::textLimit($post['description'], 20) : '' }}
                              </div>
                           </div>
                           @else

							<div class="contentHeight">
                           <p class="list_ttt"><a href="{{ route('post', ['cate_slug' => $slug, 'post_slug' => $post->slug, 'languageCurrent' => $languageCurrent]) }}">• {{ isset($post['title']) ? $post['title'] : ''  }}</a></p>
						   </div>
                           @endif
                         
                           </div>
                          @endforeach 
                        @endforeach
                     @endforeach  
                 

                  </div>
                
					<script>
					//Đồng bộ chiều cao các div
					$(function() {
						$('.contentHeight').matchHeight();
					});
					
				</script>
         

            <div class="div_tintuc wow fadeInRight" data-wow-delay="1.2s"  >
                @foreach (\App\Entity\Menu::showWithLocation('category-home-right') as $mainRight)
                    @foreach (\App\Entity\MenuElement::showMenuPageArray($mainRight->slug) as $id=>$menuRight)
					<?php 
                           $slug =  \App\Ultility\Ultility::createSlug($menuRight['title_show']);
                        ?> 

               <h2 class="title_tt">{{ $menuRight['title_show'] }}</h2>
			   
			    
 @endforeach
                     @endforeach 						
               <div class="content">
                  <script type="text/javascript" charset="utf-8" src="/site/js/ImageScroller.js"></script>
                  <div id="ctsdiv3" style="height:auto;max-height:800px; overflow:hidden;">
                     <table width="100%" border="0" cellspacing="0" cellpadding="0" id="ctstbl3" style="position:relative; margin:0px">
                        @foreach(\App\Entity\Post::categoryShow( $slug , 15) as $id=>$post) 
                        <tr>
                           <td valign="top">
                              <div class="box_news_i wow fadeInUp" data-wow-delay="0.8s" >
                                 <a href="{{ route('post', ['cate_slug' => $slug, 'post_slug' => $post->slug, 'languageCurrent' => $languageCurrent]) }}" ><img src="{{ isset($post['image']) ? $post['image'] : '' }}"  alt=" {{ isset($post['title']) ? $post['title'] : ''  }}" class="img" /></a>
                                 <h2 class="title"> <a href="{{ route('post', ['cate_slug' => $slug, 'post_slug' => $post->slug, 'languageCurrent' => $languageCurrent]) }}">  {{ isset($post['title']) ? $post['title'] : ''  }} </a></h2>
                                 <div class="mota">{{ isset($post['description']) ? \App\Ultility\Ultility::textLimit($post['description'], 20) : '' }}</div>
                              </div>
                           </td>
                        </tr>
                        @endforeach 
                     </table>
                  </div>
                  <script type="text/javascript">createScroller("myScroller3", "ctsdiv3", "ctstbl3",0,70,2,0,1);</script>
               </div>
			   
            </div>
         </div>
         <!--#tintuc_index-->
         <!-- JQ Colorbox -->
         <link rel="stylesheet" href="/site/css/colorbox.css" />
         <script type="text/javascript" src="/site/js/jquery.colorbox.js"></script>
         <script>
            $(document).ready(function(){
                $(".gui_hoidap").colorbox({inline:true, width:"350px", height:"490px"});
                $('.gui_hoidap').each(function(){
                    $(this).click(function(){
                     
                    });
                });
            });
         </script>
         <!-- ajax - load giới thiệu --> 
         <div style="display:none;">
            <div id="frm_gui_hoidap">
               <form method="post" name="frm_hoidap" action="hoi-dap.html">
                  <table width="100%" cellpadding="5" cellspacing="0" border="0" class="tablelienhe">
                     <tr>
                        <td>Họ tên<span>*</span></td>
                        <td><label>
                           <input name="ten" type="text" class="input" id="ten" size="40" />
                           </label>
                        </td>
                     </tr>
                     <tr>
                        <td>Địa Chỉ </td>
                        <td>
                           <input name="diachi" type="text"  class="input" id="diachi" size="40" />
                        </td>
                     </tr>
                     <tr>
                        <td>Điện thoại</td>
                        <td><label>
                           <input name="dienthoai" type="text" class="input" id="dienthoai" size="40">
                           </label>
                        </td>
                     </tr>
                     <tr>
                        <td>Email<span>*</span></td>
                        <td><label>
                           <input name="email" type="text" class="input" id="email" size="40"  />
                           </label>
                        </td>
                     </tr>
                     <tr>
                        <td>Nội dung<span>*</span></td>
                        <td>
                           <textarea name="noidung" cols="30" rows="5" class="ta_noidung" id="noidung" style="background-color:#FFFFFF; color:#666666;"></textarea>  
                        </td>
                     </tr>
                     <tr>
                        <td colspan="3" align="center" class="text_vanban_gg1" valign="middle" style="padding-top:8px;"> 
                           <input class="button" type="button" value="Gửi" onclick="submit_hoidap();" />
                           <input class="button" type="button" value="Làm lại" onclick="document.frm_hoidap.reset();" />                
                        </td>
                     </tr>
                  </table>
               </form>
            </div>
         </div>
      </div>
      <div class="clear"></div>
   </div>
   <!--MAIN-->
   <div class="clear"></div>
@endsection



