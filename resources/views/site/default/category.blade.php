@extends('site.layout.site')

@section('title', $category->title)
@section('meta_description',  $category->description )
@section('keywords', '')

@section('content')

<div class="uk-section-small uk-text-center blog__section1">
    <div class="uk-container uk-container-expand">
        <h1 class="uk-h1 blog__title">{{ $category->title }}</h1>
    </div>
</div>
<div class="uk-child-width-1-4@m home__blog__grid uk-child-width-auto uk-grid-collapse uk-overflow-auto" uk-grid>
    @foreach ($posts as $post)
    <div>
        <div class="home__blog__width">
            <div class="uk-cover-container uk-background-muted">
                <img src="{{ isset($post['image']) ? $post['image'] : '' }}" alt="" uk-cover="">
                <canvas width="573" height="573"></canvas>
                @if($post['tags'])
                <span class="uk-position-small uk-position-bottom-left blog__tag">
                    {{ isset($post['tags']) ? $post['tags'] : '' }}
                </span>
                @endif
                <a href="{{ route('post', ['cate_slug' => $category->slug, 'post_slug' => $post->slug, 'languageCurrent' => $languageCurrent]) }}" class="uk-position-cover"></a>
            </div>
            <div class="uk-padding-small home__blog__box">
                <h4 class="uk-h4 home__blog__title"><a href="{{ route('post', ['cate_slug' => $category->slug, 'post_slug' => $post->slug, 'languageCurrent' => $languageCurrent]) }}" class="uk-link-toggle">
                        {{ isset($post['title']) ? $post['title'] : '' }}
                    </a>
                </h4>
                <div class="item__6"><time class="blog__time">{{ date('F') }} {{ date('d') }}, {{ date('Y') }}</time></div>
                <div class="home__blog__desc item__15">{{ isset($post['description']) ? $post['description'] : '' }}</div>
                <div class="item__15"><a href="{{ route('post', ['cate_slug' => $category->slug, 'post_slug' => $post->slug, 'languageCurrent' => $languageCurrent]) }}" class="blog__link uk-link-toggle">READ MORE</a></div>
            </div>
        </div>
    </div>
    @endforeach
</div>
<div class="uk-section-xsmall" style="color: #0a0a0a">
    <div class="uk-container uk-container-expand">
        <ul class="uk-pagination uk-flex-center" uk-margin>
            @if ($posts->lastPage() > 1)
                <li><a href="{{ $posts->url(1) }}"><span uk-pagination-previous></span></a></li>

                @for ($i = 1; $i <= $posts->lastPage(); $i++)

                    <li class="{{ ($posts->currentPage() == $i) ? ' uk-active' : '' }}">
                        <a href="{{ $posts->url($i) }}" >{{ $i }}</a>
                    </li>
                @endfor
                <li><a href="{{ $posts->url($posts->currentPage()+1) }}"><span uk-pagination-next></span></a></li>
            @endif
        </ul>
    </div>
</div>
@endsection

