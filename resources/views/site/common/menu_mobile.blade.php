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

                            </a>
                            <i class="fa fa-chevron-right"></i>

                            <ul class="nav__sub">
                                <li class="nav__item sliderow__title">
                                    <a class="nav__link sub__close" href="#"><i class="fa fa-chevron-left"></i>
                                        {{ $menuElement['title_show'] }}
                                    </a>
                                </li>
                                @foreach ($menuElement['children'] as $elementparent)
                                    <li class="nav__item sliderow__title">
                                        <a class="nav__link"
                                           href="{{ $elementparent['url'] }}">{{ $elementparent['title_show'] }}
                                            <i class="fa fa-chevron-right"></i>
                                        </a>
                                        <ul class="nav__sub">
                                            <li class="nav__item sliderow__title">
                                                <a class="nav__link sub__close" href="#"><i
                                                            class="fa fa-chevron-left"></i> {{ $elementparent['title_show'] }}
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