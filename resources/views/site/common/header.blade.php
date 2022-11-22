<header id="header" class="header <?= (isset($headerTransparent) && $headerTransparent)? 'headerTransparent': 'notTransparent' ?>" uk-sticky="end: !#app; position: top;">
    <div class="header__top">
        <div class="uk-container uk-container-expand">
            <nav class="uk-navbar uk-navbar-container uk-navbar-transparent" uk-navbar>
                <div class="nav-overlay uk-navbar-left uk-light">
                    <div class="uk-navbar-item uk-visible@m">
                        @foreach(\App\Entity\SubPost::showSubPost('mang-xa-hoi', 6) as $id => $item)
                            <a href="{{ isset($item['link']) ? $item['link'] : '' }}" class="uk-icon-link uk-margin-small-right"
                               uk-icon="{{ isset($item['description']) ? $item['description'] : '' }}" uk-tooltip="{{ isset($item['title']) ? $item['title'] : '' }}"></a>
                        @endforeach

                    </div>
                    <a class="uk-navbar-toggle uk-hidden@m" uk-navbar-toggle-icon href="#offcanvas-overlay-menu" uk-toggle=""></a>
                    <a class="uk-navbar-toggle uk-hidden@m" uk-search-icon uk-toggle="target: .nav-overlay; animation: uk-animation-fade" href="#"></a>
                </div>
                <div class="nav-overlay uk-navbar-center">
                    <a href="/" class="uk-navbar-item uk-logo">
                        <img src="{{ isset($information['logo']) ? $information['logo'] : '' }}" alt="">
                    </a>
                </div>
                <div class="nav-overlay uk-navbar-right uk-light">
                    <a class="uk-navbar-toggle" uk-icon="icon: user" href="{{ route('login-site', ['lang' => $languageCurrent]) }}"></a>
                    <a class="uk-navbar-toggle uk-visible@m" uk-search-icon uk-toggle="target: .nav-overlay; animation: uk-animation-fade" href="#"></a>
                    <div class="uk-navbar-item">
                        <a class="uk-position-relative" uk-icon="icon: cart" href="#offcanvas-flip-cart" uk-toggle="">
                            <?php $countOrder = \App\Entity\Order::countOrder();?>
                            @if($countOrder > 0)
                                <span class="uk-badge uk-position-top-right">{{ $countOrder }}</span>
                            @else
                                <span class="uk-badge uk-position-top-right">0</span>
                            @endif
                        </a>
                    </div>
                </div>
                <div class="header__top__boxSearch nav-overlay uk-navbar-left uk-flex-1" hidden>
                    <div class="uk-navbar-item uk-width-expand">
                        <form class="uk-search uk-search-navbar uk-width-1-1" method="GET" action="{{ route('search', [ 'languageCurrent' => $languageCurrent] ) }}">
                            <input class="header__top__boxSearch__input uk-search-input" type="search" name="word"
                                   placeholder="Search" aria-label="Search" autofocus>
                        </form>
                    </div>
                    <a class="uk-navbar-toggle btnClose_Search" uk-close uk-toggle="target: .nav-overlay; animation: uk-animation-fade" href="#"></a>
                </div>
            </nav>
        </div>
    </div>
    <nav class="header__bottom uk-visible@m uk-flex-center uk-navbar uk-navbar-container uk-navbar-transparent" uk-navbar>
        <div class="uk-navbar-left uk-light">
            <ul class="uk-navbar-nav">
            @foreach (\App\Entity\Menu::showWithLocation('menu-chinh') as $menu)
                    @foreach (\App\Entity\MenuElement::showMenuPageArray($menu->slug) as $id => $menuElement)
                        <li>
                            <a href="{{ $menuElement['url'] }}">{{ $menuElement['title_show'] }}</a>
                            @if (!empty($menuElement['children']))
                                <div class="uk-navbar-dropdown uk-padding-remove" uk-drop="boundary: !.uk-navbar; stretch: x; flip: false; offset: 0; auto-update: false;">
                                    <div class="uk-child-width-1-3 uk-grid-collapse uk-grid-match" uk-grid>
                                        <div>
                                            <div class="uk-card uk-card-body">
                                                <div class="uk-child-width-1-2" uk-grid>
                                                    @foreach ($menuElement['children'] as $elementparent)
                                                    <div>
                                                        <ul class="uk-nav uk-navbar-dropdown-nav">

                                                            <li class="title">
                                                                <a href="{{ $elementparent['url'] }}">{{ $elementparent['title_show'] }}</a>
                                                            </li>
                                                            @if (!empty($elementparent['children']))
                                                                @foreach ($elementparent['children'] as $elementparent2)
                                                                    <li ><a href="{{ $elementparent2['url'] }}">{{ $elementparent2['title_show'] }}</a>
                                                                    </li>
                                                                @endforeach
                                                            @endif
                                                        </ul>
                                                    </div>
                                                    @endforeach

                                                </div>
                                            </div>
                                        </div>
                                        @foreach(\App\Entity\Category::getCategoryProductHasImage('product') as $cate)
                                        <div>
                                            <div class="uk-cover-container header__bottom__cover">
                                                <img src="{{ isset($cate['image']) ? $cate['image'] : '' }}" alt="" uk-cover="">
                                                <canvas width="573" height="459"></canvas>
                                                <div class="header__bottom__box uk-position-cover uk-padding-small uk-flex uk-flex-column uk-flex-center uk-flex-middle">
                                                    <h3 class="uk-h3 header__bottom__box__title">{{ isset($cate['title']) ? $cate['title'] : '' }}</h3>
                                                    <p class="header__bottom__box__desc">Shop Now</p>
                                                </div>
                                                <a href="{{ route('category_product', ['slug' => $cate->slug,  'languageCurrent' => $languageCurrent]) }}" class="uk-position-cover"></a>
                                            </div>
                                        </div>
                                        @endforeach

                                    </div>
                                </div>
                        @endif
                        <!--tintuc cat-->
                        </li>
                    @endforeach
                @endforeach

            </ul>
        </div>
    </nav>

    @include('site.common.menu_mobile')

</header>
