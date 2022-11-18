<div class="item_sp wow fadeInUp" data-wow-delay="100ms" >
   <a class="dv_img" href="{{ route('product', ['languageCurrent' => $languageCurrent, 'post_slug' => $product->slug ])}}">

   <img class="img" src="{{ isset($product['image']) ? $product['image'] : '' }}" alt="{{ isset($product['title']) ? $product['title'] : '' }}" title="{{ isset($product['title']) ? $product['title'] : '' }}" />

   </a>   
   <h2 class="tensp"><a href="{{ route('product', ['languageCurrent' => $languageCurrent, 'post_slug' => $product->slug ])}}">{{ isset($product['title']) ? $product['title'] : '' }}</a>
  
   </h2>
    <p style="    font-size: 16px;
    color: green;">{{ $languageSetup['gia'] }} : {{ $languageSetup['lien-he'] }}</p>
</div>