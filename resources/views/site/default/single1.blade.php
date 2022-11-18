@extends('site.layout.site')

@section('title', !empty($post->meta_title) ? $post->meta_title : $post->title)
@section('meta_description',  !empty($post->meta_description) ? $post->meta_description : $post->description)
@section('keywords', $post->meta_keyword )
@section('meta_image', asset($post->image) )
@section('meta_url', route('post', ['cate_slug' => $category->slug, 'post_slug' => $post->slug, 'languageCurrent' => $languageCurrent]) )

@section('content')
<div id="main">
  <div class="tt_col_left">
    <h1 class="title_main1">{{ isset($post['title']) ? $post['title'] : '' }}</h1>        
    <div class="content_main">
      {!! isset($post['content']) ? $post['content'] : '' !!}
    </div>   

  </div>

  <div class="tt_col_right">
    <?php 
		$slugNew = ($languageCurrent == 'vn') ? 'bai-viet-moi' : 'new-posts';
	$catePost = \App\Entity\Category::getDetailCategory($slugNew ); ?>
    <?php 
    $slugPost =  \App\Ultility\Ultility::createSlug($catePost['title']);
    ?>
    <p class="title_main1">{{ $catePost['title'] }}</p>
    <ul>
      @foreach(\App\Entity\Post::categoryShow($slugNew ,8) as $postNew) 
      <li class="box_news2">
       <h2 class="news_title"> <a href="{{ route('post', ['cate_slug' => $slugPost, 'post_slug' => $postNew->slug, 'languageCurrent' => $languageCurrent]) }}">{{ isset($postNew['title']) ? $postNew['title'] : ''  }}</a></h2>
       <div class="news_mota"></div>
     </li>
     @endforeach



   </ul>


   <p class="title_main1">{{ $languageSetup['tin-tuc-lien-quan'] }}</p>
   <ul>
    @foreach (\App\Entity\Post::relativeProduct($post->slug) as $id => $postRelative) 
    <li class="box_news2">
     <h2 class="news_title"> <a href="{{ route('post', ['cate_slug' => $category->slug, 'post_slug' => $postRelative->slug, 'languageCurrent' => $languageCurrent]) }}">{{ isset($postRelative['title']) ? $postRelative['title'] : ''  }}</a></h2>
     <div class="news_mota"></div>
   </li>
   @endforeach



 </ul>

</div>


<div class="clear"></div>
</div><!--MAIN-->

@endsection

