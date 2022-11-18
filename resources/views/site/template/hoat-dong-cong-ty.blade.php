@extends('site.layout.site')

@section('title', $category->title)
@section('meta_description',  $category->description )
@section('keywords', '')

@section('content')
<div id="main">
	<script language="javascript" type="text/javascript">
		function addtocart(pid){
			document.form1.albumid.value=pid;
			document.form1.command.value='add';
			document.form1.submit();
		}
	</script>

	<h1 class="title_main">{{ $post['title'] }}</h1> 
	<div class="content_main div_center">

		<script type='text/javascript' src='/site/grid/jquery.nicescroll.min.js'></script>

		<script type="text/javascript" src="/site/grid/js/script218.js"></script>


		<link rel="stylesheet" type="text/css" href="/site/grid/style218.css">
		<script type="text/javascript" src="/site/grid/jquery.masonry.min.js"></script>

		<link rel="stylesheet" href="/site/grid/vcx-gallery.css">
		<script src="/site/grid/vcx-helper.js"></script>
		<script src="/site/grid/jquery.vcx-gallery.min.js"></script>



		<div class="overHide">
			<div class="list albumView">

				<a href='upload/album/8343556105089880.jpg' data-gallery='' title='HỘI NGHỊ GIỚI THIỆU SẢN PHẨM MỚI ĐIỀN TRANG NEEM'><img src='upload/album/8343556105089880.jpg' alt='HỘI NGHỊ GIỚI THIỆU SẢN PHẨM MỚI ĐIỀN TRANG NEEM' /></a> 

			</div><!--end albumView-->

			<div class="clr"></div>
			<div id="vcx-gallery" class="vcx-gallery vcx-gallery-controls">
				<div class="slides"></div>
				<h3 class="title"></h3>
				<a class="prev">‹</a>
				<a class="next">›</a>
				<a class="close">×</a>
				<a class="play-pause"></a>
			</div>
			<script type="text/javascript">
				var $sort = jQuery('.list');
				$sort.imagesLoaded( function(){
					$sort.masonry({
						itemSelector : '.albumView a',
						columnWidth: 0,
					});
				});
				$(window).resize(function(){
					$sort.masonry({
						itemSelector : '.albumView a',
						columnWidth: 0,
					});
				});
			</script>
			<div class="clr"></div>


			<script type="text/javascript">
				var $numsItems = 1;
				var $currentItems = $(".otherAlbum .oneAlbum").length;
				var $bien = jQuery('.otherAlbum');
				$bien.imagesLoaded( function(){
					$bien.masonry({
						itemSelector : '.otherAlbum .oneAlbum',
						columnWidth: 0,
					});
				});
				$(window).resize(function(){
					$bien.masonry({
						itemSelector : '.otherAlbum .oneAlbum',
						columnWidth: 0,
					});
				});
				$bien.infinitescroll({
					navSelector  : '.pageLink',
					nextSelector : '.pageLink .next',
					itemSelector : '.otherAlbum .oneAlbum',
					loading: {
						finishedMsg: "Đã hiển thị " + $numsItems + ""+ $numsItems + " album",
						img: 'images/classic-loader.gif'
					},
					errorCallback: function(){$('.otherMore').fadeOut(800);}
				},
				function( newElements ) {
					var $newElems = jQuery( newElements ).css({ opacity: 0 });
					$newElems.imagesLoaded(function(){
						$newElems.animate({ opacity: 1 });
						$bien.masonry( 'appended', $newElems, true );

						var $currentItems = $(".otherAlbum .oneAlbum").length;
						if($currentItems >= $numsItems){
							$('.otherMore').html("Đã hiển thị " + $currentItems + ""+ $numsItems + " album");
							setTimeout(function(){
								$('.otherMore').fadeOut(1000);
							},3000)
						}else {$('.otherMore').html("Đang hiển thị " + $currentItems + ""+ $numsItems + " album");}
					});
				});
				jQuery(window).unbind('.infscr');
				jQuery('.otherMore').click(function(){
					$bien.infinitescroll('retrieve');
					return false;
				});
			</script>

		</div>








		<div class="noidung_chitiet_sp">

			<br /><br />
			<div class="fb-comments" data-href="http://phanbondientrang.vn/san-pham/hoi-nghi-gioi-thieu-san-pham-moi-dien-trang-neem-379.html" data-width="100%" data-numposts="5" data-colorscheme="dark"></div>

		</div>

	</div>   





	<div class="title_main">Album khác</div>        

	<div class="content_main" style="text-align:center;">

		<div class="box_album">

			<a href="album-anh/hoi-thao-377.html"   >
				<img class="img" src="upload/album/543920764099_270x185.jpg" alt="HỘI THẢO" />
			</a> 
			<h2 class="ten"><a href="album-anh/hoi-thao-377.html">HỘI THẢO</a></h2>


		</div>

		<div class="clear"></div>
		<div class="phantrang"></div>

	</div>


	<div class="clear"></div>
</div><!--MAIN-->
@endsection