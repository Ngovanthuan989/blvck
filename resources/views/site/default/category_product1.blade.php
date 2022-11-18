@extends('site.layout.site')

@section('title', $category->title)
@section('meta_description',  $category->description )
@section('keywords', '')

@section('content')
<div id="main">



    <h1 class="title_main">{{ $category->title }}</h1>

    <div class="content_main" style="text-align:center" >


        @foreach ($products as $id => $product)
        <div class="item_sp wow fadeInUp" data-wow-delay="200ms" >
            <a class="dv_img" href="{{ route('product', ['post_slug' => $product->slug, 'languageCurrent' => $languageCurrent]) }}">

                <img class="img" src="{{ isset($product['image']) ? $product['image'] : '' }}" alt="{{ isset($product['title']) ? $product['title'] : '' }}" title="{{ isset($product['title']) ? $product['title'] : '' }}" />
            </a>

            <h2 class="tensp"><a href="{{ route('product', ['post_slug' => $product->slug, 'languageCurrent' => $languageCurrent]) }}">{{ isset($product['title']) ? $product['title'] : '' }}</a>
            </h2> <p style="    font-size: 16px;
    color: green;">{{ $languageSetup['gia'] }} : {{ $languageSetup['lien-he'] }}</p>


        </div>
        @endforeach




        <div style="clear:both"></div>
        <div class="phantrang wow fadeInUp" data-wow-delay="1s" >
			{{ $products->links()}}
         </div>

    </div>

</div>

@endsection

