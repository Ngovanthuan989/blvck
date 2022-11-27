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
        <nav class="uk-navbar uk-navbar-container uk-navbar-transparent product__content__fillter" uk-navbar="">
{{--            <div class="uk-navbar-left">--}}
{{--                <a class="uk-navbar-toggle product__content__fillter__navItem product__content__fillter__btn" href="#offcanvas-overlay-fillter" uk-toggle="" aria-expanded="false">--}}
{{--                    <span class="">FILTER (2)</span>--}}
{{--                </a>--}}
{{--            </div>--}}
            <div class="uk-navbar-right">
                <a href="" class="uk-navbar-toggle product__content__fillter__navItem product__content__fillter__sort"
                   aria-haspopup="true" aria-expanded="false">SORT BY</a>
                <div class="product__content__fillter__dropdown uk-dropdown" uk-dropdown="mode: click" style="max-width: 1489px; top: 67px; left: 1304px;">
                    <ul class="uk-nav uk-nav-default">
{{--                        <li>--}}
{{--                            <a href="?order_by=best-sellers">Best sellers</a>--}}
{{--                        </li>--}}
                        <li>
                            <a href="?order_by=low-to-high">Price, low to high</a>
                        </li>
                        <li>
                            <a href="?order_by=high-to-low">Price, high to low</a>
                        </li>
                        <li>
                            <a href="?order_by=new-arrivals">New arrivals</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="uk-grid-collapse uk-child-width-1-4@s uk-text-center " uk-grid>
            @foreach($products as $item)
                <div>
                    <div class="uk-card home__product__card">
                        <div class="uk-cover-container uk-inline-clip uk-transition-toggle">
                            <img src="{{ isset($item['image']) ? $item['image'] : '' }}" alt="" uk-cover="">
                            <img class="uk-transition-scale-up" src="{{ isset($item['anh-2']) ? $item['anh-2'] : $item['image'] }}" alt="" uk-cover="">
                            <a href="{{ route('product', ['post_slug' => $item->slug, 'languageCurrent' => $languageCurrent]) }}" class="home__product__card__quickadd uk-transition-slide-bottom uk-text-center uk-link-toggle uk-position-bottom uk-overlay uk-overlay-default">
                                View product
                            </a>
                            <canvas width="524" height="524"></canvas>
                        </div>
                        <div class="home__product__card__body uk-text-center">
                            <h3 class="uk-h3 uk-margin-remove home__product__card__title">
                                <a href="{{ route('product', ['post_slug' => $item->slug, 'languageCurrent' => $languageCurrent]) }}"
                                   class="uk-link-toggle">{{ isset($item['title']) ? $item['title'] : '' }}</a>
                            </h3>
                            <div class="item__4">
                                <div class="home__product__card__review uk-flex uk-flex-middle uk-flex-center">
                                    <div class="uk-position-relative uk-margin-small-right">
                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                        <div class="uk-position-center-left uk-text-nowrap uk-overflow-hidden" style="width: 60%">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                    <span class="home__product__card__review__txt">2 reviews</span>
                                </div>
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

