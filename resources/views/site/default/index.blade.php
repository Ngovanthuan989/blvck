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



