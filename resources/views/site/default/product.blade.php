@extends('site.layout.site')

@section('title', $product->title)
@section('meta_description',  $product->description )
@section('keywords', '')

@section('content')
    <div class="uk-height-min-small uk-section-small productDetail__section">
        <div class="uk-container uk-container-expand">
            <div class="uk-grid uk-grid-small uk-grid-40-m" uk-grid="">
                <div class="uk-width-expand">
                    <?php
                    $data = explode(',',  $product['image_list']);
                    ?>
                    <div class="productDetail__boxSpace uk-position-relative uk-light" uk-slideshow="ratio: 7:7; animation: fade;">
                        <div class="uk-grid-small uk-grid-20-m" uk-grid>
                            <div class="uk-width-expand">
                                <div class="uk-position-relative">
                                    <ul class="uk-slideshow-items">
                                        <?php foreach ($data as $k=>$v): ?>
                                        <li>
                                            <img src="<?= $v ?>" alt="" uk-cover>
                                        </li>
                                        <?php endforeach; ?>
                                    </ul>
                                    <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slideshow-item="previous"></a>
                                    <a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slideshow-item="next"></a>
                                </div>
                            </div>
                            <div uk-toggle="cls: uk-position-bottom-center uk-position-small; mode: media; media: (max-width: 959.8px)" class="uk-width-auto@m uk-flex-first@m">
                                <div class="uk-flex-center uk-flex">
                                    <ul class="uk-thumbnav productDetail__thumbnav" uk-toggle="cls: uk-thumbnav-vertical; mode: media; media: @m" uk-margin>
                                        <?php foreach ($data as $k=>$v): ?>
                                        <li uk-slideshow-item="<?= $k ?>" class="<?= ($k==0)? 'uk-active' : '' ?>"><a href="#"><img src="<?= $v ?>" width="75" height="75" alt=""></a></li>
                                        <?php endforeach; ?>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="uk-width-1-2@m">
                    <div class="productDetail__widthLeft uk-margin-auto">
                        <ul class="uk-breadcrumb productDetail__breadcrumb">
                            <li><a href="">Home</a></li>
                            <li><span>{{ $product->title }}</span>
                            </li>
                        </ul>
                        <h1 class="productDetail__contentLeft__title">{{ $product->title }}</h1>

                        <form enctype="multipart/form-data"
                              id="add-to-cart-form" method="post" accept-charset="utf-8">
                            {{ csrf_field() }}

                            <input type="hidden" class="product_id" name="product_id[]"
                                   value="{{ isset($product['product_id']) ? $product['product_id'] : '' }}"/>

                        <div>
                            <span class="productDetail__contentLeft__price productDetail__contentLeft__price--new">
                                {{ isset($product['price']) ? number_format($product['price']) : '' }}
                                {{ isset($information['currency']) ? $information['currency'] : '' }}
                            </span>
                            <del class="productDetail__contentLeft__price productDetail__contentLeft__price--old">
                                {{ isset($product['giam-gia']) ? number_format($product['giam-gia']) : '' }}
                                {{ isset($information['currency']) ? $information['currency'] : '' }}
                            </del>
                        </div>
                        <?php
                            $sizes = explode(',',  $product['properties']);
                        ?>
                        <div class="uk-margin-medium" uk-toggle="cls: uk-margin-medium; mode: media; media: @m">
                            <div class="uk-margin-top uk-grid-small uk-child-width-auto uk-grid" uk-grid="">
                                @if(count($sizes) > 1)
                                @foreach($sizes as $size)
                                <label class="uk-first-column">
                                    <input class="uk-radio productDetail__contentLeft__radio" value="{{ $size }}" type="radio" name="size[]">
                                    <span class="productDetail__contentLeft__label">
                                        {{ isset($size) ? $size : '' }}
                                    </span>
                                </label>
                                @endforeach
                                @endif
                            </div>

                            <div class="uk-margin uk-form-custom" uk-form-custom="target: > * > span:first-child">
                                <select aria-label="Custom controls" name="quantity[]" class="quantity">
                                    @for($i = 1; $i <= 10; $i++)
                                        <option style="text-align: center" value="{{ $i }}">{{ $i }}</option>
                                    @endfor
                                </select>
                                <button class="uk-button uk-button-default" type="button" tabindex="-1">
                                    <span>Please select...</span>
                                    <span uk-icon="icon: chevron-down" class="uk-icon"><svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><polyline fill="none" stroke="#000" stroke-width="1.03" points="16 7 10 13 4 7"></polyline></svg></span>
                                </button>
                            </div>
                            <style>
                                select.quantity > option{
                                    text-align: center;
                                }
                            </style>
                        </div>
                        </form>
                        @if($product->sold_out != 1)
                        <div class="uk-child-width-expand uk-grid-10 uk-grid" uk-grid="">
                            <div class="uk-first-column">
                                <button onclick="return addToOrder(this);" class="productDetail__contentLeft__btn productDetail__contentLeft__btn--addCart uk-button uk-button-large uk-background-secondary uk-width-1-1@l">
                                    ADD TO CART
                                </button>
                            </div>
                        </div>
                        @else
                            <div class="uk-child-width-expand uk-grid-10 uk-grid" uk-grid="">
                                <div class="uk-first-column">
                                    <button style="background-color: #626161;" class="productDetail__contentLeft__btn productDetail__contentLeft__btn--addCart uk-button uk-button-large uk-background-secondary uk-width-1-1@l">
                                       SOLD OUT
                                    </button>
                                </div>
                            </div>
                        @endif
{{--                        <div class="uk-margin">--}}
{{--                            <button class="productDetail__contentLeft__btn productDetail__contentLeft__btn--find uk-button uk-button-large uk-button-default uk-width-1-1@l">Find my size</button>--}}
{{--                        </div>--}}
{{--                        <div class="uk-margin">--}}
{{--                            <div class="uk-child-width-auto uk-flex-middle uk-flex-center uk-grid-8 uk-grid" uk-grid="">--}}
{{--                                <div class="uk-first-column">--}}
{{--                                    <span>Earn 6% rebate with</span>--}}
{{--                                </div>--}}
{{--                                <div>--}}
{{--                                    <img style="max-width: 161px" src="images/crypto-pay-logo.svg" alt="">--}}
{{--                                </div>--}}
{{--                                <div>--}}
{{--                                    <a href="" uk-icon="warning" class="uk-icon"><svg width="20" height="20" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><circle cx="10" cy="14" r="1"></circle><circle fill="none" stroke="#000" stroke-width="1.1" cx="10" cy="10" r="9"></circle><path d="M10.97,7.72 C10.85,9.54 10.56,11.29 10.56,11.29 C10.51,11.87 10.27,12 9.99,12 C9.69,12 9.49,11.87 9.43,11.29 C9.43,11.29 9.16,9.54 9.03,7.72 C8.96,6.54 9.03,6 9.03,6 C9.03,5.45 9.46,5.02 9.99,5 C10.53,5.01 10.97,5.44 10.97,6 C10.97,6 11.04,6.54 10.97,7.72 L10.97,7.72 Z"></path></svg></a>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                        <div class="uk-margin productDetail__contentLeft__boxSale uk-padding-small uk-card uk-card-body uk-alert-warning uk-text-center">--}}
{{--                            You might be eligble for discounts of up to 35% on this product. Connect your wallet to find out if you are!--}}
{{--                        </div>--}}
{{--                        <div class="uk-margin">--}}
{{--                            <button class="productDetail__contentLeft__btn productDetail__contentLeft__btn--connect uk-button uk-button-large uk-background-secondary uk-width-1-1@l">Connect Wallet</button>--}}
{{--                        </div>--}}

                        <ul class="productDetail__contentLeft__accordion uk-accordion" uk-accordion="">
                            <li class="productDetail__contentLeft__accordion__li uk-open">
                                <a class="uk-accordion-title productDetail__contentLeft__accordion__title" href="#">
                                    DESCRIPTION
                                </a>
                                <div class="uk-accordion-content productDetail__contentLeft__accordion__content">
                                    <p>
                                        {!! $product->content !!}
                                    </p>
                                </div>
                            </li>
                            <li class="productDetail__contentLeft__accordion__li">
                                <a class="uk-accordion-title productDetail__contentLeft__accordion__title" href="#">SHIPPING &amp; RETURNS</a>
                                <div class="uk-accordion-content productDetail__contentLeft__accordion__content" hidden="">
                                    <p>
                                        {{ $product['shipping-returns'] }}
                                    </p>
                                </div>
                            </li>
                            <li class="productDetail__contentLeft__accordion__li">
                                <a class="uk-accordion-title productDetail__contentLeft__accordion__title" href="#">SIZE CHART </a>
                                <div class="uk-accordion-content productDetail__contentLeft__accordion__content" hidden="">
                                    <p>
                                        <img src="{{ $product['size-chart'] }}" alt="">
                                    </p>
                                </div>
                            </li>
                            <li class="productDetail__contentLeft__accordion__li">
                                <a class="uk-accordion-title productDetail__contentLeft__accordion__title" href="#">REVIEWS</a>
                                <div class="uk-accordion-content productDetail__contentLeft__accordion__content" hidden="">
                                    <p>
                                        Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat proident.
                                    </p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

