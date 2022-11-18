@extends('site.layout.site')

@section('title', isset($information['meta_title']) ? $information['meta_title'] : '')
@section('meta_description', isset($information['meta_description']) ? $information['meta_description'] : '')
@section('keywords', isset($information['meta_keyword']) ? $information['meta_keyword'] : '')

@section('content')
    <script type="text/javascript" src="{{ asset('site/js/modernizr.custom.js') }}"></script>
    <script type="text/javascript" src="{{ asset('site/js/jquery.cslider.js') }}"></script>

    @include('site.module.slide')
    @include('site.module.title_book')

    <section class="Orderdattiec">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>{{ $languageSetup['nhap-thong-tin-dat-ban'] }}</h1>
                    <div class="border"></div>
                </div>
            </div>
            <div class="row">
                <form action="{{ route('sub_book', [ 'languageCurrent' => $languageCurrent]) }}" method="post" class="form-horizontal">
                    {!! csrf_field() !!}
                    <div class="col-md-4">
                        <input type="text" name="name" placeholder="{{ $languageSetup['ho-va-ten'] }}" required/>
                    </div>
                    <div class="col-md-4">
                        <input type="text" name="address" placeholder="{{ $languageSetup['noi-lam-viec-va-dia-chi-ca-nhan'] }}" required/>
                    </div>
                    <div class="col-md-4">
                        <input type="number" name="number" placeholder="{{ $languageSetup['so-luong-nguoi'] }}" required />
                    </div>
                    <div class="col-md-4">
                        <input type="email" name="email" placeholder="EMAIL*" required />
                    </div>
                    <div class="col-md-4">
                        <input type="text" class="form-control" name="time" id="datepicker"  placeholder="{{ $languageSetup['thoi-gian-tiec'] }}" required />
                    </div>
                    <div class="col-md-4">
                        <input type="number" name="prepay" placeholder="{{ $languageSetup['dat-coc'] }}"  required />
                    </div>
                    <div class="col-md-4">
                        <input type="number" name="phone" placeholder="{{ $languageSetup['di-dong'] }}"  required />
                    </div>
                    <div class="col-md-4">
                        <div class="typeradio">
                            @foreach (\App\Entity\SubPost::showSubPost('quan-li-dia-diem', 30) as $id => $markTrade)
                            <input type="radio" name="restaurant" value="{{ $markTrade['dia-diem-nha-hang'] }};, {{ $markTrade['email-dia-diem'] }}" {{ ($id ==0) ? 'checked' : '' }}> {{ $markTrade['dia-diem-nha-hang'] }}<br>
                            @endforeach
                        </div>
                    </div>
                    <div class="col-md-12">
                        <textarea rows="10" name="message" placeholder="{{ $languageSetup['noi-dung-gui-den-chung-toi'] }}"></textarea>
                    </div>
                    <div class="col-md-12">
                        <button type="submit">{{ $languageSetup['gui-di'] }}</button>
                        <span>* {{ $languageSetup['la-thong-tin-bat-buoc'] }}</span>

                    </div>
                </form>
            </div>
        </div>
    </section>
@endsection



