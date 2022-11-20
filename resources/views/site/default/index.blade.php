@extends('site.layout.site')

@section('title', isset($information['meta_title']) ? $information['meta_title'] : '')
@section('meta_description', isset($information['meta_description']) ? $information['meta_description'] : '')
@section('keywords', isset($information['meta_keyword']) ? $information['meta_keyword'] : '')
<?php $bodyClass = '' ?>
<?php $headerTransparent = true ?>

@section('content')
    <div class="home__slideshow uk-slideshow uk-position-relative uk-visible-toggle uk-light" tabindex="-1" uk-slideshow="ratio: false">
        <ul class="uk-slideshow-items" uk-height-viewport="min-height: 300" uk-scrollspy="cls: uk-animation-scale-down; target: .animation; delay: 500; repeat: true">
            @foreach(\App\Entity\SubPost::showSubPost('banner', 2) as $id => $item)
            <li>
                <img class="uk-cover" src="{{ isset($item->image) ? $item->image : '' }}" alt="" uk-cover>
                <div class="uk-position-cover uk-flex uk-flex-middle">
                    <div class="uk-section-xsmall uk-width-1-1 uk-text-center">
                        <div class="uk-container uk-container-expand">
                            <div class="home__slideshow__txt animation">{{ isset($item['title']) ? $item['title'] : '' }}</div>
                            <h2 class="uk-h2 home__slideshow__title animation">{{ isset($item['sub-title']) ? $item['sub-title'] : '' }}</h2>
                            <div class="uk-child-width-auto uk-flex-center uk-grid-10 uk-grid-40-m home__slideshow__item-60-35" uk-grid>
                                <div>
                                    @if(isset($item['button-1']))
                                    <a href="{{isset($item['link-button-1']) ? $item['link-button-1'] : ''}}"
                                       class="home__slideshow__btn uk-button uk-button-large uk-button-secondary">{{$item['button-1']}}</a>
                                    @endif
                                </div>
                                <div>
                                    @if(isset($item['button-2']))
                                        <a href="{{isset($item['link-button-2']) ? $item['link-button-2'] : ''}}"
                                           class="home__slideshow__btn uk-button uk-button-large uk-button-secondary">{{$item['button-2']}}</a>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            @endforeach
        </ul>
        <a class="uk-position-center-left uk-position-small" href="#" uk-slidenav-previous uk-slideshow-item="previous"></a>
        <a class="uk-position-center-right uk-position-small" href="#" uk-slidenav-next uk-slideshow-item="next"></a>

    </div>

    <!--Product-->
    <h2 class="uk-h2 uk-text-center home__product__title" style="color: #000">Just Dropped</h2>

    <ul class="home__product__navTabs home__product__item-32-20 uk-subnav uk-subnav-pill uk-flex-center"
        uk-switcher="connect: .switcher-container">
        <li><a href="#">Women</a></li>
        <li><a href="#">Men</a></li>
        <li><a href="#">Accessories</a></li>
    </ul>

    <ul class="uk-switcher switcher-container home__slideshow__item-60-35">
        <li>
            <div class="uk-position-relative uk-visible-toggle uk-light" tabindex="-1" uk-slider>
                <ul class="uk-slider-items uk-child-width-auto">
                    @foreach(\App\Entity\Product::showProduct('women') as $item)
                    <li>
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
                    </li>
                    @endforeach
                </ul>

                <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slider-item="previous"></a>
                <a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slider-item="next"></a>

            </div>
        </li>
        <li><div class="uk-position-relative uk-visible-toggle uk-light" tabindex="-2" uk-slider>

                <ul class="uk-slider-items uk-child-width-auto">
                    @foreach(\App\Entity\Product::showProduct('men') as $item)
                        <li>
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
                        </li>
                    @endforeach
                </ul>

                <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slider-item="previous"></a>
                <a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slider-item="next"></a>

            </div></li>
        <li><div class="uk-position-relative uk-visible-toggle uk-light" tabindex="-3" uk-slider>
                <ul class="uk-slider-items uk-child-width-auto">
                    @foreach(\App\Entity\Product::showProduct('accessories') as $item)
                        <li>
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
                        </li>
                    @endforeach
                </ul>

                <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slider-item="previous"></a>
                <a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slider-item="next"></a>

            </div>
            </li>
    </ul>
    <!--/Product-->

    <!--BLVCK HOME-->
    @foreach(\App\Entity\SubPost::showSubPost('block-1', 1) as $id => $item)
        <div class="uk-height-viewport uk-flex uk-flex-middle uk-background-norepeat uk-background-center-center uk-background-cover"
         data-src="{{ isset($item['image']) ? $item['image'] : '' }}" uk-img>
        <div class="uk-section-xsmall uk-width-1-1 uk-text-center">
            <div class="uk-container uk-container-expand">
                <div class="home__slideshow__txt">{{ isset($item['title']) ? $item['title'] : '' }}</div>
                <h2 class="uk-h2 home__slideshow__title">{{ isset($item['description']) ? $item['description'] : '' }}</h2>
                <div class="uk-child-width-auto uk-flex-center uk-grid-10 uk-grid-40-m home__slideshow__item-60-35" uk-grid>
                    <div>
                        @if(isset($item['button-1']))
                        <a href="{{ isset($item['link-button-1']) ? $item['link-button-1'] : '' }}" class="home__slideshow__btn uk-button uk-button-large uk-button-secondary">
                            {{ isset($item['button-1']) ? $item['button-1'] : '' }}
                        </a>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endforeach
    <!--/BLVCK HOME-->

    <!--WHTE-->
    @foreach(\App\Entity\SubPost::showSubPost('block-2', 1) as $id => $item)
    <div class="uk-height-viewport uk-flex uk-flex-middle uk-background-norepeat uk-background-center-center uk-background-cover"
         data-src="{{ isset($item['image']) ? $item['image'] : '' }}" uk-img>
        <div class="uk-section-xsmall uk-width-1-1 uk-text-center">
            <div class="uk-container uk-container-expand">
                <div class="home__slideshow__txt">{{ isset($item['title']) ? $item['title'] : '' }}</div>
                <h2 class="uk-h2 home__slideshow__title">{{ isset($item['description']) ? $item['description'] : '' }}</h2>
                <div class="uk-child-width-auto uk-flex-center uk-grid-10 uk-grid-40-m home__slideshow__item-60-35" uk-grid>
                    @if(isset($item['button-1']))
                    <div>
                        <a href="{{ isset($item['link-button-1']) ? $item['link-button-1'] : '' }}" class="home__slideshow__btn uk-button uk-button-large uk-button-secondary">
                            {{ isset($item['button-1']) ? $item['button-1'] : '' }}
                        </a>
                    </div>
                    @endif
                    @if(isset($item['button-2']))
                        <div>
                            <a href="{{ isset($item['link-button-2']) ? $item['link-button-2'] : '' }}" class="home__slideshow__btn uk-button uk-button-large uk-button-secondary">
                                {{ isset($item['button-2']) ? $item['button-2'] : '' }}
                            </a>
                        </div>
                    @endif

                </div>
            </div>
        </div>
    </div>
    @endforeach
    <!--/WHTE-->

    <!--BLVCK X CASETIFY-->
    @foreach(\App\Entity\SubPost::showSubPost('block-3', 1) as $id => $item)
    <div class="uk-height-viewport uk-flex uk-flex-middle uk-background-norepeat uk-background-center-center uk-background-cover"
         data-src="{{ isset($item['image']) ? $item['image'] : '' }}" uk-img>
        <div class="uk-section-xsmall uk-width-1-1 uk-text-center">
            <div class="uk-container uk-container-expand">
                <div class="home__slideshow__txt">{{ isset($item['title']) ? $item['title'] : '' }}</div>
                <h2 class="uk-h2 home__slideshow__title">{{ isset($item['description']) ? $item['description'] : '' }}</h2>
                <div class="uk-child-width-auto uk-flex-center uk-grid-10 uk-grid-40-m home__slideshow__item-60-35" uk-grid>
                    @if(isset($item['button-1']))
                        <div>
                            <a href="{{ isset($item['link-button-1']) ? $item['link-button-1'] : '' }}" class="home__slideshow__btn uk-button uk-button-large uk-button-secondary">
                                {{ isset($item['button-1']) ? $item['button-1'] : '' }}
                            </a>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </div>
    @endforeach

    <!--/BLVCK X CASETIFY-->
    <!--BLOG-->
    <div class="uk-section-xsmall uk-text-center">
        <div class="uk-container uk-container-expand">
            <h2 class="uk-h2 uk-margin-remove home__title">Blog posts</h2>
        </div>
    </div>
    <div class="uk-child-width-1-3@m home__blog__grid uk-child-width-auto uk-grid-collapse uk-overflow-auto" uk-grid>
        @foreach(\App\Entity\Post::newPost($slug ='blog', 3) as $item)
        <div>
            <div class="home__blog__width">
                <div class="uk-cover-container uk-background-muted">
                    <img src="{{ isset($item['image']) ? $item['image'] : '' }}" alt="" uk-cover="">
                    <canvas width="573" height="573"></canvas>
                    <a href="{{ route('post', ['cate_slug' => $slug, 'post_slug' => $item['slug'], 'languageCurrent' => $languageCurrent]) }}" class="uk-position-cover"></a>
                </div>
                <div class="uk-padding-small home__blog__box">
                    <h4 class="uk-h4 home__blog__title">
                        <a href="{{ route('post', ['cate_slug' => $slug, 'post_slug' => $item['slug'], 'languageCurrent' => $languageCurrent]) }}" class="uk-link-toggle">
                            {{ isset($item['title']) ? $item['title'] : '' }}
                        </a>
                    </h4>
                    <div class="home__blog__desc item__15">
                        {{ isset($item['description']) ? $item['description'] : '' }}
                    </div>
                </div>
            </div>
        </div>
        @endforeach
    </div>
    <!--/BLOG-->
@endsection



