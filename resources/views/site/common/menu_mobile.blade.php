<div id="offcanvas-overlay-menu" uk-offcanvas="overlay: true">
    <div class="uk-offcanvas-bar">
        <button class="uk-offcanvas-close" type="button" uk-close></button>
        <ul class="nav">
            @foreach (\App\Entity\Menu::showWithLocation('menu-chinh') as $menu)
                @foreach (\App\Entity\MenuElement::showMenuPageArray($menu->slug) as $id => $menuElement)
                    <li class="nav__item sliderow__title">
                        @if (!empty($menuElement['children']))
                            <a class="nav__link" href="{{ $menuElement['url'] }}">
                                {{ $menuElement['title_show'] }}
                                <i class="fa fa-angle-right"></i>
                            </a>

                            <ul class="nav__sub">
                                <li class="nav__item sliderow__title">
                                    <a class="nav__link sub__close" href="#"><i class="fa fa-angle-left"></i>
                                        {{ $menuElement['title_show'] }}
                                    </a>
                                </li>
                                @foreach ($menuElement['children'] as $elementparent)
                                    <li class="nav__item sliderow__title">
                                        <a class="nav__link"
                                           href="{{ $elementparent['url'] }}">{{ $elementparent['title_show'] }}
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                        <ul class="nav__sub nav__sub__child">
                                            <li class="nav__item sliderow__title">
                                                <a class="nav__link sub__close" href="#"><i class="fa fa-angle-left"></i>
                                                    {{ $elementparent['title_show'] }}
                                                </a>
                                            </li>
                                            @if (!empty($elementparent['children']))
                                                @foreach ($elementparent['children'] as $elementparent2)
                                                    <li class="nav__item sliderow__title">
                                                        <a class="nav__link"
                                                           href="{{ $elementparent2['url'] }}">{{ $elementparent2['title_show'] }}</a>
                                                    </li>
                                                @endforeach
                                            @endif
                                        </ul>
                                    </li>
                                @endforeach
                                <li style="width: 80%">
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
                                </li>
                            </ul>

                        @else
                            <a class="nav__link" href="{{ $menuElement['url'] }}">{{ $menuElement['title_show'] }}</a>
                        @endif
                    </li>
                @endforeach
            @endforeach

            <li class="nav__item sliderow__title">
                <hr>
            </li>
            @foreach (\App\Entity\Menu::showWithLocation('category-home-center') as $menu)
                @foreach (\App\Entity\MenuElement::showMenuPageArray($menu->slug) as $id => $menuElement)
                    <li class="nav__item sliderow__title nav-bottom">
                        <a class="nav__link" href="{{ $menuElement['url'] }}">{{ $menuElement['title_show'] }}</a>
                    </li>
                @endforeach
            @endforeach

        </ul>
        <div class="fix__botom">
            <div class="uk-navbar-item">
            @foreach(\App\Entity\SubPost::showSubPost('mang-xa-hoi', 6) as $id => $item)
                <a href="{{ isset($item['link']) ? $item['link'] : '' }}" class="uk-icon-link uk-margin-small-right"
                   uk-icon="{{ isset($item['description']) ? $item['description'] : '' }}" uk-tooltip="{{ isset($item['title']) ? $item['title'] : '' }}"></a>
            @endforeach

        </div>
        </div>

    </div>
</div>

<script>

    // Close out sub menu
    $('.sub__close').click(function (e) {
        e.preventDefault();

        $(this).parent().parent().removeClass('is-active');
    });

    // Trigger sub menu
    $('.nav__link').click(function (e) {
        e.preventDefault();

        $(this).siblings().addClass('is-active');
    });
</script>
<!--/Menu-mobile-->