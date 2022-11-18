<section class="slider">
    <!-- Wrapper for slides -->
    <script type="text/javascript" src="{{ asset('site/js/modernizr.custom.js') }}"></script>
    <script type="text/javascript" src="{{ asset('site/js/jquery.cslider.js') }}"></script>
    <div id="da-slider" class="da-slider">
        @foreach (\App\Entity\SubPost::showSubPost('slide', 10) as $slide)
        <div class="da-slide">
            <div class="da-img">
                <a href="{{ $slide['duong-dan-slide'] }}">
                    <img src="{{ asset($slide->image) }}" alt="{{ $slide->title }}" title="{{ $slide->title }}"/>
                </a>
            </div>
            <div class="daExcept">
                <a href="{{ $slide['duong-dan-slide'] }}">
                    <h2>{{ $slide->title }}</h2>
                </a>
            </div>
        </div>
        @endforeach
        <nav class="da-arrows">
            <span class="da-arrows-prev"></span>
            <span class="da-arrows-next"></span>
        </nav>
    </div>
    <script type="text/javascript">
        $('#da-slider').cslider({
            autoplay: true
        });
    </script>
</section>