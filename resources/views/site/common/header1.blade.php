
<div id="baner">
    <div class="content">
        <div id="lang">
            <style type="text/css">
                #changeLanguage  button.Vietnamese
                {
                    width: 32px;
                    height: 21px;
                    background: url('/site/images/vi.png');
                    border: none;
                    display: inline-block;
                    margin-right: 3px;
                }
                #changeLanguage  button.English
                {
                    width: 32px;
                    height: 21px;
                    background: url('/site/images/en.png');
                    border: none;
                    display: inline-block;
                }
            </style>
            <!--  <a  title="Tiếng Việt" href="index.php?com=ngonngu&lang=vi"><img src="images/vi.png" alt="Tiếng Việt"></a>
             <a  title="English" href="index.php?com=ngonngu&lang=en"><img src="images/en.png" alt="English"></a>  -->
            @foreach ($languages as $language)
                <form action="{{ route('change_language') }}" method="post" id="changeLanguage" style="display: inline-block;">
                    {!! csrf_field() !!}
                    <input type="hidden" value="{{ $nameRoute }}" name="name_route" />
                    <input type="hidden" value="{{ $mainId }}" name="main_id" />
                    <input type="hidden" value="{{ $arrayRoute }}" name="array_route" />
                    <input type="hidden" value="{{ $language->acronym }}" name="language" />
                    <button type="submit" class="{{ $language->language }}"></button>
                </form>
                <!-- <img src="/site/images/vi.png" alt="Tiếng Việt">
                <img src="/site/images/en.png" alt="English"> -->
            @endforeach
        </div>
        <div class="hotline_top"><span>{{ isset($information['hotline']) ?  $information['hotline'] : '' }}</span></div>
        <div class="email_top"><span>{{ isset($information['email']) ?  $information['email'] : '' }}</span></div>
        <div class="search">
            <form method="get" action="{{ route('search', [ 'languageCurrent' => $languageCurrent] ) }}" enctype="multipart/form-data">
                <input name="word" class="txt_key" type="text" placeholder="{{ $languageSetup['tim-kiem'] }}..." />
                <input type="submit" value="" class="btn_search"  title="{{ $languageSetup['tim-kiem'] }}" />
            </form>
        </div>
        <a href="/"><img class="img_banner" src="{{ isset($information['logo-banner']) ?  $information['logo-banner'] : '' }}" boder="0" alt="{{ isset($information['ten-cong-ty']) ?  $information['ten-cong-ty'] : '' }}" /></a>
    </div>
</div>
<!--------------------banner--------------------------->
<div id="smoothmenu1" class="ddsmoothmenu">
    <ul >
        @foreach (\App\Entity\Menu::showWithLocation('menu-chinh') as $menu)
            @foreach (\App\Entity\MenuElement::showMenuPageArray($menu->slug) as $id => $menuElement)
                <li class="hiddenImg">
                    <a  class="c1" href="{{ $menuElement['url'] }}">{{ $menuElement['title_show'] }}</a>
                    @if (!empty($menuElement['children']))
                        <ul>
                            @foreach ($menuElement['children'] as $elementparent)
                                <li >
                                    <a href="{{ $elementparent['url'] }}">{{ $elementparent['title_show'] }}</a>
                                    @if (!empty($elementparent['children']))
                                        <ul>
                                            @foreach ($elementparent['children'] as $elementparent2)
                                                <li ><a href="{{ $elementparent2['url'] }}">{{ $elementparent2['title_show'] }}</a>
                                                </li>
                                            @endforeach

                                        </ul>
                                @endif
                                <!--tintuc cat-->
                                </li>
                            @endforeach
                        </ul>
                @endif
                <!--tintuc cat-->
                </li>
            @endforeach
        @endforeach

        <center>
            <a href="/l">
                <img src="{{ isset($information['logo-banner']) ?  $information['logo-banner'] : '' }}" alt="HOME" title="HOME" class="img_home_m" />
            </a>
        </center>
</div>

<!-------menu---------->
<!--MENU mobile-->
<link rel="stylesheet" type="text/css" href="/site/css-menu-r/component.css" />
<script src="/site/js/modernizr.custom.js"></script>
<script src="/site/js/jquery.dlmenu.js"></script>
<script>
    $(function() {
        $( '#dl-menu' ).dlmenu({
            animationClasses : { classin : 'dl-animate-in-2', classout : 'dl-animate-out-2' }
        });
    });
</script>
<style type="text/css">
    .hiddenImg img
    {
        display: none;
    }
</style>
<div id="dl-menu" class="dl-menuwrapper">
    <button class="dl-trigger">Open Menu</button>
    <ul class="dl-menu">
        @foreach (\App\Entity\Menu::showWithLocation('menu-chinh') as $menu)
            @foreach (\App\Entity\MenuElement::showMenuPageArray($menu->slug) as $id => $menuElement)
                <li class="hiddenImg">
                    <a  class="c1" href="{{ $menuElement['url'] }}">{{ $menuElement['title_show'] }}</a>
                    @if (!empty($menuElement['children']))
                        <ul  class='dl-submenu' >
                            @foreach ($menuElement['children'] as $elementparent)
                                <li>
                                    <a href="{{ $elementparent['url'] }}">{{ $elementparent['title_show'] }}</a>
                                    @if (!empty($elementparent['children']))
                                        <ul  class='dl-submenu' >
                                            @foreach ($elementparent['children'] as $elementparent2)
                                                <li ><a href="{{ $elementparent2['url'] }}">{{ $elementparent2['title_show'] }}</a>
                                                </li>
                                            @endforeach
                                        </ul>
                                @endif
                                <!--tintuc cat-->
                                </li>
                            @endforeach
                        </ul>
                @endif
                <!--tintuc cat-->
                </li>
            @endforeach
        @endforeach
    </ul>
</div>




{{-- <header>
	<nav class="navbar navbar-default">
		<div class="container position">
			<div class="topLang">
					@foreach ($languages as $language)
						<form action="{{ route('change_language') }}" method="post" id="changeLanguage">
							{!! csrf_field() !!}
							<input type="hidden" value="{{ $nameRoute }}" name="name_route" />
							<input type="hidden" value="{{ $mainId }}" name="main_id" />
							<input type="hidden" value="{{ $arrayRoute }}" name="array_route" />
							<input type="hidden" value="{{ $language->acronym }}" name="language" />
                            <button type="submit">{{ $language->language }}</button>
						</form>
					@endforeach
			</div>

			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="Navbutton navbar-toggle collapsed" data-toggle="collapse" data-target="#navMobile" aria-expanded="false">
					<span class="sr-only">Menu</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<div class="logoMobile hiddenPC">
					<a href="/">
						<img src="{{ asset(isset($information['logo']) ? $information['logo'] : '' ) }}" alt="logo" title="logo"/>
					</a>
				</div>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="navMobile">
				<div class="hiddenPC navMenu" id="navClose">
					<span id="hiddenNav" class="pull-left">x</span>
					<a href="/">
						<img src="{{ asset(isset($information['logo']) ? $information['logo'] : '' ) }}" alt="logo" title="logo"/>
					</a>
					<a class="pull-right searchMain">
						<i class="fa fa-search" aria-hidden="true"></i>
					</a>
				</div>
				<div class="hiddenPC">
					<div class="searchMenu">
						<form id="searchbox" method="get" action="{{ route('search', [ 'languageCurrent' => $languageCurrent] ) }}">
							<div class="search-input">
								<input class="search_query form-control ac_input" type="text" value="{{ isset($_GET['word']) ? $_GET['word'] : '' }}" id="search_query_top" name="word" placeholder="{{ $languageSetup['tim-kiem'] }} ...">
								<button type="submit" class="btn btn-default button-search"> <span>{{ $languageSetup['tim-kiem'] }}</span> </button>
							</div>
						</form>
					</div>
				</div>
				<ul class="nav navbar-nav navigation">
					@foreach (\App\Entity\Menu::showWithLocation('menu-top-1') as $menu)
						@foreach (\App\Entity\MenuElement::showMenuPageArray($menu->slug) as $id => $menuElement)
							@if (!empty($menuElement['children']))
							<li class="t-menu dropdown">
								<a href="{{ $menuElement['url'] }}" class="dropdown-toggle hvr-overline-from-center"  aria-haspopup="true" aria-expanded="false">{{ $menuElement['title_show'] }}</a>

								<ul class="dropdown-menu">
									@foreach ($menuElement['children'] as $child)
									<li><a href="{{ $child['url'] }}">{{ $child['title_show'] }}</a></li>
									@endforeach
								</ul>
							</li>
							@else
								<li class="t-menu">
									<a href="{{ $menuElement['url'] }}" class="hvr-overline-from-center">{{ $menuElement['title_show'] }}</a>
								</li>
							@endif
						@endforeach
					@endforeach
					<li class="hiddenTab">
						<a class="logoMid" href="/"><img src="{{ asset(isset($information['logo']) ? $information['logo'] : '' ) }}"/></a>
					</li>
					@foreach (\App\Entity\Menu::showWithLocation('menu-top-2') as $menu)
						@foreach (\App\Entity\MenuElement::showMenuElement($menu->slug) as $id => $menuElement)
							<li class="t-menu"><a href="{{ $menuElement->url }}" class="hvr-overline-from-center">{{ $menuElement->title_show }}</a></li>
						@endforeach
					@endforeach
						@if(\Illuminate\Support\Facades\Auth::check())
							<li class="t-menu"><a class="login-rs" href="/{{ $languageCurrent }}/dang-xuat">Thoát</a></li>
						@else
							<li class="t-menu"><a class="login-rs" href="/{{ $languageCurrent }}/dang-ky">Đăng nhập/Đăng kí</a></li>
						@endif

				</ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>
</header>
--}}