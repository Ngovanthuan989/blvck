@extends('site.layout.site')

@section('title', !empty($post->meta_title) ? $post->meta_title : $post->title)
@section('meta_description',  !empty($post->meta_description) ? $post->meta_description : $post->description)
@section('keywords', $post->meta_keyword )
@section('meta_image', asset($post->image) )
@section('meta_url', route('post', ['cate_slug' => $category->slug, 'post_slug' => $post->slug, 'languageCurrent' => $languageCurrent]) )

@section('content')
    <div class="uk-section">
        <div class="uk-container">
            <h1 class="uk-h1 blog__title1">{{ isset($post['title']) ? $post['title'] : '' }}</h1>
            <div class="uk-grid-match uk-grid" uk-grid="">
                <div class="uk-width-expand uk-first-column">
                    <div class="uk-height-viewport">
                        <div class="blog__boxTime">
                            <span>{{ date('F') }} {{ date('d') }}, {{ date('Y') }}</span>
                            <span>admin</span>
                        </div>
                        <article class="uk-article uk-margin-medium blog__article">
                            {!! isset($post['content']) ? $post['content'] : '' !!}
                        </article>
                    </div>
                </div>
                <div class="uk-width-1-3@m">
                    <div>
                        <aside>
                            <h3 class="uk-h3 sidebar__title">Recent Articles</h3>

                        </aside>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

