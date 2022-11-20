@extends('site.layout.site')

@section('title', $category->title)
@section('meta_description',  $category->description )
@section('keywords', '')
<?php $bodyClass = '' ?>
<?php $headerTransparent = true ?>

@section('content')
    <div class="uk-background-cover uk-background-norepeat uk-background-center-center" uk-height-viewport="offset-bottom: 50"
         data-src="{{ asset('site/images/img_ph_collection-hero_1728x.jpg') }}" uk-img>
        <div class="uk-container uk-container-expand" style="padding-top: 120px">
            <h2 class="uk-h2 home__slideshow__title animation uk-text-center">{{ $category->title }}</h2>
            <div class="uk-child-width-auto uk-flex-center uk-grid-10 uk-grid-40-m home__slideshow__item-60-35 uk-padding" uk-grid>
                <div>
                    <a href="#"
                       class="home__slideshow__btn uk-button uk-button-large uk-button-secondary">{{ $category->description }}</a>
                </div>
            </div>
        </div>
    </div>
    <div id="product-list">
        <div class="uk-grid-collapse uk-child-width-1-4@s uk-text-center " uk-grid>
            @foreach($products as $item)
                <div>
                    <div class="uk-card home__product__card">
                        <div class="uk-cover-container uk-inline-clip uk-transition-toggle">
                            <img src="{{ isset($item['image']) ? $item['image'] : '' }}" alt="" uk-cover="">
                            <img class="uk-transition-scale-up" src="{{ isset($item['anh-2']) ? $item['anh-2'] : $item['image'] }}" alt="" uk-cover="">
                            <a class="home__product__card__quickadd uk-transition-slide-bottom uk-text-center uk-link-toggle uk-position-bottom uk-overlay uk-overlay-default">
                                Quick add
                            </a>
                            <canvas width="524" height="524"></canvas>
                        </div>
                        <div class="home__product__card__body uk-text-center">
                            <h3 class="uk-h3 uk-margin-remove home__product__card__title">
                                <a href="" class="uk-link-toggle">{{ isset($item['title']) ? $item['title'] : '' }}</a>
                            </h3>
                            <div class="item__4">
                                    <span class="home__product__card__price home__product__card__price--new">
                                        {{ isset($item['price']) ? number_format($item['price']) : '' }}
                                        {{ isset($information['currency']) ? $information['currency'] : '' }}
                                    </span>
                                <del class="home__product__card__price home__product__card__price--old">
                                    {{ isset($item['giam-gia']) ? number_format($item['giam-gia']) : '' }}
                                    {{ isset($information['currency']) ? $information['currency'] : '' }}
                                </del>
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
    <div class="uk-section-xsmall">
        <div class="uk-container uk-container-expand">
            <ul class="uk-pagination uk-flex-center" uk-margin>
                @if ($products->lastPage() > 1)
                    <li><a href="{{ $products->url(1) }}"><span uk-pagination-previous></span></a></li>

                    @for ($i = 1; $i <= $products->lastPage(); $i++)

                        <li class="{{ ($products->currentPage() == $i) ? ' uk-active' : '' }}">
                            <a href="{{ $products->url($i) }}" >{{ $i }}</a>
                        </li>
                    @endfor
                    <li><a href="{{ $products->url($products->currentPage()+1) }}"><span uk-pagination-next></span></a></li>
                @endif
            </ul>
        </div>
    </div>
@endsection

