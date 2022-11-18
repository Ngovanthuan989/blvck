@extends('site.layout.site')

@section('title', $category->title)
@section('meta_description',  $category->description )
@section('keywords', '')

@section('content')
    <main id="MainContent" class="content-for-layout focus-none" role="main" tabindex="-1">
        <div id="shopify-section-template--15590144049331__banner" class="shopify-section section">
            <div class="collection-hero">
                <div class="collection-hero__inner page-width">
                    <div class="collection-hero__text-wrapper">
                        <h3 class="collection-hero__title">
                            <span class="visually-hidden">Collection: </span>{{ $category->title }}</h3></div>
                </div>
            </div>
        </div>
        <div id="shopify-section-template--15590144049331__product-grid" class="shopify-section section">
            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/template-collection.css') }}"
                  rel="stylesheet" type="text/css" media="all"/>
            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-loading-overlay.css') }}"
                  rel="stylesheet" type="text/css" media="all"/>
            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-card.css') }}"
                  rel="stylesheet" type="text/css" media="all"/>
            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-price.css') }}"
                  rel="stylesheet" type="text/css" media="all"/>

            <link rel="preload"
                  href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-rte.css') }}"
                  as="style" onload="this.onload=null;this.rel='stylesheet'">

            <noscript>
                <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-rte.css') }}"
                      rel="stylesheet" type="text/css" media="all"/>
            </noscript>
            <style data-shopify>.section-template--15590144049331__product-grid-padding {
                    padding-top: 0px;
                    padding-bottom: 27px;
                }

                @media screen and (min-width: 750px) {
                    .section-template--15590144049331__product-grid-padding {
                        padding-top: 0px;
                        padding-bottom: 36px;
                    }
                }</style>
            <div class="section-template--15590144049331__product-grid-padding">
                <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-facets.css') }}"
                      rel="stylesheet" type="text/css" media="all"/>
                <script src="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/facets.js') }}"
                        defer="defer"></script>

                <div class="page-width" id="main-collection-filters" data-id="template--15590144049331__product-grid">
                    <div class="facets-container">
                        {{--filter desktop--}}
                        <facet-filters-form class="facets small-hide">
                            <form id="FacetFiltersForm" class="facets__form" method="get" action="">
                                <div id="FacetsWrapperDesktop" class="facets__wrapper"><h2
                                            class="facets__heading caption-large text-body"> {{ $languageSetup['filter'] }}:</h2>
                                    <details id="Details-1-template--15590144049331__product-grid"
                                             class="disclosure-has-popup facets__disclosure js-filter" data-index="1">
                                        <summary class="facets__summary caption-large focus-offset">
                                            <div>
                                                <span>Size</span>
                                                <svg aria-hidden="true" focusable="false" role="presentation"
                                                     class="icon icon-caret" viewBox="0 0 10 6">
                                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                                          d="M9.354.646a.5.5 0 00-.708 0L5 4.293 1.354.646a.5.5 0 00-.708.708l4 4a.5.5 0 00.708 0l4-4a.5.5 0 000-.708z"
                                                          fill="currentColor">
                                                </svg>
                                            </div>
                                        </summary>
                                        <div id="Facet-1-template--15590144049331__product-grid" class="facets__display">
                                            <div class="facets__header">
                                                <span class="facets__selected no-js-hidden">0 selected</span>
                                                <facet-remove>
                                                    <a href="{{ url()->current() }}"
                                                       class="facets__reset link underlined-link">
                                                        Reset
                                                    </a>
                                                </facet-remove>
                                            </div>

                                            <ul class="facets__list list-unstyled" role="list">
                                                <li class="list-menu__item facets__item">
                                                    <label for="Filter-Size-1" class="facet-checkbox">
                                                        <input type="checkbox"
                                                               name="size[]"
                                                               value="XS"
                                                               id="Filter-Size-1" {{ !empty(request()->input('size')) && in_array('XS', request()->input('size')) ? 'checked' : '' }}>

                                                        <svg width="1.6rem" height="1.6rem" viewBox="0 0 16 16"
                                                             aria-hidden="true" focusable="false">
                                                            <rect width="16" height="16" stroke="currentColor" fill="none"
                                                                  stroke-width="1"></rect>
                                                        </svg>

                                                        <svg class="icon icon-checkmark"
                                                             width="1.1rem"
                                                             height="0.7rem"
                                                             viewBox="0 0 11 7"
                                                             fill="none"
                                                             xmlns="http://www.w3.org/2000/svg">

                                                            <path d="M1.5 3.5L2.83333 4.75L4.16667 6L9.5 1"
                                                                  stroke="currentColor"
                                                                  stroke-width="1.75"
                                                                  stroke-linecap="round"
                                                                  stroke-linejoin="round"/>
                                                        </svg>

                                                        XS
                                                    </label>
                                                </li>
                                                <li class="list-menu__item facets__item">
                                                    <label for="Filter-Size-2" class="facet-checkbox">
                                                        <input type="checkbox"
                                                               name="size[]"
                                                               value="S" {{ !empty(request()->input('size')) && in_array('S', request()->input('size')) ? 'checked' : '' }}
                                                               id="Filter-Size-2">

                                                        <svg width="1.6rem" height="1.6rem" viewBox="0 0 16 16"
                                                             aria-hidden="true" focusable="false">
                                                            <rect width="16" height="16" stroke="currentColor" fill="none"
                                                                  stroke-width="1"></rect>
                                                        </svg>

                                                        <svg class="icon icon-checkmark"
                                                             width="1.1rem"
                                                             height="0.7rem"
                                                             viewBox="0 0 11 7"
                                                             fill="none"
                                                             xmlns="http://www.w3.org/2000/svg">

                                                            <path d="M1.5 3.5L2.83333 4.75L4.16667 6L9.5 1"
                                                                  stroke="currentColor"
                                                                  stroke-width="1.75"
                                                                  stroke-linecap="round"
                                                                  stroke-linejoin="round"/>
                                                        </svg>
                                                        S
                                                    </label>
                                                </li>
                                                <li class="list-menu__item facets__item">
                                                    <label for="Filter-Size-3" class="facet-checkbox">
                                                        <input type="checkbox"
                                                               name="size[]"
                                                               value="M" {{ !empty(request()->input('size')) && in_array('M', request()->input('size')) ? 'checked' : '' }}
                                                               id="Filter-Size-3">

                                                        <svg width="1.6rem" height="1.6rem" viewBox="0 0 16 16"
                                                             aria-hidden="true" focusable="false">
                                                            <rect width="16" height="16" stroke="currentColor" fill="none"
                                                                  stroke-width="1"></rect>
                                                        </svg>

                                                        <svg class="icon icon-checkmark"
                                                             width="1.1rem"
                                                             height="0.7rem"
                                                             viewBox="0 0 11 7"
                                                             fill="none"
                                                             xmlns="http://www.w3.org/2000/svg">

                                                            <path d="M1.5 3.5L2.83333 4.75L4.16667 6L9.5 1"
                                                                  stroke="currentColor"
                                                                  stroke-width="1.75"
                                                                  stroke-linecap="round"
                                                                  stroke-linejoin="round"/>
                                                        </svg>
                                                        M
                                                    </label>
                                                </li>
                                                <li class="list-menu__item facets__item">
                                                    <label for="Filter-Size-4" class="facet-checkbox">
                                                        <input type="checkbox"
                                                               name="size[]"
                                                               value="L" {{ !empty(request()->input('size')) && in_array('L', request()->input('size')) ? 'checked' : '' }}
                                                               id="Filter-Size-4">

                                                        <svg width="1.6rem" height="1.6rem" viewBox="0 0 16 16"
                                                             aria-hidden="true" focusable="false">
                                                            <rect width="16" height="16" stroke="currentColor" fill="none"
                                                                  stroke-width="1"></rect>
                                                        </svg>

                                                        <svg class="icon icon-checkmark"
                                                             width="1.1rem"
                                                             height="0.7rem"
                                                             viewBox="0 0 11 7"
                                                             fill="none"
                                                             xmlns="http://www.w3.org/2000/svg">

                                                            <path d="M1.5 3.5L2.83333 4.75L4.16667 6L9.5 1"
                                                                  stroke="currentColor"
                                                                  stroke-width="1.75"
                                                                  stroke-linecap="round"
                                                                  stroke-linejoin="round"/>
                                                        </svg>
                                                        L
                                                    </label>
                                                </li>
                                                <li class="list-menu__item facets__item">
                                                    <label for="Filter-Size-5" class="facet-checkbox">
                                                        <input type="checkbox"
                                                               name="size[]"
                                                               value="XL" {{ !empty(request()->input('size')) && in_array('XL', request()->input('size')) ? 'checked' : '' }}
                                                               id="Filter-Size-5">

                                                        <svg width="1.6rem" height="1.6rem" viewBox="0 0 16 16"
                                                             aria-hidden="true" focusable="false">
                                                            <rect width="16" height="16" stroke="currentColor" fill="none"
                                                                  stroke-width="1"></rect>
                                                        </svg>

                                                        <svg class="icon icon-checkmark"
                                                             width="1.1rem"
                                                             height="0.7rem"
                                                             viewBox="0 0 11 7"
                                                             fill="none"
                                                             xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M1.5 3.5L2.83333 4.75L4.16667 6L9.5 1"
                                                                  stroke="currentColor"
                                                                  stroke-width="1.75"
                                                                  stroke-linecap="round"
                                                                  stroke-linejoin="round"/>
                                                        </svg>
                                                        XL
                                                    </label>
                                                </li>
                                                <li class="list-menu__item facets__item">
                                                    <label for="Filter-Size-6" class="facet-checkbox">
                                                        <input type="checkbox"
                                                               name="size[]"
                                                               value="XXL" {{ !empty(request()->input('size')) && in_array('XXL', request()->input('size')) ? 'checked' : '' }}
                                                               id="Filter-Size-6">

                                                        <svg width="1.6rem" height="1.6rem" viewBox="0 0 16 16"
                                                             aria-hidden="true" focusable="false">
                                                            <rect width="16" height="16" stroke="currentColor" fill="none"
                                                                  stroke-width="1"></rect>
                                                        </svg>
                                                        <svg class="icon icon-checkmark"
                                                             width="1.1rem"
                                                             height="0.7rem"
                                                             viewBox="0 0 11 7"
                                                             fill="none"
                                                             xmlns="http://www.w3.org/2000/svg">

                                                            <path d="M1.5 3.5L2.83333 4.75L4.16667 6L9.5 1"
                                                                  stroke="currentColor"
                                                                  stroke-width="1.75"
                                                                  stroke-linecap="round"
                                                                  stroke-linejoin="round"/>
                                                        </svg>
                                                        XXL
                                                    </label>
                                                </li>
                                            </ul>
                                        </div>
                                    </details>
                                    <script>
                                        $('.facets__item input[type=checkbox]').change( function () {
                                            $('#FacetFiltersForm').submit();
                                        })
                                    </script>
                                    <noscript>
                                        <button type="submit" class="facets__button-no-js button button--tertiary">Filter
                                        </button>
                                    </noscript>
                                </div>

                                <div class="active-facets active-facets-desktop">
                                    @if(request()->input('size'))
                                        @foreach(request()->input('size') as $size)
                                            <facet-remove>
                                                <a href="#" class="active-facets__button active-facets__button--light">
                                                <span class="active-facets__button-inner button button--tertiary">
                                                  {{ $size }}
                                                  <svg aria-hidden="true" focusable="false" role="presentation" width="12" height="13" class="icon icon-close-small" viewBox="0 0 12 13" fill="none" xmlns="http://www.w3.org/2000/svg">
                                              <path d="M8.48627 9.32917L2.82849 3.67098" stroke="#333030" stroke-linecap="round" stroke-linejoin="round"></path>
                                              <path d="M2.88539 9.38504L8.42932 3.61524" stroke="#333030" stroke-linecap="round" stroke-linejoin="round"></path>
                                              </svg>
                                                  <span class="visually-hidden">Clear filter</span>
                                                </span>
                                                </a>
                                            </facet-remove>
                                        @endforeach
                                    @endif

                                    <facet-remove class="active-facets__button-wrapper">
                                        <a href="{{ url()->current() }}"
                                           class="active-facets__button-remove underlined-link">
                                            <span>Clear all</span>
                                        </a>
                                    </facet-remove>
                                </div>


                                <div class="product-count light" role="status">
                                    <h2 class="product-count__text text-body">
                                                <span id="ProductCountDesktop">{{ $countProduct }}   {{ $languageSetup['product'] }}
                                    </span>
                                    </h2>
                                    <div class="loading-overlay__spinner">
                                        <svg aria-hidden="true" focusable="false" role="presentation" class="spinner"
                                             viewBox="0 0 66 66" xmlns="http://www.w3.org/2000/svg">
                                            <circle class="path" fill="none" stroke-width="6" cx="33" cy="33"
                                                    r="30"></circle>
                                        </svg>
                                    </div>
                                </div>
                            </form>
                        </facet-filters-form>

                        {{--filter mobile--}}

                        <menu-drawer class="mobile-facets__wrapper  medium-hide large-up-hide" data-breakpoint="mobile">
                            <details class="mobile-facets__disclosure disclosure-has-popup">
                                <summary class="mobile-facets__open-wrapper focus-offset">
                                            <span class="mobile-facets__open">
                                              <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false" role="presentation"
                                                   class="icon icon-filter" fill="none" viewBox="0 11 20 20">
                                      <line x1="16.5" y1="17.5" x2="3.5" y2="17.5" stroke="#3F7972" stroke-linecap="round"/>
                                      <line x1="16.5" y1="24.5" x2="3.5" y2="24.5" stroke="#3F7972" stroke-linecap="round"/>
                                      <circle cx="13" cy="24.5" r="2" fill="white" stroke="#3F7972"/>
                                      <circle cx="7" cy="17.5" r="2" fill="white" stroke="#3F7972"/>
                                    </svg>

                                              <span class="mobile-facets__open-label button-label">Filter
                                    </span>
                                    </span>
                                    <span tabindex="0" class="mobile-facets__close mobile-facets__close--no-js">
                                        <svg xmlns="http://www.w3.org/2000/svg" aria-hidden="true" focusable="false"
                                            role="presentation" class="icon icon-close" fill="none" viewBox="0 0 18 17">
                                            <path d="M.865 15.978a.5.5 0 00.707.707l7.433-7.431 7.579 7.282a.501.501 0 00.846-.37.5.5 0 00-.153-.351L9.712 8.546l7.417-7.416a.5.5 0 10-.707-.708L8.991 7.853 1.413.573a.5.5 0 10-.693.72l7.563 7.268-7.418 7.417z"
                                            fill="currentColor">
                                        </svg>
                                    </span>
                                </summary>
                                <facet-filters-form>
                                    <form id="FacetFiltersFormMobile" class="mobile-facets">
                                        <div class="mobile-facets__inner">
                                            <div class="mobile-facets__header">
                                                <div class="mobile-facets__header-inner">
                                                    <h2 class="mobile-facets__heading">Filter
                                                    </h2>
                                                    <p class="mobile-facets__count">{{ $countProduct }}   {{ $languageSetup['product'] }}
                                                    </p>
                                                </div>
                                            </div>
                                            <div class="mobile-facets__main">
                                                <details id="Details-Mobile-1-template--15590144049331__product-grid"
                                                         class="mobile-facets__details js-filter" data-index="mobile-1">
                                                    <summary class="mobile-facets__summary focus-inset">
                                                        <div>
                                                            <span>Size</span>
                                                            <span class="mobile-facets__arrow no-js-hidden"><svg
                                                                        viewBox="0 0 14 10" fill="none" aria-hidden="true"
                                                                        focusable="false" role="presentation"
                                                                        class="icon icon-arrow"
                                                                        xmlns="http://www.w3.org/2000/svg">
                                                              <path fill-rule="evenodd" clip-rule="evenodd"
                                                                    d="M8.537.808a.5.5 0 01.817-.162l4 4a.5.5 0 010 .708l-4 4a.5.5 0 11-.708-.708L11.793 5.5H1a.5.5 0 010-1h10.793L8.646 1.354a.5.5 0 01-.109-.546z"
                                                                    fill="currentColor">
                                                            </svg>
                                                            </span>
                                                            <noscript>
                                                                <svg aria-hidden="true" focusable="false"
                                                                     role="presentation" class="icon icon-caret"
                                                                     viewBox="0 0 10 6">
                                                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                                                          d="M9.354.646a.5.5 0 00-.708 0L5 4.293 1.354.646a.5.5 0 00-.708.708l4 4a.5.5 0 00.708 0l4-4a.5.5 0 000-.708z"
                                                                          fill="currentColor">
                                                                </svg>
                                                            </noscript>
                                                        </div>
                                                    </summary>
                                                    <div id="FacetMobile-1-template--15590144049331__product-grid"
                                                         class="mobile-facets__submenu">
                                                        <button class="mobile-facets__close-button link link--text focus-inset"
                                                                aria-expanded="true" type="button">
                                                            <svg viewBox="0 0 14 10" fill="none" aria-hidden="true"
                                                                 focusable="false" role="presentation"
                                                                 class="icon icon-arrow" xmlns="http://www.w3.org/2000/svg">
                                                                <path fill-rule="evenodd" clip-rule="evenodd"
                                                                      d="M8.537.808a.5.5 0 01.817-.162l4 4a.5.5 0 010 .708l-4 4a.5.5 0 11-.708-.708L11.793 5.5H1a.5.5 0 010-1h10.793L8.646 1.354a.5.5 0 01-.109-.546z"
                                                                      fill="currentColor">
                                                            </svg>

                                                            Size
                                                        </button>
                                                        <ul class="mobile-facets__list list-unstyled" role="list">
                                                            <li class="mobile-facets__item list-menu__item">
                                                                <label for="Filter-Size-mobile-1"
                                                                       class="mobile-facets__label">
                                                                    <input class="mobile-facets__checkbox" type="checkbox"
                                                                           name="size[]" value="XS"
                                                                           id="Filter-Size-mobile-1">

                                                                    <span class="mobile-facets__highlight"></span>
                                                                    <svg width="1.6rem" height="1.6rem" viewBox="0 0 16 16"
                                                                         aria-hidden="true" focusable="false">
                                                                        <rect width="16" height="16" stroke="currentColor"
                                                                              fill="none" stroke-width="1"></rect>
                                                                    </svg>

                                                                    <svg class="icon icon-checkmark" width="1.1rem"
                                                                         height="0.7rem" viewBox="0 0 11 7" fill="none"
                                                                         xmlns="http://www.w3.org/2000/svg">
                                                                        <path d="M1.5 3.5L2.83333 4.75L4.16667 6L9.5 1"
                                                                              stroke="currentColor" stroke-width="1.75"
                                                                              stroke-linecap="round"
                                                                              stroke-linejoin="round"/>
                                                                    </svg>

                                                                    XS
                                                                </label>
                                                            </li>
                                                            <li class="mobile-facets__item list-menu__item">
                                                                <label for="Filter-Size-mobile-2"
                                                                       class="mobile-facets__label">
                                                                    <input class="mobile-facets__checkbox" type="checkbox"
                                                                           name="size[]" value="S"
                                                                           id="Filter-Size-mobile-2">

                                                                    <span class="mobile-facets__highlight"></span>

                                                                    <svg width="1.6rem" height="1.6rem" viewBox="0 0 16 16"
                                                                         aria-hidden="true" focusable="false">
                                                                        <rect width="16" height="16" stroke="currentColor"
                                                                              fill="none" stroke-width="1"></rect>
                                                                    </svg>

                                                                    <svg class="icon icon-checkmark" width="1.1rem"
                                                                         height="0.7rem" viewBox="0 0 11 7" fill="none"
                                                                         xmlns="http://www.w3.org/2000/svg">
                                                                        <path d="M1.5 3.5L2.83333 4.75L4.16667 6L9.5 1"
                                                                              stroke="currentColor" stroke-width="1.75"
                                                                              stroke-linecap="round"
                                                                              stroke-linejoin="round"/>
                                                                    </svg>

                                                                    S
                                                                </label>
                                                            </li>
                                                            <li class="mobile-facets__item list-menu__item">
                                                                <label for="Filter-Size-mobile-3"
                                                                       class="mobile-facets__label">
                                                                    <input class="mobile-facets__checkbox" type="checkbox"
                                                                           name="size[]" value="M"
                                                                           id="Filter-Size-mobile-3">

                                                                    <span class="mobile-facets__highlight"></span>
                                                                    <svg width="1.6rem" height="1.6rem" viewBox="0 0 16 16"
                                                                         aria-hidden="true" focusable="false">
                                                                        <rect width="16" height="16" stroke="currentColor"
                                                                              fill="none" stroke-width="1"></rect>
                                                                    </svg>

                                                                    <svg class="icon icon-checkmark" width="1.1rem"
                                                                         height="0.7rem" viewBox="0 0 11 7" fill="none"
                                                                         xmlns="http://www.w3.org/2000/svg">
                                                                        <path d="M1.5 3.5L2.83333 4.75L4.16667 6L9.5 1"
                                                                              stroke="currentColor" stroke-width="1.75"
                                                                              stroke-linecap="round"
                                                                              stroke-linejoin="round"/>
                                                                    </svg>

                                                                    M
                                                                </label>
                                                            </li>
                                                            <li class="mobile-facets__item list-menu__item">
                                                                <label for="Filter-Size-mobile-4"
                                                                       class="mobile-facets__label">
                                                                    <input class="mobile-facets__checkbox" type="checkbox"
                                                                           name="size[]" value="L"
                                                                           id="Filter-Size-mobile-4"


                                                                    >

                                                                    <span class="mobile-facets__highlight"></span>

                                                                    <svg width="1.6rem" height="1.6rem" viewBox="0 0 16 16"
                                                                         aria-hidden="true" focusable="false">
                                                                        <rect width="16" height="16" stroke="currentColor"
                                                                              fill="none" stroke-width="1"></rect>
                                                                    </svg>

                                                                    <svg class="icon icon-checkmark" width="1.1rem"
                                                                         height="0.7rem" viewBox="0 0 11 7" fill="none"
                                                                         xmlns="http://www.w3.org/2000/svg">
                                                                        <path d="M1.5 3.5L2.83333 4.75L4.16667 6L9.5 1"
                                                                              stroke="currentColor" stroke-width="1.75"
                                                                              stroke-linecap="round"
                                                                              stroke-linejoin="round"/>
                                                                    </svg>

                                                                    L
                                                                </label>
                                                            </li>
                                                            <li class="mobile-facets__item list-menu__item">
                                                                <label for="Filter-Size-mobile-5"
                                                                       class="mobile-facets__label">
                                                                    <input class="mobile-facets__checkbox" type="checkbox"
                                                                           name="size[]" value="XL"
                                                                           id="Filter-Size-mobile-5"


                                                                    >

                                                                    <span class="mobile-facets__highlight"></span>

                                                                    <svg width="1.6rem" height="1.6rem" viewBox="0 0 16 16"
                                                                         aria-hidden="true" focusable="false">
                                                                        <rect width="16" height="16" stroke="currentColor"
                                                                              fill="none" stroke-width="1"></rect>
                                                                    </svg>

                                                                    <svg class="icon icon-checkmark" width="1.1rem"
                                                                         height="0.7rem" viewBox="0 0 11 7" fill="none"
                                                                         xmlns="http://www.w3.org/2000/svg">
                                                                        <path d="M1.5 3.5L2.83333 4.75L4.16667 6L9.5 1"
                                                                              stroke="currentColor" stroke-width="1.75"
                                                                              stroke-linecap="round"
                                                                              stroke-linejoin="round"/>
                                                                    </svg>

                                                                    XL
                                                                </label>
                                                            </li>
                                                            <li class="mobile-facets__item list-menu__item">
                                                                <label for="Filter-Size-mobile-6"
                                                                       class="mobile-facets__label">
                                                                    <input class="mobile-facets__checkbox" type="checkbox"
                                                                           name="size[]" value="XXL"
                                                                           id="Filter-Size-mobile-6"


                                                                    >

                                                                    <span class="mobile-facets__highlight"></span>

                                                                    <svg width="1.6rem" height="1.6rem" viewBox="0 0 16 16"
                                                                         aria-hidden="true" focusable="false">
                                                                        <rect width="16" height="16" stroke="currentColor"
                                                                              fill="none" stroke-width="1"></rect>
                                                                    </svg>

                                                                    <svg class="icon icon-checkmark" width="1.1rem"
                                                                         height="0.7rem" viewBox="0 0 11 7" fill="none"
                                                                         xmlns="http://www.w3.org/2000/svg">
                                                                        <path d="M1.5 3.5L2.83333 4.75L4.16667 6L9.5 1"
                                                                              stroke="currentColor" stroke-width="1.75"
                                                                              stroke-linecap="round"
                                                                              stroke-linejoin="round"/>
                                                                    </svg>

                                                                    XXL
                                                                </label>
                                                            </li>
                                                        </ul>

                                                        <div class="no-js-hidden mobile-facets__footer">
                                                            <facet-remove class="mobile-facets__clear-wrapper">
                                                                <a href="/collections/latest-products"
                                                                   class="mobile-facets__clear underlined-link">Clear</a>
                                                            </facet-remove>
                                                            <button type="button"
                                                                    class="no-js-hidden button button--primary"
                                                                    onclick="this.closest('.mobile-facets__wrapper').querySelector('summary').click()">
                                                                Apply
                                                            </button>
                                                            <noscript>
                                                                <button class="button button--primary">Apply</button>
                                                            </noscript>
                                                        </div>
                                                    </div>
                                                </details>

                                                <div class="mobile-facets__footer">
                                                    <facet-remove class="mobile-facets__clear-wrapper">
                                                        <a href="{{ url()->current() }}" class="mobile-facets__clear">Clear
                                                            all</a>
                                                    </facet-remove>
                                                    <button type="button" class="no-js-hidden button button--primary"
                                                            onclick="this.closest('.mobile-facets__wrapper').querySelector('summary').click()">
                                                        Apply
                                                    </button>
                                                    <noscript>
                                                        <button class="button button--primary">Apply</button>
                                                    </noscript>
                                                </div>
                                            </div>


                                        </div>
                                    </form>
                                </facet-filters-form>
                            </details>
                        </menu-drawer>
                        <div class="active-facets active-facets-mobile  medium-hide large-up-hide">
                            <facet-remove class="active-facets__button-wrapper">
                                <a href="/collections/latest-products" class="active-facets__button-remove">
                                    <span>Clear all</span>
                                </a>
                            </facet-remove>
                        </div>
                        <div class="product-count light medium-hide large-up-hide" role="status">
                            <h2 class="product-count__text text-body">
                                  <span id="ProductCount">{{ $countProduct }} products
                            </span>
                            </h2>
                            <div class="loading-overlay__spinner">
                                <svg aria-hidden="true" focusable="false" role="presentation" class="spinner"
                                     viewBox="0 0 66 66" xmlns="http://www.w3.org/2000/svg">
                                    <circle class="path" fill="none" stroke-width="6" cx="33" cy="33" r="30"></circle>
                                </svg>
                            </div>
                        </div>
                    </div>
                </div>


                <div id="ProductGridContainer">
                    <div class="collection page-width">
                        <div class="loading-overlay"></div>

                        <ul id="product-grid" data-id="template--15590144049331__product-grid" class="grid grid--2-col product-grid grid--3-col-tablet grid--one-third-max grid--4-col-desktop grid--quarter-max">
                            @foreach ($products as $id => $product)
                            <li class="grid__item">
                                <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-rating.css') }}"
                                      rel="stylesheet" type="text/css" media="all"/>
                                <div class="card-wrapper underline-links-hover">
                                    <div class="card card--standard card--media card--extend-height">
                                        <div class="card__inner ratio">
                                            <div class="card__media">
                                                <a href="{{ route('product', ['post_slug' => $product->slug, 'languageCurrent' => $languageCurrent]) }}">
                                                    <div class="media media--transparent media--hover-effect">
                                                        <img src="{{ isset($product['image']) ? $product['image'] : '' }}"
                                                                alt="{{ isset($product['title']) ? $product['title'] : '' }}"
                                                                class="motion-reduce"
                                                                loading="lazy"
                                                                width="4000"
                                                                height="4000"
                                                        ><img src="{{ \App\Entity\Input::getPostMeta('anh-2', $product->post_id) }}"
                                                                alt="{{ isset($product['title']) ? $product['title'] : '' }}"
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
                                                    <a href="{{ route('product', ['post_slug' => $product->slug, 'languageCurrent' => $languageCurrent]) }}"
                                                       class="full-unstyled-link">
                                                        {{ isset($product['title']) ? $product['title'] : '' }}
                                                    </a>
                                                </h3>
                                                <div class="card-information">
                                                    <span class="caption-large light"></span>

                                                    <div class="price  price--sold-out ">
                                                        <div class="price__container">
                                                            <div class="price__regular">
                                                                <span class="visually-hidden visually-hidden--inline">Regular price</span>
                                                                <span class="price-item price-item--regular">
                                                                   {{ isset($product['price']) ? $product['price'] : '' }} {{ isset($information['currency']) ? $information['currency'] : \App\Entity\Input::getPostMeta('currency', $product->post_id) }}
                                                                </span>
                                                            </div>


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

                        <link rel="stylesheet"
                              href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-pagination.css') }}"
                              media="print" onload="this.media='all'">
                        <noscript>
                            <link href="{{ asset('site/s/files/1/0080/9035/3717/t/3/assets/component-pagination.css') }}"
                                  rel="stylesheet" type="text/css" media="all"/>
                        </noscript>
                        <div class="pagination-wrapper">
                            <nav class="pagination" role="navigation" aria-label="Pagination">

                                <ul class="pagination__list list-unstyled" role="list">
                                    @if ($products->lastPage() > 1)
                                        @for ($i = 1; $i <= $products->lastPage(); $i++)
                                            @if($products->currentPage() == $i )
                                            <li>
                                                <span class="pagination__item pagination__item--current" aria-current="page"
                                                aria-label="Page {{ $i }}">
                                                    {{ $i }}
                                                </span>
                                            </li>
                                            @else
                                                <li>
                                                    <a href="{{ $products->url($i) }}" class="pagination__item link"
                                                       aria-label="Page {{ $i }}">{{ $i }}</a>
                                                </li>
                                            @endif
                                        @endfor
                                        <li>
                                            <a href="{{ $products->url($products->currentPage()+1) }}"
                                               class="pagination__item pagination__item--prev pagination__item-arrow link motion-reduce"
                                               aria-label="Next page">
                                                <svg aria-hidden="true" focusable="false" role="presentation"
                                                     class="icon icon-caret" viewBox="0 0 10 6">
                                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                                          d="M9.354.646a.5.5 0 00-.708 0L5 4.293 1.354.646a.5.5 0 00-.708.708l4 4a.5.5 0 00.708 0l4-4a.5.5 0 000-.708z"
                                                          fill="currentColor">
                                                </svg>
                                            </a>
                                        </li>
                                    @endif
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </main>

@endsection

