@extends('site.layout.site')

@section('title', $category->title)
@section('meta_description',  $category->description )
@section('keywords', '')

@section('content')
    <link rel="stylesheet" href="{{ asset('site/css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('site/css/owl.theme.default.min.css') }}">

    <script src="{{ asset('site/js/owl.carousel.js') }}"></script>

    <script type="text/javascript" src="{{ asset('site/js/modernizr.custom.js') }}"></script>
    <script type="text/javascript" src="{{ asset('site/js/jquery.cslider.js') }}"></script>
    @include('site.module.slide')
    <section class="titleOrder01">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12 title">
                    <h1>{{ $categoryMain->title }}</h1>
                    <p>{{ $categoryMain['otherLanguage']->title }}</p>
                </div>
            </div>
        </div>
    </section>

    <section class="orderMonchinh Extra">
        <div class="container">
            <div class="row">
                <div class="col-md-12 large-12 columns">
                    <div class="owl-carousel owl-theme">
                        <?php $idx = 0; ?>
                        @while($countCategoryChildrens > 0)
                        <div class="item">
                            <div class="row">
                                @foreach ($categoryChildrens as $id => $child)
                                    @if ( $id < ($idx +8) && $id >= $idx)
                                        <div class="Food">
                                            <div class="col-md-3 grid-box itemImg {{ ($id % 4 < 2 ) ? 'hide' : 'leftImg hidetab' }} ">
                                                <a href="{{ route('category_product', ['languageCurrent' => $languageCurrent, 'cate_slug' => $child->slug ]) }}">
                                                    <img src="{{ asset($child->image) }}" title="{{ $child->title }}" alt="{{ $child->title }}">
                                                </a>
                                            </div>
                                            <div class="col-md-3 itemFood {{ ($id % 4 < 2 ) ? '' : 'rightTitle' }}">
                                                <h3 class="title">
                                                    <a href="">{{ $child->title }}</a>
                                                </h3>
                                                <p>{{ isset($child['otherLanguage']->title) ? $child['otherLanguage']->title : '' }}</p>
                                            </div>
                                            <div class="col-md-3 grid-box itemImg {{ ($id % 4 < 2 ) ? '' : 'leftImg hide blocktab' }}">
                                                <a href="">
                                                    <img src="{{ asset($child->image) }}" title="{{ $child->title }}" alt="{{ $child->title }}">
                                                </a>
                                            </div>
                                        </div>
                                    @endif
                                @endforeach
                            </div>
                        </div>
                        <?php $idx += 8; $countCategoryChildrens -= 8;?>
                        @endwhile
                    </div>

                </div>


                <script>
                    $(document).ready(function() {
                        $(document).ready(function() {
                            $('.owl-carousel').owlCarousel({
                                loop: true,
                                margin: 10,
                                responsiveClass: true,
                                autoplay:false,
                                autoplayTimeout:5000,
                                dots:false,
                                responsive: {
                                    0: {
                                        items: 1,
                                        nav: true
                                    },
                                    600: {
                                        items: 1,
                                        nav: true
                                    },
                                    1000: {
                                        items: 1,
                                        nav: true,
                                        loop: false,
                                        margin: 20
                                    }
                                }
                            });
                            $('.owl-prev').html('<i class="fa fa-chevron-circle-left" aria-hidden="true"></i>');
                            $('.owl-next').html('<i class="fa fa-chevron-circle-right" aria-hidden="true"></i>');
                        })
                    })
                </script>
            </div>
        </div>
    </section>
@endsection

