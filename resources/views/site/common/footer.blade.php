<footer id="footer" class="footer">
    <div class="uk-container uk-container-expand">
        <div class="footer__item-75-25 uk-text-center">
            <img src="images/logo_grey_MEDIUM_db13ddee-d6fd-410a-8f17-39f9c1b31714_85x.png.webp" alt="">
        </div>
        <div class="footer__item-75-25">
            <div class="uk-grid uk-child-width-1-4@m uk-visible@m" uk-grid>
                <div>
                    <h4 class="uk-h4 footer__title uk-margin-remove">COLLECTIONS</h4>
                    <ul class="uk-nav uk-nav-default footer__navList">
                    @foreach (\App\Entity\Menu::showWithLocation('menu-chinh') as $menu)
                        @foreach (\App\Entity\MenuElement::showMenuPageArray($menu->slug) as $id => $menuElement)
                            <li>
                                <a href="{{ $menuElement['url'] }}">{{ $menuElement['title_show'] }}</a>
                            </li>
                        @endforeach
                    @endforeach
                    </ul>
                </div>
                <div>
                    <h4 class="uk-h4 footer__title uk-margin-remove">INFORMATION</h4>
                    <ul class="uk-nav uk-nav-default footer__navList">
                        @foreach (\App\Entity\Menu::showWithLocation('category-home-center') as $menu)
                            @foreach (\App\Entity\MenuElement::showMenuPageArray($menu->slug) as $id => $menuElement)
                                <li>
                                    <a href="{{ $menuElement['url'] }}">{{ $menuElement['title_show'] }}</a>
                                </li>
                            @endforeach
                        @endforeach
                    </ul>
                </div>
                <div>
                    <h4 class="uk-h4 footer__title uk-margin-remove">MORE</h4>
                    <ul class="uk-nav uk-nav-default footer__navList">
                        @foreach (\App\Entity\Menu::showWithLocation('category-home-right') as $menu)
                            @foreach (\App\Entity\MenuElement::showMenuPageArray($menu->slug) as $id => $menuElement)
                                <li>
                                    <a href="{{ $menuElement['url'] }}">{{ $menuElement['title_show'] }}</a>
                                </li>
                            @endforeach
                        @endforeach
                    </ul>
                </div>
                <div>
                    <h4 class="uk-h4 footer__title uk-margin-remove">SOCIAL</h4>
                    <div class="footer__label uk-margin-small-bottom">Stay connected.</div>
                    @foreach(\App\Entity\SubPost::showSubPost('mang-xa-hoi', 6) as $id => $item)
                        <a href="{{ isset($item['link']) ? $item['link'] : '' }}" class="uk-icon-link uk-margin-small-right"
                           uk-icon="{{ isset($item['description']) ? $item['description'] : '' }}" uk-tooltip="{{ isset($item['title']) ? $item['title'] : '' }}"></a>
                    @endforeach
                </div>
            </div>
            <ul class="footer__accordion uk-hidden@m" uk-accordion="multiple: true">
                <li>
                    <a class="uk-accordion-title" href="#">COLLECTIONS</a>
                    <div class="uk-accordion-content">
                        <ul class="uk-nav uk-nav-default footer__navList">
                            @foreach (\App\Entity\Menu::showWithLocation('menu-chinh') as $menu)
                                @foreach (\App\Entity\MenuElement::showMenuPageArray($menu->slug) as $id => $menuElement)
                                    <li>
                                        <a href="{{ $menuElement['url'] }}">{{ $menuElement['title_show'] }}</a>
                                    </li>
                                @endforeach
                            @endforeach
                        </ul>
                    </div>
                </li>
                <li>
                    <a class="uk-accordion-title" href="#">INFORMATION</a>
                    <div class="uk-accordion-content">
                        <ul class="uk-nav uk-nav-default footer__navList">
                            @foreach (\App\Entity\Menu::showWithLocation('category-home-center') as $menu)
                                @foreach (\App\Entity\MenuElement::showMenuPageArray($menu->slug) as $id => $menuElement)
                                    <li>
                                        <a href="{{ $menuElement['url'] }}">{{ $menuElement['title_show'] }}</a>
                                    </li>
                                @endforeach
                            @endforeach
                        </ul>
                    </div>
                </li>
                <li>
                    <a class="uk-accordion-title" href="#">MORE</a>
                    <div class="uk-accordion-content">
                        <ul class="uk-nav uk-nav-default footer__navList">
                            @foreach (\App\Entity\Menu::showWithLocation('category-home-right') as $menu)
                                @foreach (\App\Entity\MenuElement::showMenuPageArray($menu->slug) as $id => $menuElement)
                                    <li>
                                        <a href="{{ $menuElement['url'] }}">{{ $menuElement['title_show'] }}</a>
                                    </li>
                                @endforeach
                            @endforeach
                        </ul>
                    </div>
                </li>
                <li class="uk-open">
                    <a class="uk-accordion-title" href="#">SOCIAL</a>
                    <div class="uk-accordion-content">
                        <h4 class="uk-h4 footer__title uk-margin-remove">SOCIAL</h4>
                        <div class="footer__label uk-margin-small-bottom">Stay connected.</div>
                        @foreach(\App\Entity\SubPost::showSubPost('mang-xa-hoi', 6) as $id => $item)
                            <a href="{{ isset($item['link']) ? $item['link'] : '' }}" class="uk-icon-link uk-margin-small-right"
                               uk-icon="{{ isset($item['description']) ? $item['description'] : '' }}" uk-tooltip="{{ isset($item['title']) ? $item['title'] : '' }}"></a>
                        @endforeach
                    </div>
                </li>
            </ul>
        </div>
        <div class="footer__item-100-20 uk-text-center uk-text-left@m">
            <div uk-form-custom="target: > * > span:first-child">
                <select onchange="return changeLanguage(this);" aria-label="Custom controls">
                    @foreach ($languages as $id => $language)
                        <option value="{{ $language->acronym }}" {{ $languageCurrent == $language->acronym ? "selected" : "" }} > {{ $language->language }}</option>
                    @endforeach
                </select>
                <button class="footer__moneySelect uk-button uk-button-default" type="button" tabindex="-1">
                    <span></span>
                    <span uk-icon="icon: chevron-down"></span>
                </button>
            </div>
            <form id="changeLanguage" action="{{ route('change_language') }}" method="post" style="display: inline-block;">
                {!! csrf_field() !!}
                <input type="hidden" value="{{ $nameRoute }}" name="name_route" />
                <input type="hidden" value="{{ $mainId }}" name="main_id" />
                <input type="hidden" value="{{ $arrayRoute }}" name="array_route" />
                <input type="hidden" value="{{ $languageCurrent }}" name="language" id="language" />
            </form>
            <script>
                function changeLanguage(e) {
                    $('#language').val(e.value);
                    $('#changeLanguage').submit();
                }
            </script>

        </div>
        <input type="hidden" name="locale_code" value="en">
    </div>
</footer>