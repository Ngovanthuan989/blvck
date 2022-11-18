@extends('site.layout.site')

@section('title', $product->title)
@section('meta_description',  $product->description )
@section('keywords', '')

@section('content')
    <main id="MainContent" class="content-for-layout focus-none" role="main" tabindex="-1">
        <section id="shopify-section-template--15590144082099__main" class="shopify-section section">
            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/section-main-product.css') }}"
                  rel="stylesheet" type="text/css" media="all"/>
            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-accordion.css') }}"
                  rel="stylesheet" type="text/css" media="all"/>
            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-price.css') }}"
                  rel="stylesheet" type="text/css" media="all"/>
            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-rte.css') }}"
                  rel="stylesheet" type="text/css" media="all"/>
            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-slider.css') }}"
                  rel="stylesheet" type="text/css" media="all"/>
            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-rating.css') }}"
                  rel="stylesheet" type="text/css" media="all"/>
            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-loading-overlay.css') }}"
                  rel="stylesheet" type="text/css" media="all"/>

            <link rel="stylesheet"
                  href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-deferred-media.css') }}"
                  media="print" onload="this.media='all'">
            <style data-shopify>.section-template--15590144082099__main-padding {
                    padding-top: 27px;
                    padding-bottom: 12px;
                }

                @media screen and (min-width: 750px) {
                    .section-template--15590144082099__main-padding {
                        padding-top: 36px;
                        padding-bottom: 16px;
                    }
                }</style>
            <script src="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/product-form.js') }}"
                    defer="defer"></script>
            <section class="page-width section-template--15590144082099__main-padding">
                <div class="product product--medium product--stacked grid grid--1-col grid--2-col-tablet">
                    <div class="grid__item product__media-wrapper">
                        <media-gallery id="MediaGallery-template--15590144082099__main" role="region"
                                       class="product__media-gallery" aria-label="Gallery Viewer"
                                       data-desktop-layout="stacked">
                            <div id="GalleryStatus-template--15590144082099__main" class="visually-hidden"
                                 role="status"></div>
                            <slider-component id="GalleryViewer-template--15590144082099__main"
                                              class="slider-mobile-gutter">
                                <a class="skip-to-content-link button visually-hidden"
                                   href="#ProductInfo-template--15590144082099__main">
                                    Skip to product information
                                </a>
                                <ul id="Slider-Gallery-template--15590144082099__main"
                                    class="product__media-list grid grid--peek list-unstyled slider slider--mobile"
                                    role="list">
                                    <li id="Slide-template--15590144082099__main-23478552592563"
                                        class="product__media-item grid__item slider__slide is-active"
                                        data-media-id="template--15590144082099__main-23478552592563">
                                        <noscript>
                                            <div class="product__media media gradient global-media-settings"
                                                 style="padding-top: 100.0%;">
                                                <img src="{{ isset($product->image) ? $product->image : '' }}"
                                                sizes="(min-width: 1600px) 825px, (min-width: 990px) calc(55.0vw - 10rem), (min-width: 750px) calc((100vw - 11.5rem) / 2), calc(100vw - 4rem)"
                                                loading="lazy"
                                                width="973"
                                                height="973"
                                                alt="">
                                            </div>
                                        </noscript>

                                        <div class="product__modal-opener product__modal-opener--image">
                                            <span class="product__media-icon motion-reduce hidden" aria-hidden="true">
                                                <svg aria-hidden="true" focusable="false"
                                             role="presentation"
                                             class="icon icon-plus" width="19"
                                             height="19" viewBox="0 0 19 19"
                                             fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
                                              <path fill-rule="evenodd" clip-rule="evenodd"
                                                    d="M4.66724 7.93978C4.66655 7.66364 4.88984 7.43922 5.16598 7.43853L10.6996 7.42464C10.9758 7.42395 11.2002 7.64724 11.2009 7.92339C11.2016 8.19953 10.9783 8.42395 10.7021 8.42464L5.16849 8.43852C4.89235 8.43922 4.66793 8.21592 4.66724 7.93978Z"
                                                    fill="currentColor"/>
                                              <path fill-rule="evenodd" clip-rule="evenodd"
                                                    d="M7.92576 4.66463C8.2019 4.66394 8.42632 4.88723 8.42702 5.16337L8.4409 10.697C8.44159 10.9732 8.2183 11.1976 7.94215 11.1983C7.66601 11.199 7.44159 10.9757 7.4409 10.6995L7.42702 5.16588C7.42633 4.88974 7.64962 4.66532 7.92576 4.66463Z"
                                                    fill="currentColor"/>
                                              <path fill-rule="evenodd" clip-rule="evenodd"
                                                    d="M12.8324 3.03011C10.1255 0.323296 5.73693 0.323296 3.03011 3.03011C0.323296 5.73693 0.323296 10.1256 3.03011 12.8324C5.73693 15.5392 10.1255 15.5392 12.8324 12.8324C15.5392 10.1256 15.5392 5.73693 12.8324 3.03011ZM2.32301 2.32301C5.42035 -0.774336 10.4421 -0.774336 13.5395 2.32301C16.6101 5.39361 16.6366 10.3556 13.619 13.4588L18.2473 18.0871C18.4426 18.2824 18.4426 18.599 18.2473 18.7943C18.0521 18.9895 17.7355 18.9895 17.5402 18.7943L12.8778 14.1318C9.76383 16.6223 5.20839 16.4249 2.32301 13.5395C-0.774335 10.4421 -0.774335 5.42035 2.32301 2.32301Z"
                                                    fill="currentColor"/>
                                            </svg>
                                            </span>

                                            <div class="product__media media media--transparent gradient global-media-settings"
                                                 style="padding-top: 100.0%;">
                                                <img src="{{ isset($product->image) ? $product->image : '' }}"
                                                        sizes="(min-width: 1600px) 825px, (min-width: 990px) calc(55.0vw - 10rem), (min-width: 750px) calc((100vw - 11.5rem) / 2), calc(100vw - 4rem)"
                                                        loading="lazy"
                                                        width="973"
                                                        alt="">
                                            </div>
                                        </div>
                                    </li>
                                    @foreach(explode( ',', $product['image_list']) as $item)
                                    <li id="Slide-template--15590144082099__main-23478512189619"
                                        class="product__media-item grid__item slider__slide"
                                        data-media-id="template--15590144082099__main-23478512189619">
                                        <noscript>
                                            <div class="product__media media gradient global-media-settings"
                                                 style="padding-top: 150.25678650036684%;">
                                                <img src="{{ $item }}"
                                                        sizes="(min-width: 1600px) 825px, (min-width: 990px) calc(55.0vw - 10rem), (min-width: 750px) calc((100vw - 11.5rem) / 2), calc(100vw - 4rem)"
                                                        loading="lazy"
                                                        width="973"
                                                        height="1462"
                                                        alt="">
                                            </div>
                                        </noscript>

                                        <div class="product__modal-opener product__modal-opener--image">
                                              <span class="product__media-icon motion-reduce hidden" aria-hidden="true"><svg aria-hidden="true" focusable="false"
                                                     role="presentation"
                                                     class="icon icon-plus" width="19"
                                                     height="19" viewBox="0 0 19 19"
                                                     fill="none"
                                                     xmlns="http://www.w3.org/2000/svg">
                                              <path fill-rule="evenodd" clip-rule="evenodd"
                                                    d="M4.66724 7.93978C4.66655 7.66364 4.88984 7.43922 5.16598 7.43853L10.6996 7.42464C10.9758 7.42395 11.2002 7.64724 11.2009 7.92339C11.2016 8.19953 10.9783 8.42395 10.7021 8.42464L5.16849 8.43852C4.89235 8.43922 4.66793 8.21592 4.66724 7.93978Z"
                                                    fill="currentColor"/>
                                              <path fill-rule="evenodd" clip-rule="evenodd"
                                                    d="M7.92576 4.66463C8.2019 4.66394 8.42632 4.88723 8.42702 5.16337L8.4409 10.697C8.44159 10.9732 8.2183 11.1976 7.94215 11.1983C7.66601 11.199 7.44159 10.9757 7.4409 10.6995L7.42702 5.16588C7.42633 4.88974 7.64962 4.66532 7.92576 4.66463Z"
                                                    fill="currentColor"/>
                                              <path fill-rule="evenodd" clip-rule="evenodd"
                                                    d="M12.8324 3.03011C10.1255 0.323296 5.73693 0.323296 3.03011 3.03011C0.323296 5.73693 0.323296 10.1256 3.03011 12.8324C5.73693 15.5392 10.1255 15.5392 12.8324 12.8324C15.5392 10.1256 15.5392 5.73693 12.8324 3.03011ZM2.32301 2.32301C5.42035 -0.774336 10.4421 -0.774336 13.5395 2.32301C16.6101 5.39361 16.6366 10.3556 13.619 13.4588L18.2473 18.0871C18.4426 18.2824 18.4426 18.599 18.2473 18.7943C18.0521 18.9895 17.7355 18.9895 17.5402 18.7943L12.8778 14.1318C9.76383 16.6223 5.20839 16.4249 2.32301 13.5395C-0.774335 10.4421 -0.774335 5.42035 2.32301 2.32301Z"
                                                    fill="currentColor"/>
                                            </svg>
                                            </span>

                                            <div class="product__media media media--transparent gradient global-media-settings"
                                                 style="padding-top: 150.25678650036684%;">
                                                <img src="{{ $item }}"
                                                        sizes="(min-width: 1600px) 825px, (min-width: 990px) calc(55.0vw - 10rem), (min-width: 750px) calc((100vw - 11.5rem) / 2), calc(100vw - 4rem)"
                                                        loading="lazy"
                                                        width="973"
                                                        height="1462"
                                                        alt="">
                                            </div>
                                        </div>
                                    </li>
                                    @endforeach
                                </ul>
                                <div class="slider-buttons no-js-hidden small-hide">
                                    <button type="button" class="slider-button slider-button--prev" name="previous"
                                            aria-label="Slide left">
                                        <svg aria-hidden="true" focusable="false" role="presentation"
                                             class="icon icon-caret" viewBox="0 0 10 6">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M9.354.646a.5.5 0 00-.708 0L5 4.293 1.354.646a.5.5 0 00-.708.708l4 4a.5.5 0 00.708 0l4-4a.5.5 0 000-.708z"
                                                  fill="currentColor">
                                        </svg>
                                    </button>
                                    <div class="slider-counter caption">
                                        <span class="slider-counter--current">1</span>
                                        <span aria-hidden="true"> / </span>
                                        <span class="visually-hidden">of</span>
                                        <span class="slider-counter--total">4</span>
                                    </div>
                                    <button type="button" class="slider-button slider-button--next" name="next"
                                            aria-label="Slide right">
                                        <svg aria-hidden="true" focusable="false" role="presentation"
                                             class="icon icon-caret" viewBox="0 0 10 6">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M9.354.646a.5.5 0 00-.708 0L5 4.293 1.354.646a.5.5 0 00-.708.708l4 4a.5.5 0 00.708 0l4-4a.5.5 0 000-.708z"
                                                  fill="currentColor">
                                        </svg>
                                    </button>
                                </div>
                            </slider-component>
                            <slider-component id="GalleryThumbnails-template--15590144082099__main"
                                              class="thumbnail-slider slider-mobile-gutter">
                                            <button type="button" class="slider-button slider-button--prev medium-hide large-up-hide"
                                        name="previous" aria-label="Slide left"
                                        aria-controls="GalleryThumbnails-template--15590144082099__main" data-step="3">
                                    <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-caret"
                                         viewBox="0 0 10 6">
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                              d="M9.354.646a.5.5 0 00-.708 0L5 4.293 1.354.646a.5.5 0 00-.708.708l4 4a.5.5 0 00.708 0l4-4a.5.5 0 000-.708z"
                                              fill="currentColor">
                                    </svg>
                                </button>
                                <ul id="Slider-Thumbnails-template--15590144082099__main"
                                    class="thumbnail-list list-unstyled slider slider--mobile">
                                    <li id="Slide-Thumbnails-template--15590144082099__main-1"
                                        class="thumbnail-list__item slider__slide"
                                        data-target="template--15590144082099__main-23478552592563" data-media-position="1">
                                        <button class="thumbnail global-media-settings global-media-settings--no-shadow thumbnail--narrow"
                                                aria-label="Load image 1 in gallery view"
                                                aria-current="true"
                                                aria-controls="GalleryViewer-template--15590144082099__main"
                                                aria-describedby="Thumbnail-template--15590144082099__main-1">
                                            <img id="Thumbnail-template--15590144082099__main-1"
                                                 src="{{ isset($product->image) ? $product->image : '' }}"
                                                 sizes="(min-width: 1200px) calc((1200px - 19.5rem) / 12), (min-width: 750px) calc((100vw - 16.5rem) / 8), calc((100vw - 8rem) / 5)"
                                                 alt="{{ $product->title }}"
                                                 height="200"
                                                 width="200"
                                                 loading="lazy">
                                        </button>
                                    </li>
                                    @foreach(explode( ',', $product['image_list']) as $item)
                                    <li id="Slide-Thumbnails-template--15590144082099__main-2"
                                        class="thumbnail-list__item slider__slide"
                                        data-target="template--15590144082099__main-23478512189619" data-media-position="2">
                                        <button class="thumbnail global-media-settings global-media-settings--no-shadow thumbnail--narrow"
                                                aria-label="Load image 2 in gallery view"
                                                aria-controls="GalleryViewer-template--15590144082099__main"
                                                aria-describedby="Thumbnail-template--15590144082099__main-2">
                                            <img id="Thumbnail-template--15590144082099__main-2"
                                                 src="{{ $item }}"
                                                 sizes="(min-width: 1200px) calc((1200px - 19.5rem) / 12), (min-width: 750px) calc((100vw - 16.5rem) / 8), calc((100vw - 8rem) / 5)"
                                                 alt="{{ $product->title }}"
                                                 height="200"
                                                 width="200"
                                                 loading="lazy">
                                        </button>
                                    </li>
                                    @endforeach
                                </ul>
                                <button type="button" class="slider-button slider-button--next medium-hide large-up-hide"
                                        name="next" aria-label="Slide right"
                                        aria-controls="GalleryThumbnails-template--15590144082099__main" data-step="3">
                                    <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-caret"
                                         viewBox="0 0 10 6">
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                              d="M9.354.646a.5.5 0 00-.708 0L5 4.293 1.354.646a.5.5 0 00-.708.708l4 4a.5.5 0 00.708 0l4-4a.5.5 0 000-.708z"
                                              fill="currentColor">
                                    </svg>
                                </button>
                            </slider-component>
                        </media-gallery>
                    </div>
                    <div class="product__info-wrapper grid__item">
                        <div id="ProductInfo-template--15590144082099__main"
                             class="product__info-container product__info-container--sticky"><p
                                    class="product__text caption-with-letter-spacing">
                                {{ isset($information['company-name']) ? $information['company-name'] : '' }}
                            </p>
                            <h2 class="product__title">
                                {{ $product->title }}
                            </h2>
                            <p class="product__text subtitle"></p>
                            <div class="" id="price-template--15590144082099__main" role="status">
                                <div class="price price--large price--show-badge">
                                    <div class="price__container">
                                        <div class="price__regular">
                                            <span class="price-item price-item--regular">
                                            {{ number_format($product->price) }} {{ isset($information['currency']) ? $information['currency'] : $product->currency  }}
                                          </span>
                                        </div>
{{--                                        <div class="price__sale">--}}
{{--                                            <span class="visually-hidden visually-hidden--inline">--}}
{{--                                                Regular price--}}
{{--                                            </span>--}}
{{--                                            <span>--}}
{{--                                        <s class="price-item price-item--regular"></s>--}}
{{--                                        </span><span class="visually-hidden visually-hidden--inline">--}}
{{--                                                Sale price </span>--}}
{{--                                            <span class="price-item price-item--sale price-item--last">--}}
{{--                                                £75.00--}}
{{--                                              </span>--}}
{{--                                        </div>--}}
{{--                                        <small class="unit-price caption hidden">--}}
{{--                                            <span class="visually-hidden">Unit price</span>--}}
{{--                                            <span class="price-item price-item--last">--}}
{{--                                            <span></span>--}}
{{--                                            <span aria-hidden="true">/</span>--}}
{{--                                            <span class="visually-hidden">&nbsp;per&nbsp;</span>--}}
{{--                                            <span>--}}
{{--                                            </span>--}}
{{--                                          </span>--}}
{{--                                        </small>--}}
                                    </div>
{{--                                    <span class="badge price__badge-sale color-accent-2">--}}
{{--                                      Sale--}}
{{--                                    </span>--}}

{{--                                    <span class="badge price__badge-sold-out color-inverse">--}}
{{--                                      Sold out--}}
{{--                                    </span>--}}
                                </div>
                            </div>
                            <div class="product__tax caption rte">
                                {{ $product->description }}
                            </div>

                            <form onsubmit="return addToOrder(this);" enctype="multipart/form-data"
                                  id="add-to-cart-form" method="post" accept-charset="utf-8">
                                {{ csrf_field() }}
                            <variant-radios class="{{ !isset($product->properties) ? 'no-js-hidden': '' }}" data-section="template--15590144082099__main">
                                <fieldset class="js product-form__input">
                                    <legend class="form__label">SIZE</legend>
                                    @if($product->properties)
                                        @foreach(explode(',', $product->properties) as $id =>$size )
                                            <input type="radio" id="template--15590144082099__main-1-{{$id}}"
                                                   name="size[]"
                                                   value="{{$size}}" {{$id == 0 ? 'checked' : ''}}
                                                   >
                                            <label for="template--15590144082099__main-1-{{$id}}">
                                                {{$size}}
                                            </label>
                                        @endforeach
                                    @endif
                                </fieldset>
                            </variant-radios>
                            <div class="product_countdown">
                                <div class="caption" id="timeRemain">
                                    <em class="hidden">Timer</em>
                                </div>
                                <div class="caption" id="countdownTimer">
                                    <em class="hidden">Timer</em>
                                </div>
                                <div class="caption" id="forDelivery">
                                    <em class="hidden">Timer</em>
                                </div>
                            </div>
                            <div class="product-form__input product-form__quantity">
                            <label class="form__label" for="Quantity-template--15590144082099__main">
                                {{ $languageSetup['quantity'] }}
                            </label>

                            <quantity-input class="quantity">
                                <button class="quantity__button no-js-hidden" name="minus" type="button">
                                    <span class="visually-hidden">
                                       {{ $product->title }}
                                    </span>
                                    <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false"
                                         role="presentation" class="icon icon-minus" fill="none" viewBox="0 0 10 2">
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                              d="M.5 1C.5.7.7.5 1 .5h8a.5.5 0 110 1H1A.5.5 0 01.5 1z"
                                              fill="currentColor">
                                    </svg>

                                </button>
                                <input class="quantity__input"
                                       type="number"
                                       name="quantity[]"
                                       id="Quantity-template--15590144082099__main"
                                       min="1"
                                       value="1">

                                <input type="hidden" class="product_id" name="product_id[]"
                                       value="{{ $product->product_id }}"/>

                                <button class="quantity__button no-js-hidden" name="plus" type="button">
                                    <span class="visually-hidden">
                                        {{ $product->title }}</span>
                                    <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false"
                                         role="presentation" class="icon icon-plus" fill="none" viewBox="0 0 10 10">
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                              d="M1 4.51a.5.5 0 000 1h3.5l.01 3.5a.5.5 0 001-.01V5.5l3.5-.01a.5.5 0 00-.01-1H5.5L5.49.99a.5.5 0 00-1 .01v3.5l-3.5.01H1z"
                                              fill="currentColor">
                                    </svg>

                                </button>
                            </quantity-input>
                            </div>
                            <div>
                                <product-form class="product-form">
                                    <div class="product-form__error-message-wrapper" role="alert" hidden>
                                        <svg aria-hidden="true" focusable="false" role="presentation"
                                             class="icon icon-error" viewBox="0 0 13 13">
                                            <circle cx="6.5" cy="6.50049" r="5.5" stroke="white" stroke-width="2"/>
                                            <circle cx="6.5" cy="6.5" r="5.5" fill="#EB001B" stroke="#EB001B"
                                                    stroke-width="0.7"/>
                                            <path d="M5.87413 3.52832L5.97439 7.57216H7.02713L7.12739 3.52832H5.87413ZM6.50076 9.66091C6.88091 9.66091 7.18169 9.37267 7.18169 9.00504C7.18169 8.63742 6.88091 8.34917 6.50076 8.34917C6.12061 8.34917 5.81982 8.63742 5.81982 9.00504C5.81982 9.37267 6.12061 9.66091 6.50076 9.66091Z"
                                                  fill="white"/>
                                            <path d="M5.87413 3.17832H5.51535L5.52424 3.537L5.6245 7.58083L5.63296 7.92216H5.97439H7.02713H7.36856L7.37702 7.58083L7.47728 3.537L7.48617 3.17832H7.12739H5.87413ZM6.50076 10.0109C7.06121 10.0109 7.5317 9.57872 7.5317 9.00504C7.5317 8.43137 7.06121 7.99918 6.50076 7.99918C5.94031 7.99918 5.46982 8.43137 5.46982 9.00504C5.46982 9.57872 5.94031 10.0109 6.50076 10.0109Z"
                                                  fill="white" stroke="#EB001B" stroke-width="0.7">
                                        </svg>
                                        <span class="product-form__error-message"></span>
                                    </div>
                                        <div class="product-form__buttons">
                                            <button type="submit"
                                                    name="add"
                                                    class="product-form__submit button button--full-width dat_hang add-cart-0">
                                                <span>
                                                     {{ $languageSetup['add-to-cart'] }}
                                                </span>
                                                <div class="loading-overlay__spinner hidden">
                                                    <svg aria-hidden="true" focusable="false" role="presentation"
                                                         class="spinner" viewBox="0 0 66 66"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                        <circle class="path" fill="none" stroke-width="6" cx="33" cy="33"
                                                                r="30"></circle>
                                                    </svg>
                                                </div>
                                            </button>

                                            <div data-shopify="payment-button" data-has-selling-plan="false"
                                                 class="shopify-payment-button">
                                                <button class="shopify-payment-button__button shopify-payment-button__button--unbranded shopify-payment-button__button--hidden"
                                                        disabled="disabled" aria-hidden="true"> 
                                                </button>
                                                <button class="shopify-payment-button__more-options shopify-payment-button__button--hidden"
                                                        disabled="disabled" aria-hidden="true"> 
                                                </button>
                                            </div>
                                        </div>
                                </product-form>
                            </div>
                            </form>
                            <script src="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/pickup-availability.js') }}"
                                    defer="defer"></script>
                            <div class="product__description rte">
                                <meta charset="utf-8">
                                {!!  $product->content  !!}
                            </div>
                            <div class="product__accordion accordion">
                                <details id="Details-collapsible-row-1-template--15590144082099__main">
                                    <summary>
                                        <div class="summary__title">
                                            <svg class="icon icon-accordion color-foreground-text" aria-hidden="true"
                                                 focusable="false" role="presentation" xmlns="http://www.w3.org/2000/svg"
                                                 width="20" height="20" viewBox="0 0 20 20">
                                                <path d="M0 3.75156C0 3.47454 0.224196 3.24997 0.500755 3.24997H10.647C10.9235 3.24997 11.1477 3.47454 11.1477 3.75156V5.07505V5.63362V6.10938V13.6616C10.9427 14.0067 10.8813 14.1101 10.5516 14.6648L7.22339 14.6646V13.6614H10.1462V4.25316H1.00151V13.6614H2.6842V14.6646H0.500755C0.224196 14.6646 0 14.44 0 14.163V3.75156Z"/>
                                                <path d="M18.9985 8.08376L11.1477 6.10938V5.07505L19.6212 7.20603C19.8439 7.26203 20 7.46255 20 7.69253V14.1631C20 14.4401 19.7758 14.6647 19.4992 14.6647H17.3071V13.6615H18.9985V8.08376ZM11.1477 13.6616L13.3442 13.6615L13.3443 14.6647L10.5516 14.6648L11.1477 13.6616Z"/>
                                                <path d="M7.71269 14.1854C7.71269 15.6018 6.56643 16.75 5.15245 16.75C3.73847 16.75 2.59221 15.6018 2.59221 14.1854C2.59221 12.7691 3.73847 11.6209 5.15245 11.6209C6.56643 11.6209 7.71269 12.7691 7.71269 14.1854ZM5.15245 15.7468C6.01331 15.7468 6.71118 15.0478 6.71118 14.1854C6.71118 13.3231 6.01331 12.6241 5.15245 12.6241C4.29159 12.6241 3.59372 13.3231 3.59372 14.1854C3.59372 15.0478 4.29159 15.7468 5.15245 15.7468Z"/>
                                                <path d="M17.5196 14.1854C17.5196 15.6018 16.3733 16.75 14.9593 16.75C13.5454 16.75 12.3991 15.6018 12.3991 14.1854C12.3991 12.7691 13.5454 11.6209 14.9593 11.6209C16.3733 11.6209 17.5196 12.7691 17.5196 14.1854ZM14.9593 15.7468C15.8202 15.7468 16.5181 15.0478 16.5181 14.1854C16.5181 13.3231 15.8202 12.6241 14.9593 12.6241C14.0985 12.6241 13.4006 13.3231 13.4006 14.1854C13.4006 15.0478 14.0985 15.7468 14.9593 15.7468Z"/>
                                            </svg>

                                            <h2 class="h4 accordion__title">
                                                {{ $languageSetup['shipping-and-return'] }}
                                            </h2>
                                        </div>
                                        <svg aria-hidden="true" focusable="false" role="presentation"
                                             class="icon icon-caret" viewBox="0 0 10 6">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M9.354.646a.5.5 0 00-.708 0L5 4.293 1.354.646a.5.5 0 00-.708.708l4 4a.5.5 0 00.708 0l4-4a.5.5 0 000-.708z"
                                                  fill="currentColor">
                                        </svg>

                                    </summary>
                                    <div class="accordion__content rte"
                                         id="ProductAccordion-collapsible-row-1-template--15590144082099__main">
                                        {!!  $product['shipping-returns']  !!}
                                    </div>
                                </details>
                            </div>
                            <div class="product__accordion accordion">
                                <details>
                                    <summary>
                                        <div class="summary__title">
                                            <svg class="icon icon-accordion color-foreground-text" aria-hidden="true"
                                                 focusable="false" role="presentation" xmlns="http://www.w3.org/2000/svg"
                                                 width="20" height="20" viewBox="0 0 20 20">
                                                <path d="M18.9836 5.32852L14.6715 1.01638L1.01638 14.6715L5.32852 18.9836L18.9836 5.32852ZM15.3902 0.297691C14.9933 -0.0992303 14.3497 -0.0992303 13.9528 0.297691L0.297691 13.9528C-0.0992301 14.3497 -0.0992305 14.9932 0.297691 15.3902L4.60983 19.7023C5.00675 20.0992 5.65029 20.0992 6.04721 19.7023L19.7023 6.04721C20.0992 5.65029 20.0992 5.00675 19.7023 4.60983L15.3902 0.297691Z"
                                                      fill-rule="evenodd"/>
                                                <path d="M11.7863 2.67056C11.9848 2.4721 12.3065 2.4721 12.505 2.67056L14.4237 4.58927C14.6222 4.78774 14.6222 5.1095 14.4237 5.30796C14.2252 5.50642 13.9035 5.50642 13.705 5.30796L11.7863 3.38925C11.5878 3.19079 11.5878 2.86902 11.7863 2.67056Z"/>
                                                <path d="M8.93891 5.36331C9.13737 5.16485 9.45914 5.16485 9.6576 5.36331L11.5763 7.28202C11.7748 7.48048 11.7748 7.80225 11.5763 8.00071C11.3779 8.19917 11.0561 8.19917 10.8576 8.00071L8.93891 6.082C8.74045 5.88354 8.74045 5.56177 8.93891 5.36331Z"/>
                                                <path d="M6.24307 8.20742C6.44153 8.00896 6.76329 8.00896 6.96175 8.20742L8.88047 10.1261C9.07893 10.3246 9.07893 10.6464 8.88047 10.8448C8.68201 11.0433 8.36024 11.0433 8.16178 10.8448L6.24307 8.92611C6.0446 8.72765 6.0446 8.40588 6.24307 8.20742Z"/>
                                                <path d="M3.37296 10.8776C3.57142 10.6791 3.89319 10.6791 4.09165 10.8776L6.01036 12.7963C6.20882 12.9948 6.20882 13.3165 6.01036 13.515C5.8119 13.7134 5.49013 13.7134 5.29167 13.515L3.37296 11.5963C3.1745 11.3978 3.1745 11.076 3.37296 10.8776Z"/>
                                            </svg>
                                            <h2 class="h4 accordion__title"><a class="sizeguide" href="#size_guide">
                                                    {{ $languageSetup['size-guide'] }}
                                                </a></h2>
                                        </div>
                                    </summary>
                                    <div class="accordion__content rte"
                                         id="ProductAccordion-collapsible-row-1-template--15590144082099__main">
                                        {!!  $product['size-guide']  !!}
                                    </div>
                                </details>
                            </div>
                            <div class="product__accordion accordion">
                                <details id="Details-collapsible-row-3-template--15590144082099__main">
                                    <summary>
                                        <div class="summary__title">
                                            <svg class="icon icon-accordion color-foreground-text" aria-hidden="true"
                                                 focusable="false" role="presentation" xmlns="http://www.w3.org/2000/svg"
                                                 width="20" height="20" viewBox="0 0 20 20">
                                                <path d="M10 5.2393L8.5149 3.77392C6.79996 2.08174 4.01945 2.08174 2.30451 3.77392C0.589562 5.4661 0.589563 8.2097 2.30451 9.90188L10 17.4952L17.6955 9.90188C19.4104 8.2097 19.4104 5.4661 17.6955 3.77392C15.9805 2.08174 13.2 2.08174 11.4851 3.77392L10 5.2393ZM10.765 3.06343C12.8777 0.978857 16.3029 0.978856 18.4155 3.06343C20.5282 5.148 20.5282 8.52779 18.4155 10.6124L10.72 18.2057C10.3224 18.5981 9.67763 18.5981 9.27996 18.2057L1.58446 10.6124C-0.528154 8.52779 -0.528154 5.14801 1.58446 3.06343C3.69708 0.978859 7.12233 0.978858 9.23495 3.06343L10 3.81832L10.765 3.06343Z"
                                                      fill-rule="evenodd"/>
                                            </svg>

                                            <h2 class="h4 accordion__title">
                                                {{ $languageSetup['care-instruction'] }}
                                            </h2>
                                        </div>
                                        <svg aria-hidden="true" focusable="false" role="presentation"
                                             class="icon icon-caret" viewBox="0 0 10 6">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M9.354.646a.5.5 0 00-.708 0L5 4.293 1.354.646a.5.5 0 00-.708.708l4 4a.5.5 0 00.708 0l4-4a.5.5 0 000-.708z"
                                                  fill="currentColor">
                                        </svg>

                                    </summary>
                                    <div class="accordion__content rte"
                                         id="ProductAccordion-collapsible-row-3-template--15590144082099__main">
                                        {!!  $product['care-instructions']  !!}
                                    </div>
                                </details>
                            </div>
                            <share-button id="Share-template--15590144082099__main" class="share-button">
                                <button class="share-button__button hidden">
                                    <svg width="13" height="12" viewBox="0 0 13 12" class="icon icon-share" fill="none"
                                         xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false">
                                        <path d="M1.625 8.125V10.2917C1.625 10.579 1.73914 10.8545 1.9423 11.0577C2.14547 11.2609 2.42102 11.375 2.70833 11.375H10.2917C10.579 11.375 10.8545 11.2609 11.0577 11.0577C11.2609 10.8545 11.375 10.579 11.375 10.2917V8.125"
                                              stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                              d="M6.14775 1.27137C6.34301 1.0761 6.65959 1.0761 6.85485 1.27137L9.56319 3.9797C9.75845 4.17496 9.75845 4.49154 9.56319 4.6868C9.36793 4.88207 9.05135 4.88207 8.85609 4.6868L6.5013 2.33203L4.14652 4.6868C3.95126 4.88207 3.63468 4.88207 3.43942 4.6868C3.24415 4.49154 3.24415 4.17496 3.43942 3.9797L6.14775 1.27137Z"
                                              fill="currentColor"/>
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                              d="M6.5 1.125C6.77614 1.125 7 1.34886 7 1.625V8.125C7 8.40114 6.77614 8.625 6.5 8.625C6.22386 8.625 6 8.40114 6 8.125V1.625C6 1.34886 6.22386 1.125 6.5 1.125Z"
                                              fill="currentColor"/>
                                    </svg>

                                    {{ $languageSetup['share'] }}
                                </button>
                                <details id="Details-share-template--15590144082099__main">
                                    <summary class="share-button__button">
                                        <svg width="13" height="12" viewBox="0 0 13 12" class="icon icon-share" fill="none"
                                             xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false">
                                            <path d="M1.625 8.125V10.2917C1.625 10.579 1.73914 10.8545 1.9423 11.0577C2.14547 11.2609 2.42102 11.375 2.70833 11.375H10.2917C10.579 11.375 10.8545 11.2609 11.0577 11.0577C11.2609 10.8545 11.375 10.579 11.375 10.2917V8.125"
                                                  stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M6.14775 1.27137C6.34301 1.0761 6.65959 1.0761 6.85485 1.27137L9.56319 3.9797C9.75845 4.17496 9.75845 4.49154 9.56319 4.6868C9.36793 4.88207 9.05135 4.88207 8.85609 4.6868L6.5013 2.33203L4.14652 4.6868C3.95126 4.88207 3.63468 4.88207 3.43942 4.6868C3.24415 4.49154 3.24415 4.17496 3.43942 3.9797L6.14775 1.27137Z"
                                                  fill="currentColor"/>
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                  d="M6.5 1.125C6.77614 1.125 7 1.34886 7 1.625V8.125C7 8.40114 6.77614 8.625 6.5 8.625C6.22386 8.625 6 8.40114 6 8.125V1.625C6 1.34886 6.22386 1.125 6.5 1.125Z"
                                                  fill="currentColor"/>
                                        </svg>

                                        {{ $languageSetup['share'] }}
                                    </summary>
                                    <div id="Product-share-template--15590144082099__main"
                                         class="share-button__fallback motion-reduce">
                                        <div class="field">
                                        <span id="ShareMessage-template--15590144082099__main" class="share-button__message hidden"
                                              role="status">
                                        </span>
                                            <input type="text"
                                                   class="field__input"
                                                   id="url"
                                                   value="{{ url()->current() }}"
                                                   placeholder="Link"
                                                   onclick="this.select();"
                                                   readonly
                                            >
                                            <label class="field__label" for="url">Link</label>
                                        </div>
                                        <button class="share-button__close hidden no-js-hidden">
                                            <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false"
                                                 role="presentation" class="icon icon-close" fill="none"
                                                 viewBox="0 0 18 17">
                                                <path d="M.865 15.978a.5.5 0 00.707.707l7.433-7.431 7.579 7.282a.501.501 0 00.846-.37.5.5 0 00-.153-.351L9.712 8.546l7.417-7.416a.5.5 0 10-.707-.708L8.991 7.853 1.413.573a.5.5 0 10-.693.72l7.563 7.268-7.418 7.417z"
                                                      fill="currentColor">
                                            </svg>

                                            <span class="visually-hidden">Close share</span>
                                        </button>
                                        <button class="share-button__copy no-js-hidden">
                                            <svg class="icon icon-clipboard" width="11" height="13" fill="none"
                                                 xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false"
                                                 viewBox="0 0 11 13">
                                                <path fill-rule="evenodd" clip-rule="evenodd"
                                                      d="M2 1a1 1 0 011-1h7a1 1 0 011 1v9a1 1 0 01-1 1V1H2zM1 2a1 1 0 00-1 1v9a1 1 0 001 1h7a1 1 0 001-1V3a1 1 0 00-1-1H1zm0 10V3h7v9H1z"
                                                      fill="currentColor"/>
                                            </svg>

                                            <span class="visually-hidden">Copy link</span>
                                        </button>
                                    </div>
                                </details>
                            </share-button>
                            <script src="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/share.js') }}"
                                    defer="defer"></script>
                        </div>
                    </div>
                </div>

            </section>


            <script src="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/media-gallery.js') }}"
                    defer="defer"></script>
        </section>
        <section id="shopify-section-template--15590144082099__product-recommendations" class="shopify-section section">
            <link rel="stylesheet"
                  href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-card.css') }}"
                  media="print" onload="this.media='all'">
            <link rel="stylesheet"
                  href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-price.css') }}"
                  media="print" onload="this.media='all'">
            <link rel="stylesheet"
                  href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/section-product-recommendations.css') }}"
                  media="print" onload="this.media='all'">

            <noscript>
                <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-card.css') }}"
                      rel="stylesheet" type="text/css" media="all"/>
            </noscript>
            <noscript>
                <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-price.css') }}"
                      rel="stylesheet" type="text/css" media="all"/>
            </noscript>
            <noscript>
                <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/section-product-recommendations.css') }}"
                      rel="stylesheet" type="text/css" media="all"/>
            </noscript>
            <style data-shopify>.section-template--15590144082099__product-recommendations-padding {
                    padding-top: 3px;
                    padding-bottom: 21px;
                }

                @media screen and (min-width: 750px) {
                    .section-template--15590144082099__product-recommendations-padding {
                        padding-top: 4px;
                        padding-bottom: 28px;
                    }
                }</style>


        </section>
    </main>

@endsection

