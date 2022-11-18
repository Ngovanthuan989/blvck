<div id="">
      <link href="/site/camera/css/camera.css" type="text/css" media="all" rel="stylesheet" />
      <link href="/site/camera/css/slider.css" type="text/css" media="all" rel="stylesheet" />
      <script src="/site/camera/scripts/jquery.easing.1.3.js"></script>
      <script src="/site/camera/scripts/camera.min.js"></script>
      <script><!--script slide-->
         $(document).ready(function() { 
            if($("#camera_wrap_1").length){
               $('#camera_wrap_1').camera({
                 thumbnails: true,
                 autoAdvance:true,
                 time:2000,
                 height:'40%',
                 minHeight:'150px',
                 pagination:false,
                 
             });
               $('#camera_wrap_1 .cameraContents').addClass("container");
           }
           
         });
      </script><!--script slide-->
      <div id="slider-camera-wrapper" class="wow fadeInUp" data-wow-delay="0.7s">
         <div class="camera_wrap camera_azure_skin" id="camera_wrap_1">
            @foreach(\App\Entity\SubPost::showSubPost('slider', 8) as $id => $slide)
              <div data-thumb="" data-link="" data-href="" data-src="{{ $slide['image'] }}">
              </div>
            @endforeach
          
            </div>
         </div>
         <!-- #camera_wrap_1 -->
         <div class="clearfix"></div>
      </div>
   </div>
   <!--slide-->
   <div class="line_index"></div>
   <div class="div_search_m">
      <div class="ten_cty">Hotline: {{ isset($information['hotline']) ?  $information['hotline'] : '' }}</div>
      <div class="content">
         <form  name="form_s1"  method="get" action="{{ route('search', [ 'languageCurrent' => $languageCurrent] ) }}" method="post" enctype="multipart/form-data">
            <input class="txtkey" name="word" type="text" placeholder="{{ $languageSetup['tim-kiem'] }}..."  />
            <input  class="btn_search" type="button" value="" />
         </form>
      </div>
   </div>