@extends('site.layout.site')

@section('title', $category->title)
@section('meta_description',  $category->description )
@section('keywords', '')

@section('content')
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

    <section class="order2 Extra">
        <div class="container">
            @foreach ($categoryChildrens as $id => $child)
            <div class="row {{ ($id % 2 == 1) ? 'leftRight' : ''}}">
                <div class="col-md-4 title ">
                    <h3>
                        <a href="{{ route('category_product', ['languageCurrent' => $languageCurrent, 'cate_slug' => $child->slug ]) }}" title="">{{ $child->title }}</a>
                    </h3>
                    <p>{{ isset($child['otherLanguage']->title) ? $child['otherLanguage']->title : '' }}</p>
                </div>
                <div class="col-md-8 img itemNew">
                    <div class="grid-box grid-box-order">
                        <a href="{{ route('category_product', ['languageCurrent' => $languageCurrent, 'cate_slug' => $child->slug ]) }}">
                            <img src="{{ asset($child->image) }}" title="{{ $child->title }}" alt="{{ $child->title }}">
                        </a>
                    </div>
                </div>
            </div>
            @endforeach

        </div>
    </section>
@endsection

