@extends('site.layout.site')

@section('title', isset($information['meta_title']) ? $information['meta_title'] : '')
@section('meta_description', isset($information['meta_description']) ? $information['meta_description'] : '')
@section('keywords', isset($information['meta_keyword']) ? $information['meta_keyword'] : '')

@section('content')
    @include('site.module.slide')
    @include('site.module.title_book')
    <div class="columns-container contentView">
        <div id="columns" class="container my-container">
            <div id="slider_row" class="row">
                <div id="top_column" class="center_column col-xs-12 col-sm-12"></div>
            </div>
            <div class="row">
                <div id="center_column" class="center_column col-xs-12 col-sm-12">
                    <p style="color: red; font-size: 18px; padding: 20px 0 40px 0;">
                        <h1 class="page-heading bottom-indent"><i> {{ (isset($isBookSuccess)) ? $languageSetup['cam-on-khi-dat-hang'] : '' }} </i></h1>
                    </p>
                </div>
            </div>
        </div>
    </div>

@endsection
