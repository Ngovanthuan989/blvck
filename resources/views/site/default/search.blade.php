@extends('site.layout.site')

@section('title', 'tim-kiem')
@section('meta_description', isset($information['meta_description']) ? $information['meta_description'] : '')
@section('keywords', isset($information['meta_keyword']) ? $information['meta_keyword'] : '')

@section('content')
    <main id="MainContent" class="content-for-layout focus-none" role="main" tabindex="-1">

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
                            Search : {{ $word }}
                        </facet-filters-form>


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
                                  <span id="ProductCount">{{ $count }} products
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
                                                                   {{ isset($product['price']) ? $product['price'] : '' }} {{ isset($information['currency']) ? $information['currency'] : \App\Entity\Input::getPostMeta('currency', $product->post_id)  }}
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
