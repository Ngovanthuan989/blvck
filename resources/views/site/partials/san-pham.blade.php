
		
<div id="dmsp_index" class="wow fadeInUp" data-wow-delay="0.5s" >
          <?php $catePr = \App\Entity\Category::getDetailCategory('san-pham-noi-bat'); ?>

     <div class="title_main"><!-- Sản phẩm --> {{ $catePr['title'] }}</div>
     <div id="owl-doitac" class="owl-carousel">
        <!-- <?php print_r(\App\Entity\Product::showProduct('san-pham-noi-bat', 15))?> -->
        @foreach(\App\Entity\Product::showProduct('san-pham-noi-bat', 15) as $product)
           @include('site.partials.itempr')
		   

        @endforeach
     </div>
  </div>
