@extends('site.layout.site')

@section('title','Đặt hàng')
@section('meta_description', isset($information['meta_description']) ? $information['meta_description'] : '')
@section('keywords', isset($information['meta_keyword']) ? $information['meta_keyword'] : "")

@section('content')
    <main id="MainContent" class="content-for-layout focus-none" role="main" tabindex="-1">
        <div id="shopify-section-template--15590143885491__cart-items" class="shopify-section">
            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-cart.css') }}"
                  rel="stylesheet" type="text/css" media="all"/>
            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-cart-items.css') }}"
                  rel="stylesheet" type="text/css" media="all"/>
            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-totals.css') }}"
                  rel="stylesheet" type="text/css" media="all"/>
            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-price.css') }}"
                  rel="stylesheet" type="text/css" media="all"/>
            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-discounts.css') }}"
                  rel="stylesheet" type="text/css" media="all"/>
            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-loading-overlay.css') }}"
                  rel="stylesheet" type="text/css" media="all"/>
            <style data-shopify>.section-template--15590143885491__cart-items-padding {
                    padding-top: 27px;
                    padding-bottom: 27px;
                }

                @media screen and (min-width: 750px) {
                    .section-template--15590143885491__cart-items-padding {
                        padding-top: 36px;
                        padding-bottom: 36px;
                    }
                }</style>
            <script src="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/cart.js') }}"
                    defer="defer"></script>
            <script src="//cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>

        @if(count($orderItems) == 0)
            <cart-items class="page-width is-empty">
                <div class="title-wrapper-with-link">
                    <h1 class="title title--primary"> {{ $languageSetup['your-cart'] }}</h1>
                    <a href="/" class="underlined-link"> {{ $languageSetup['continue-shopping'] }}</a>
                </div>

                <div class="cart__warnings">
                    <h1 class="cart__empty-text"> {{ $languageSetup['cart-status'] }}</h1>
                    <a href="/" class="button">
                        {{ $languageSetup['continue-shopping'] }}
                    </a>
            </cart-items>
            @else
            <form id="form-cart" action="{{ route('checkout',[ 'languageCurrent' => $languageCurrent]) }}" method="get">
                <cart-items class="page-width section-template--15590143885491__cart-items-padding">
                <div class="title-wrapper-with-link">
                    <h1 class="title title--primary"> {{ $languageSetup['your-cart'] }}</h1>
                    <a href="/" class="underlined-link"> {{ $languageSetup['continue-shopping'] }}</a>
                </div>

                <div class="cart__warnings">
                </div>

                    <div class="cart__items" id="main-cart-items" data-id="template--15590143885491__cart-items">
                        <div class="js-contents">
                            <table class="cart-items">
                                <thead>
                                <tr>
                                    <th class="caption-with-letter-spacing" colspan="2" scope="col"> {{ $languageSetup['product'] }}</th>
                                    <th class="medium-hide large-up-hide right caption-with-letter-spacing" colspan="1"
                                        scope="col">
                                        {{ $languageSetup['total'] }}
                                    </th>
                                    <th class="cart-items__heading--wide small-hide caption-with-letter-spacing"
                                        colspan="1" scope="col">
                                        {{ $languageSetup['quantity'] }}
                                    </th>
                                    <th class="small-hide right caption-with-letter-spacing" colspan="1" scope="col">
                                        {{ $languageSetup['total'] }}
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php $sumPrice = 0;?>
                                @foreach($orderItems as $id => $orderItem)
                                <tr class="cart-item  {{ $orderItem->slug }}" id="CartItem-{{ $id }}">
                                    <td class="cart-item__media">
                                        <a href="{{ route('product', ['post_slug' => $orderItem->slug, 'languageCurrent' => $languageCurrent]) }}"
                                           class="cart-item__link" aria-hidden="true" tabindex="-1"> </a>
                                        <div class="cart-item__image-container gradient global-media-settings">
                                            <img src="{{ $orderItem->image }}"
                                                 class="cart-item__image" alt="" loading="lazy" width="150"
                                                 height="150">
                                        </div>

                                    </td>

                                    <td class="cart-item__details">
                                        <a href="{{ route('product', ['post_slug' => $orderItem->slug, 'languageCurrent' => $languageCurrent]) }}"
                                                class="cart-item__name h4 break">
                                            {{ $orderItem->title }}
                                        </a>
                                        <div class="product-option">
                                            {{ number_format($orderItem->price) }}  {{ \App\Entity\Input::getPostMeta('currency', $orderItem->post_id) }}
                                            <input type="hidden" class="price" name="price[]" value="{{ $orderItem->price }}">
                                        </div>
                                        <dl>
                                            <div class="product-option">
                                                <dt>SIZE:</dt>
                                                <dd>{{ $orderItem->size }}</dd>
                                            </div>
                                        </dl>

                                        <p class="product-option"></p>
                                        <ul class="discounts list-unstyled" role="list" aria-label="Discount"></ul>
                                    </td>

                                    <td class="cart-item__quantity">
                                        <div class="cart-item__quantity-wrapper">
                                            <label class="visually-hidden" for="Quantity-1">
                                                {{ $languageSetup['quantity'] }}
                                            </label>
                                            <quantity-input class="quantity">
                                                <button class="quantity__button" type="but" name="minus"
                                                        type="button">
                                                    <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
                                                         focusable="false" role="presentation" class="icon icon-minus"
                                                         fill="none" viewBox="0 0 10 2">
                                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                                              d="M.5 1C.5.7.7.5 1 .5h8a.5.5 0 110 1H1A.5.5 0 01.5 1z"
                                                              fill="currentColor">
                                                        </path>
                                                    </svg>

                                                </button>
                                                <input class="quantity__input" type="number" name="quantity[]" value="{{ $orderItem->quantity }}"
                                                       min="0"
                                                       id="{{ isset($orderItem->slug) ? $orderItem->slug : '' }}" onchange="changeQuantity(this)"
                                                       data-index="1">

                                                <input type="hidden" name="product_id[]" value="{{ $orderItem->product_id }}"/>
                                                <button class="quantity__button" name="plus" type="button">
                                                    <span class="visually-hidden">Increase quantity for CAP CARRY CASE</span>
                                                    <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" role="presentation" class="icon icon-plus" fill="none" viewBox="0 0 10 10">
                                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M1 4.51a.5.5 0 000 1h3.5l.01 3.5a.5.5 0 001-.01V5.5l3.5-.01a.5.5 0 00-.01-1H5.5L5.49.99a.5.5 0 00-1 .01v3.5l-3.5.01H1z" fill="currentColor">
                                                        </path>
                                                    </svg>
                                                </button>

                                                <input type="hidden" name="price" value="{{ isset($orderItem->price) ? $orderItem->price : 0 }}">
                                                <input type="hidden" name="item[{{$orderItem->slug}}][product_id]" value="{{ isset($orderItem->product_id) ? $orderItem->product_id : '' }}">
                                                <input type="hidden" class="input_quantity" name="item[{{$orderItem->slug}}][quantity]" value="{{ $orderItem->quantity }}">
                                                <input type="hidden" class="" name="item[{{$orderItem->slug}}][cost]" value="{{ isset($orderItem->price) ? $orderItem->price : 0 }}">

                                            </quantity-input>

                                            <cart-remove-button>
                                                <a href="{{ route('deleteItemCart', ['product_id' => $orderItem->product_id, 'languageCurrent' => $languageCurrent]) }}"
                                                   onclick="return deleteItem(this, {{ $id }});"
                                                   class="button button--tertiary">
                                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"
                                                         aria-hidden="true" focusable="false" role="presentation"
                                                         class="icon icon-remove">
                                                        <path d="M14 3h-3.53a3.07 3.07 0 00-.6-1.65C9.44.82 8.8.5 8 .5s-1.44.32-1.87.85A3.06 3.06 0 005.53 3H2a.5.5 0 000 1h1.25v10c0 .28.22.5.5.5h8.5a.5.5 0 00.5-.5V4H14a.5.5 0 000-1zM6.91 1.98c.23-.29.58-.48 1.09-.48s.85.19 1.09.48c.2.24.3.6.36 1.02h-2.9c.05-.42.17-.78.36-1.02zm4.84 11.52h-7.5V4h7.5v9.5z"
                                                              fill="currentColor"></path>
                                                        <path d="M6.55 5.25a.5.5 0 00-.5.5v6a.5.5 0 001 0v-6a.5.5 0 00-.5-.5zM9.45 5.25a.5.5 0 00-.5.5v6a.5.5 0 001 0v-6a.5.5 0 00-.5-.5z"
                                                              fill="currentColor"></path>
                                                    </svg>
                                                </a>
                                            </cart-remove-button>
                                        </div>
                                        <div class="cart-item__error" id="Line-item-error-1" role="alert">
                                            <small class="cart-item__error-text"></small>
                                            <svg aria-hidden="true" focusable="false" role="presentation"
                                                 class="icon icon-error" viewBox="0 0 13 13">
                                                <circle cx="6.5" cy="6.50049" r="5.5" stroke="white"
                                                        stroke-width="2"></circle>
                                                <circle cx="6.5" cy="6.5" r="5.5" fill="#EB001B" stroke="#EB001B"
                                                        stroke-width="0.7"></circle>
                                                <path d="M5.87413 3.52832L5.97439 7.57216H7.02713L7.12739 3.52832H5.87413ZM6.50076 9.66091C6.88091 9.66091 7.18169 9.37267 7.18169 9.00504C7.18169 8.63742 6.88091 8.34917 6.50076 8.34917C6.12061 8.34917 5.81982 8.63742 5.81982 9.00504C5.81982 9.37267 6.12061 9.66091 6.50076 9.66091Z"
                                                      fill="white"></path>
                                                <path d="M5.87413 3.17832H5.51535L5.52424 3.537L5.6245 7.58083L5.63296 7.92216H5.97439H7.02713H7.36856L7.37702 7.58083L7.47728 3.537L7.48617 3.17832H7.12739H5.87413ZM6.50076 10.0109C7.06121 10.0109 7.5317 9.57872 7.5317 9.00504C7.5317 8.43137 7.06121 7.99918 6.50076 7.99918C5.94031 7.99918 5.46982 8.43137 5.46982 9.00504C5.46982 9.57872 5.94031 10.0109 6.50076 10.0109Z"
                                                      fill="white" stroke="#EB001B" stroke-width="0.7">
                                                </path>
                                            </svg>
                                        </div>
                                    </td>

                                    <td class="cart-item__totals right small-hide">
                                        <div class="loading-overlay hidden">
                                            <div class="loading-overlay__spinner">
                                                <svg aria-hidden="true" focusable="false" role="presentation"
                                                     class="spinner" viewBox="0 0 66 66"
                                                     xmlns="http://www.w3.org/2000/svg">
                                                    <circle class="path" fill="none" stroke-width="6" cx="33" cy="33"
                                                            r="30"></circle>
                                                </svg>
                                            </div>
                                        </div>

                                        <div class="cart-item__price-wrapper">
                                            <span class="price price--end">
                                            <span class="total_price_all">
                                                {{ number_format($orderItem->price * $orderItem->quantity) }}
                                            </span>  {{ \App\Entity\Input::getPostMeta('currency', $orderItem->post_id) }}
                                            </span>
                                            <input type="hidden" class="total_price" name="total_price[]" value="{{ $orderItem->price * $orderItem->quantity }}">
                                        </div>
                                    </td>
                                </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <p class="visually-hidden" id="cart-live-region-text" aria-live="polite" role="status"></p>
                    <p class="visually-hidden" id="shopping-cart-line-item-status" aria-live="polite" aria-hidden="true"
                       role="status">Loading...</p>
                </cart-items>
            </form>
            @endif
            <script>
                function deleteItem(e, id) {
                    var url = e.href;
                    $.ajax({
                        url:url,
                    }).done(function(result) {
                        var obj = jQuery.parseJSON( result);
                        if(obj.status == 200){
                            $('#CartItem-'+id).remove()
                        }
                    });
                }
            </script>
        </div>
        <div id="shopify-section-template--15590143885491__cart-footer" class="shopify-section cart__footer-wrapper">
            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-cart.css')}}"
                  rel="stylesheet" type="text/css" media="all"/>
            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-totals.css')}}"
                  rel="stylesheet" type="text/css" media="all"/>
            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-price.css')}}"
                  rel="stylesheet" type="text/css" media="all"/>
            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-discounts.css')}}"
                  rel="stylesheet" type="text/css" media="all"/>

            <div class="page-width" id="main-cart-footer" data-id="template--15590143885491__cart-footer">
                <div>
                    <div class="cart__footer"><div class="cart__blocks">

                            <div class="js-contents">
                                <div class="totals">
                                    <h3 class="totals__subtotal">Subtotal</h3>
                                    <p class="totals__subtotal-value">
                                        <span id="total_all"></span> {{ isset($information['currency']) ? $information['currency'] : '' }}</p>
                                    <input name="total_all" type="hidden" value="">
                                </div>

                                <div></div>
                                <small class="tax-note caption-large rte">Tax included. <a href="policies/shipping-policy">Shipping</a> calculated at checkout.
                                </small>
                            </div>
                            <div class="cart__ctas">
                                <button type="submit" id="checkout" onclick="return $('#form-cart').submit();" class="cart__checkout-button button" name="checkout" form="cart">
                                    {{ $languageSetup['check-out'] }}
                                </button>
                            </div>
                            <div id="cart-errors"></div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        <section id="shopify-section-template--15590143885491__featured-collection" class="shopify-section section">
            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-card.css') }}"
                  rel="stylesheet" type="text/css" media="all"/>
            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-price.css') }}"
                  rel="stylesheet" type="text/css" media="all"/>

            <link rel="stylesheet"
                  href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-slider.css') }}"
                  media="print" onload="this.media='all'">
            <link rel="stylesheet"
                  href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/template-collection.css') }}"
                  media="print" onload="this.media='all'">

            <noscript>
                <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-slider.css') }}"
                      rel="stylesheet" type="text/css" media="all"/>
            </noscript>
            <noscript>
                <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/template-collection.css') }}"
                      rel="stylesheet" type="text/css" media="all"/>
            </noscript>
            <style data-shopify>.section-template--15590143885491__featured-collection-padding {
                    padding-top: 6px;
                    padding-bottom: 15px;
                }

                @media screen and (min-width: 750px) {
                    .section-template--15590143885491__featured-collection-padding {
                        padding-top: 8px;
                        padding-bottom: 20px;
                    }
                }</style>
            <div class="color-background-1 isolate">
                <div class="collection page-width page-width-desktop section-template--15590143885491__featured-collection-padding">

                    <div class="title-wrapper-with-link title-wrapper--self-padded-tablet-down title-wrapper--no-top-margin">

                        <h2 class="title">
                            <span class="caption-with-letter-spacing">{{ isset($information['company-name']) ? $information['company-name'] : '' }}</span><br>
                            {{ $languageSetup['more-products'] }}
                        </h2></div>


                    <slider-component class="slider-mobile-gutter">
                        <ul id="Slider-template--15590143885491__featured-collection"
                            class="grid grid--2-col product-grid grid--2-col-tablet grid--4-col-desktop slider slider--tablet grid--peek"
                            role="list">
                            @foreach(\App\Entity\Product::showProduct('latest-releases', $countPost = 8) as $id => $item)
                                <li id="Slide-template--15590144114867__featured_collection-{{$id}}" class="grid__item slider__slide">
                                    <div class="card-wrapper underline-links-hover">
                                        <div class="card card--standard card--media card--extend-height">
                                            <div class="card__inner ratio">
                                                <div class="card__media">
                                                    <a href="{{ route('product', ['post_slug' => $item->slug, 'languageCurrent' => $languageCurrent]) }}">
                                                        <div class="media media--transparent media--hover-effect">
                                                            <img
                                                                    src="{{ isset($item['image']) ? $item['image'] : '' }}"
                                                                    sizes="(min-width: 1600px) 367px, (min-width: 990px) calc((100vw - 130px) / 4), (min-width: 750px) calc((100vw - 120px) / 3), calc((100vw - 35px) / 2)"
                                                                    class="motion-reduce"
                                                                    loading="lazy"
                                                                    width="4000"
                                                                    height="4000"
                                                            ><img
                                                                    src="{{ \App\Entity\Input::getPostMeta('anh-2', $item->post_id) }}"
                                                                    sizes="(min-width: 1600px) 367px, (min-width: 990px) calc((100vw - 130px) / 4), (min-width: 750px) calc((100vw - 120px) / 3), calc((100vw - 35px) / 2)"
                                                                    class="motion-reduce image_2"
                                                                    loading="lazy"
                                                                    width="1363"
                                                                    height="2048"
                                                            ></div>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="card__content">
                                                <div class="card__information">
                                                    <h3 class="card__heading h5">
                                                        <a href="{{ route('product', ['post_slug' => $item->slug, 'languageCurrent' => $languageCurrent]) }}" class="full-unstyled-link">
                                                            {{ isset($item['title']) ? $item['title'] : '' }}
                                                        </a>
                                                    </h3>
                                                    <div class="card-information">
                                                        <span class="caption-large light"></span>

                                                        <div class="price  price--sold-out ">
                                                            <div class="price__container">
                                                                <div class="price__regular">
                                                                    <span class="visually-hidden visually-hidden--inline">Regular price</span>
                                                                    <span class="price-item price-item--regular">
                                                   {{ isset($item['price']) ? number_format($item['price']) : '' }}  {{ \App\Entity\Input::getPostMeta('currency', $item->post_id) }}

                                                </span>
                                                                </div>
                                                                <div class="price__sale">
                                                                    <span class="visually-hidden visually-hidden--inline">Regular price</span>
                                                                    <span>
                                                    <s class="price-item price-item--regular"></s>
                                                </span>
                                                                    <span class="visually-hidden visually-hidden--inline">Sale price</span>
                                                                    <span class="price-item price-item--sale price-item--last">£55.00</span>
                                                                </div>
                                                                <small class="unit-price caption hidden">
                                                                    <span class="visually-hidden">Unit price</span>
                                                                    <span class="price-item price-item--last">
                                                    <span></span>
                                                    <span aria-hidden="true">/</span>
                                                        <span class="visually-hidden">&nbsp;per&nbsp;
                                                        </span>
                                                    <span>
                                                    </span>
                                                </span>
                                                                </small>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            @endforeach
                        </ul>
                        <div class="slider-buttons no-js-hidden">
                            <button type="button" class="slider-button slider-button--prev" name="previous"
                                    aria-label="Slide left">
                                <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-caret"
                                     viewBox="0 0 10 6">
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
                                <svg aria-hidden="true" focusable="false" role="presentation" class="icon icon-caret"
                                     viewBox="0 0 10 6">
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                          d="M9.354.646a.5.5 0 00-.708 0L5 4.293 1.354.646a.5.5 0 00-.708.708l4 4a.5.5 0 00.708 0l4-4a.5.5 0 000-.708z"
                                          fill="currentColor">
                                </svg>
                            </button>
                        </div>
                    </slider-component>
                </div>
            </div>

        </section>
    </main>
@endsection
