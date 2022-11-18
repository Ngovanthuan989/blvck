<section class="sliderOr">
    <div class="container">
        <div class="row orderPhone">
            <div class="col-md-4 col-sm-4 col-xs-12 Orleft ">
                {{ $languageSetup['dat-ban-ngay'] }}
                <br>
                <span>{{ isset($information['dien-thoai-dat-tiec']) ? $information['dien-thoai-dat-tiec'] : '' }}</span>
            </div>
            <div class="col-md-8 col-sm-8 col-xs-12 Orright ">
                <a href="">
                    {{ $languageSetup['ban-muon-dat-tiec'] }}
                </a>
                <p>
                    {{ $languageSetup['mo-ta-dat-ban-ngay'] }}
                </p>
            </div>
        </div>
    </div>
</section>