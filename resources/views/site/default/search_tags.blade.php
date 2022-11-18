@extends('site.layout.site')

@section('title', 'Tags')
@section('meta_description',  $information['meta_description'] )
@section('keywords', '')

@section('content')
    <div class="columns-container contentView">
        <div id="columns" class="container my-container">
            <div class="breadcrumb clearfix"> <a class="home" href="/" title="Return to Home"><i class="fa fa-home" aria-hidden="true"></i></a> <span class="navigation-pipe">&gt;</span> Tin tức</div>
            <div id="slider_row" class="row">
                <div id="top_column" class="center_column col-xs-12 col-sm-12"></div>
            </div>
            <div class="row">
                <div id="left_column" class="column col-xs-12 col-sm-3">
                    @include('site.module.side_product', ['menuLogo' => ''])
                </div>
                <div id="center_column" class="center_column col-xs-12 col-sm-9">
                    <div class="content_scene_cat mb20">
                        <div class="content_scene_cat_bg">
                            <img src="http://althealthworks.com/wp-content/uploads/2015/01/all-natural-cover-photo.png"/>
                        </div>
                    </div>
                    <h1 class="titleTab mb20"><span>Tags</span></h1>
                    <div class="listNews">
                        <div class="row">
                            @foreach ($posts as $post)
                                <div class="col-md-6">
                                    <div class="item ">
                                        <div class="CropImg">
                                            <a href="{{ route('post', ['cate_slug' => ($languageCurrent == 'vn') ? 'tin-tuc' : 'news', 'post_slug' => $post->slug, 'languageCurrent' => $languageCurrent]) }}" class="thumbs">
                                                <img src="{{ asset($post->image) }}" title="{{ $post->title }}"  alt="{{ $post->title }}"/>
                                            </a>
                                        </div>
                                        <h2 class="title boxNewT">
                                            <a href="{{ route('post', ['cate_slug' => ($languageCurrent == 'vn') ? 'tin-tuc' : 'news', 'post_slug' => $post->slug, 'languageCurrent' => $languageCurrent]) }}">
                                                {{ $post->title }}
                                                @if(isset($post->hotnews_start))
                                                    @if(strtotime($post->hotnews_start) < time() && strtotime($post->hotnews_end) > time())
                                                        (Hot)
                                                    @elseif (strtotime($post->hotnews_end) < time())
                                                        <span style="color: red">(Hết hạn)</span>
                                                    @endif
                                                @endif
                                            </a>
                                        </h2>
                                        <div class="ExCept boxNews">{{ $post->description }}</div>
                                        <div class="readMore"><a href="{{ route('post', ['cate_slug' => ($languageCurrent == 'vn') ? 'tin-tuc' : 'news', 'post_slug' => $post->slug, 'languageCurrent' => $languageCurrent]) }}">
                                                {{ $languageSetup['doc-them'] }} <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                        <script>
                            //Đồng bộ chiều cao các div
                            $(function() {
                                $('.boxNews').matchHeight();
                                $('.boxNewT').matchHeight();
                            });
                        </script>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="popup" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <a href="#"><img src=""/></a>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <script>
        $('#popup').modal('hide');
    </script>
@endsection

