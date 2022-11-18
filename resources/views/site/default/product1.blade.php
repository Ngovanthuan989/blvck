@extends('site.layout.site')

@section('title', $product->title)
@section('meta_description',  $product->description )
@section('keywords', '')

@section('content')
    
<div id="main">
  
    <script type="text/javascript">
        <!--$t=jQuery.noConflict();-->
        $(document).ready(function(){
         $('#tabs div#tab-1').show();
         $('#tabs div#tab-2').hide();
         $('#tabs div#tab-3').hide();
         $('#tabs div#tab-4').hide();

         $('#tabs div:first').show();
         $('#tabs ul li:first').addClass('active');
         $('#tabs ul li a').click(function(){ 
             $('#tabs ul li ').removeClass('active');
             $(this).parent().addClass('active'); 
             var currentTab = $(this).attr('href'); 
             $('#tabs div#tab-1').hide();
             $('#tabs div#tab-2').hide();
             $('#tabs div#tab-3').hide();
             $('#tabs div#tab-4').hide();

             $(currentTab).show();
             return false;
         });
     });

 </script>


<script type = "text/javascript" src = "/site/js/magiczoomplus.js"></script>  
<link type = "text/css" rel = "stylesheet" href = "/site/css/magiczoomplus.css" media="screen" />


<h1 class="title_main1">{{ isset($product->title) ? $product->title : '' }}</h1>        
<div class="content_main">

    <div class="hinhanh_detail">

        <div class="slide_index" style="text-align:center" >
            <img src="{{ isset($product['image']) ? $product['image'] : '' }}"  alt="{{ isset($product['title']) ? $product['title'] : '' }}">
        </div>

        <div class="ds_album">  
        </div>
    </div>


    <div class="product_info" >

       <h2 class="ten_sp_detail">{{ isset($product->title) ? $product->title : '' }}</h2>

       <p>{{ $languageSetup['gia'] }}: <span style="color:#F00;">{{ $languageSetup['lien-he'] }}</span></p>

     
       <p>{{ $languageSetup['ma-san-pham'] }}: <strong>{{ isset($product->code) ? $product->code : '' }}</strong></p>

       <br />

      <!--  <div style="float:left;margin-top:10px;color:#CCC !important;width:100%;" class="fb-like" data-href="http://phanbondientrang.vn/san-pham/pl141-trimixdt-rau-thuy-canh-4l-517.html" data-layout="standard" data-action="like" data-show-faces="false" data-share="true" data-colorscheme="dark" ></div> -->

    
    <div class="clear"></div>
    

    {!! isset($product['description']) ? $product['description'] : '' !!} 
    <br />
    
    <p>{{ $languageSetup['lien-he'] }}: <span style="color:#F00;">{{ isset($information['hotline']) ?  $information['hotline'] : '' }}</span></p> 
    
    
    
    
    <!-- JQ Colorbox -->
    <link rel="stylesheet" href="/site/css/colorbox.css" />
    <script type="text/javascript" src="/site/js/jquery.colorbox.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $(".xemhinh_360").colorbox({inline:true, width:"450px", height:"auto"});
            $('.xemhinh_360').each(function(){
               $(this).click(function(){

               });
           });
        });
    </script>
    <!-- ajax - load hình --> 
    <a class="xemhinh_360" href="#hinh_xoay360" title="{{ isset($product['title']) ? $product['title'] : '' }}" >
        <p class="view_360">{{ isset($product['title']) ? $product['title'] : '' }}</p>
    </a>
    
    <div class="clear"></div>
    
    
    
    <div style="display:none;">  
        <div id="hinh_xoay360" > 
            <img class="image_360" src="{{ isset($product['image']) ? $product['image'] : '' }}"  alt="{{ isset($product['title']) ? $product['title'] : '' }}" />
            
        </div>
    </div>
    
    
</div>


<div id="container">
    <div id="tabs">
        <ul class="ul_tab">
          <li ><a href="#tab-1" class="active">{{ $languageSetup['chi-tiet-san-pham'] }} </a></li>
          <li><a href="#tab-2">{{ $languageSetup['lien-he'] }}</a></li>
          
          
          
          
      </ul>
      <div class="clear"></div>
      
      <!--tab 1------------------------------------------------------------------------------->
      <div id="tab-1" class="content">
        {!! isset($product['content']) ? $product['content'] : '' !!}      </div><!--tab tin tức------------------------>
        
        
        <!--tab 2----------------------------------------------->
        <div id="tab-2" class="content">
			<h2 class="ten_sp_detail" >{{ $languageSetup['lien-he-ngay-voi-chung-toi'] }}</h2>
			<div class="withFrom" style="    clear: both;">
<<<<<<< HEAD
		<form {{-- action="{{ route('sub_contact') }}" --}} onSubmit="return contact(this);" method="post">
=======
		<form action="{{ route('sub_contact', [ 'languageCurrent' => $languageCurrent]) }}" method="post">
>>>>>>> 94b6f9fb1110bef9f5feb0003caa08f6d6863581
		 {!! csrf_field() !!}
             <input type="hidden" name="is_json" class="form-control captcha" value="1" placeholder="">
<div class="form-row">
    <div class="form-group col-md-12">
      <label for="inputEmail4">{{ $languageSetup['ho-va-ten'] }}</label>
<<<<<<< HEAD
      <input type="email" class="form-control" id="inputEmail4" placeholder="{{ $languageSetup['ho-va-ten'] }}" name="name">
=======
      <input type="text" class="form-control" id="inputEmail4" placeholder="{{ $languageSetup['ho-va-ten'] }}" name="name">
>>>>>>> 94b6f9fb1110bef9f5feb0003caa08f6d6863581
    </div>
   
  </div>
  <div class="form-row">
    <div class="form-group col-md-12">
      <label for="inputEmail4">{{ $languageSetup['email'] }}</label>
      <input type="email" class="form-control" id="inputEmail4" placeholder="{{ $languageSetup['email'] }}" name="email">
    </div>
   
  </div>
    <div class="form-group">
    <label for="inputAddress">{{ $languageSetup['so-dien-thoai'] }}</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="{{ $languageSetup['so-dien-thoai'] }}" name="phone">
  </div>
<<<<<<< HEAD
  <div class="form-group">
    <label for="inputAddress">{{ $languageSetup['dia-chi'] }}</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="{{ $languageSetup['dia-chi'] }}" name="address">
  </div>
  <div class="form-group" style="display:none;">
    <label for="inputAddress2">{{ $languageSetup['loi-nhan'] }}</label>
    <input type="hidden" class="form-control" id="message" placeholder="{{ $languageSetup['loi-nhan'] }}" value="{{ isset($product['title']) ? $product['title'] : '' }}">
=======
  <div class="form-group" style="display:none;">
    <input type="hidden" class="form-control" name="message" placeholder="{{ $languageSetup['loi-nhan'] }}" value="{{ isset($product['title']) ? $product['title'] : '' }}">
>>>>>>> 94b6f9fb1110bef9f5feb0003caa08f6d6863581
  </div>
 
 <div class="form-group">
  <button type="submit" class="btn btn-primary">{{ $languageSetup['gui-lien-he'] }}</button>
  </div>
</form>
		</div>
		
             
        </div>

     </div>



 </div><!--end tabs -->

</div> 

<div class="title_main"> {{ $languageSetup['san-pham-cung-the-loai'] }}</div>        

<div class="content_main" style="text-align:center;">
    @foreach(\App\Entity\Product::relativeProduct($product->slug, $product->product_id, 20) as $id => $productRelative)
    <div class="item_sp wow fadeInUp" data-wow-delay="100ms" >
        <a class="dv_img" href="{{ route('product', ['post_slug' => $productRelative->slug, 'languageCurrent' => $languageCurrent]) }}" >
            <img class="img" src="{{ isset($productRelative['image']) ? $productRelative['image'] : '' }}" alt="{{ isset($productRelative['title']) ? $productRelative['title'] : '' }}" title="{{ isset($productRelative['title']) ? $productRelative['title'] : '' }}" />
        </a>   
        <h2 class="tensp"><a href="{{ route('product', ['post_slug' => $productRelative->slug, 'languageCurrent' => $languageCurrent]) }}">{{ isset($productRelative['title']) ? $productRelative['title'] : '' }}</a>
        </h2>
		<p style="    font-size: 16px;
    color: green;">{{ $languageSetup['gia'] }} : {{ $languageSetup['lien-he'] }}</p>
        
    </div>
    @endforeach
    
    <div class="clear"></div>
    <div class="phantrang wow fadeInUp" data-wow-delay="1s"></div>

</div>

</div>   






<div class="clear"></div>
</div><!--MAIN-->

@endsection

