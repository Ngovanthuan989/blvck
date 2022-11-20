<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="REFRESH" content="1800"/>
    <title>
        @yield('title')
    </title>
    <meta name="keywords" content="@yield('keywords')" />
    <meta name="description" content="@yield('meta_description')" />

    <meta property="og:url"                content="@yield('meta_url')" />
    <meta property="og:type"               content="Website" />
    <meta property="og:title"              content="@yield('title')" />
    <meta property="og:description"        content="@yield('meta_description')" />
    <meta property="og:image"              content="@yield('meta_image')" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
    <!--CSS-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.15.12/dist/css/uikit.min.css"/>
    <link rel="stylesheet" href="{{ asset('site/style.css?v='. time())}}">
    <link rel="stylesheet" href="{{ asset('site/style_customize.css?v='. time())}}">
    <link rel="stylesheet" href="{{ asset('site/scss/pages/_blog.scss?v='. time())}}">
    <!--JS-->
    <script src="https://cdn.jsdelivr.net/npm/@shinsenter/defer.js/dist/defer_plus.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/uikit@3.15.12/dist/js/uikit.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/uikit@3.15.12/dist/js/uikit-icons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>

    <script src="{{ asset('site/js/app.js?v='.time()) }}"></script>
</head>

<body class="<?= (isset($bodyClass)) ? $bodyClass : '' ?>">
@include('site.common.cart')

@include('site.common.menu_mobile')
<!--app-->
<div id="app" class="uk-height-viewport uk-offcanvas-content uk-overflow-hidden uk-position-relative">
    @include('site.common.header')
    <div class="uk-overlay uk-overlay-primary" style="padding: 0">
        @yield('content')
    </div>
    @include('site.common.footer')
</div>
<!--/app-->
<script>
    const x = document.querySelector.bind(document);
    const xx = document.querySelectorAll.bind(document);

    const app = {
        render: function () {
            const uk_navbar_dropdown = x('.uk-navbar-dropdown');
            const header = x('.header');
            const btnClose_Search = x('.btnClose_Search');
            const html = x('html');
            const body = x('body');
            const cart__offcanvas = x('.cart__offcanvas');
            const header__top = x('.header__top');
            const headerTransparent = x('.headerTransparent');
            const mask_menu = x('.mask_menu');

            if (headerTransparent) {

            }

            // Cart
            if (cart__offcanvas) {
                // UIkit.offcanvas(cart__offcanvas).show();
            }
            // End Cart

            // Xử lý lỗi sticky
            document.onscroll = function () {
                let scrollTop = window.scrollY || document.documentElement.scrollTop;

                if (scrollTop > 0) {
                    header.classList.add('uk-active');
                } else {
                    header.classList.remove('uk-active');
                }
            }
            // End Xử lý lỗi sticky

            if (uk_navbar_dropdown) {
                UIkit.util.on('.uk-navbar-dropdown', 'show', function () {
                    // do something
                    uk_navbar_dropdown.style.maxWidth = header.offsetWidth + 'px';
                    uk_navbar_dropdown.style.width = header.offsetWidth + 'px';
                    uk_navbar_dropdown.style.left = 0;
                    header.classList.add('hoverMenu');
                });

                UIkit.util.on('.uk-navbar-dropdown', 'hide', function () {
                    // do something
                    header.classList.remove('hoverMenu');
                });
            }

            // Xử lý khi click button search
            UIkit.util.on('.header__top__boxSearch', 'show', function () {
                console.log('Show activeSearch');
                header.classList.add('activeSearch');
                html.style.overflowY = 'hidden';
                html.style.touchAction = 'none';
                html.style.paddingRight = 0;
                body.style.touchAction = 'pan-y pinch-zoom';
                const uk_sticky_placeholder = x('.uk-sticky-placeholder');
                if (uk_sticky_placeholder) {
                    uk_sticky_placeholder.style.height = header__top.offsetHeight + 'px';
                    console.log('uk_sticky_placeholder', header__top.offsetHeight);
                }
            });
            if (btnClose_Search) {
                btnClose_Search.addEventListener('click', () => {
                    console.log('Hide activeSearch');
                    header.classList.remove('activeSearch');
                    html.style.removeProperty('overflow-y');
                    html.style.removeProperty('touch-action');
                    html.style.removeProperty('padding-right');
                    body.style.removeProperty('touch-action');
                    const uk_sticky_placeholder = x('.uk-sticky-placeholder');
                    uk_sticky_placeholder.style.height = header.offsetHeight + 'px';
                    console.log('uk_sticky_placeholder', header.offsetHeight);
                })
            }
            // .End Xử lý khi click button search
        },
        start: function () {
            this.render();
        }
    }

    window.addEventListener("load", () => {
        console.log("page is fully loaded");
        app.start();
    })


    $(window).on("load", function (e) {
        UIkit.util.on('.header__top__boxSearch,.uk-navbar-dropdown', 'show', function () {
            // do something
            $('.mask_menu').fadeIn(300);
        });

        $('.btnClose_Search').on('click', () => {
            $('.mask_menu').stop(true, true).fadeOut(300);
        })

        UIkit.util.on('.uk-navbar-dropdown', 'hide', function () {
            // do something
            $('.mask_menu').stop(true, true).fadeOut(300);
        });
    });
</script>


<script type="text/javascript">
    function subcribeEmailSubmit(e) {
        var email = $(e).find('.emailSubmit').val();
        var token =  $(e).find('input[name=_token]').val();

        $.ajax({
            type: "POST",
            url: '{{ route('subcribe_email', ['languageCurrent' => $languageCurrent]) }}',
            data: {
                email: email,
                _token: token
            },
            success: function(data) {
                var obj = jQuery.parseJSON(data);

                alert(obj.message);
            }
        });
        return false;
    }

    function addToOrder(e) {
        var data = $(e).parent().serialize();

        $.ajax({
            type: "POST",
                url: '{{ route('addToCart', ['languageCurrent' => $languageCurrent]) }}',
            data: data,
            success: function(result){
                // var obj = jQuery.parseJSON( result);
                //
                // var num = +$("#countOrder").text() + 1;
                //
                // $("#countOrder").text(num);
                //
                // $('#cart-notification').addClass('active');
                // $('.cart-notification-product__image img').attr('src', obj.orderItems[0].image);
                // $('.cart-notification-product__name').text(obj.orderItems[0].title);
                // $('.cart-notification-product__name').text(obj.orderItems[0].title);
                // $('.cart-notification-product__size').text(obj.size);
                alert('Đặt hàng thành công');
            },
            error: function(error) {
                alert('Lỗi đặt hàng');
            }

        });

        return false;
    }
    function contact(e) {
        var $btn = $(e).find('button').text('Đang tải ...');
        var data = $(e).serialize();

        $.ajax({
            type: "POST",
            url: '{{ route('sub_contact', ['languageCurrent' => $languageCurrent]) }} ',
            data: data,
            success: function(result){s
                var obj = jQuery.parseJSON( result);
                // gửi thành công
                if (obj.status == 200) {
                    alert(obj.message);
                    $btn.text('Đăng ký ngay');

                    return;
                }

                // gửi thất bại
                if (obj.status == 500) {
                    alert(obj.message);
                    $btn.text('Đăng ký ngay');

                    return;
                }
            },
            error: function(error) {
                //alert('Lỗi gì đó đã xảy ra!')
            }
        });
        return false;
    }
</script>
</body>
</html>