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

<section class="bgOder01 Extra">
    <div class="oder01-item">
		@foreach ($categoryChildrens as $id => $child)
		@if ($id % 2 == 0)
		<div class="container">
			<div class="row borderOder">
		@endif
				<div class="col-md-6 col-sm-12 col-xs-12 item {{ ($id %2 == 0) ? 'pull-left' : 'itemLast pull-right'}} ">
					<div class="itemBorder">
						<div class="cricle hvr-wobble-vertical">
							<a href="{{ route('category_product', ['languageCurrent' => $languageCurrent, 'cate_slug' => $child->slug ]) }}">
								<h3 class="titleVn">{{ $child->title }}</h3>
								<div class="titleEn">
									{{ isset($child['otherLanguage']->title) ? $child['otherLanguage']->title : '' }}
								</div>

							</a>
						</div>
						<div class="grid-box">
							<a href="{{ route('category_product', ['languageCurrent' => $languageCurrent, 'cate_slug' => $child->slug ]) }}">
								<img src="{{ asset($child->image) }}" class="tab-img" title="{{ $child->title }}" alt="{{ $child->title }}">
							</a>
						</div>
					</div>
				</div>
			
		@if ($id % 2 == 1)
			</div>
		</div>
			<div class="col-md-12 borderCate">
			</div>
		@endif
		@endforeach
        @if ($countCategoryChildrens % 2 == 0 &&  $countCategoryChildrens < 8 )
			</div>
		</div>
		@endif	    
			
    </div>

</section>
@endsection

