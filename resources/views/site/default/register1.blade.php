@extends('site.layout.site')

@section('title', ($languageCurrent =='vn') ? 'Đăng ký' : 'Register')
@section('meta_description', isset($information['meta_description']) ? $information['meta_description'] : '')
@section('keywords', isset($information['meta_keyword']) ? $information['meta_keyword'] : '')

@section('content')
    @include('site.module.slide')
    @include('site.module.title_book')
    <style>
        ::placeholder {
            color: #ECD2A7;
        }

        :-ms-input-placeholder { /* Internet Explorer 10-11 */
            color: #ECD2A7;
        }

        ::-ms-input-placeholder { /* Microsoft Edge */
            color: #ECD2A7;
        }
    </style>
    <section class="Login-rs">
        <div class="container">
            <div class="row">

                <div class="col-md-6 lgleft">
                    <div class="row">
                        <div class="col-md-10">
                            <h3 class="title">
                                {{ $languageSetup['dang-nhap'] }}
                            </h3>
                            <form action="/{{ $languageCurrent }}/dang-nhap" class="submitDelete" method="post" accept-charset="utf-8">
                                {!! csrf_field() !!}
                                <input type="email" name="email" placeholder="Email" class="bgLogin bgrs" required>
                                <input type="password" name="password" placeholder=" {{ $languageSetup['nhap-mat-khau'] }}" class="bgLogin bgrs" required>
                                <button type="submit" class="bgLogin">{{ $languageSetup['dang-nhap'] }}</button>
                            </form>
                            @if ($errors->has('password'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('password') }}</strong>
                                 </span>
                            @endif
                            @if ($errors->has('email'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('email') }}</strong>
                                 </span>
                            @endif
                            <p class="des">
                                {{ $languageSetup['chinh-sach-dang-nhap'] }}
                            </p>
                            <a type="" class="bgLogin button"> {{ $languageSetup['ho-tro-truc-tuyen'] }}</a>
                            <div class="contact">
                                {{ $languageSetup['hay-lien-lac-den-chung-toi-de-duoc-phuc-vu-tot-hon-ve-cac-dich-vu-ma-chung-toi-dang-co'] }}* </br>
                                @foreach (\App\Entity\SubPost::showSubPost('quan-li-dia-diem', 2) as $id =>  $address)
                                <p>{{ ($id+1) }}. {{ $address->title }}</p>
                                <p>
                                     Hotline: {!! isset($address['dien-thoai-ho-tro']) ? $address['dien-thoai-ho-tro'] : '' !!}
                                </p>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 lgright">
                    <h3 class="title">
                        {{ $languageSetup['tao-tai-khoan-cua-ban'] }}
                    </h3>
                    <form action="/{{ $languageCurrent }}/dang-ky" method="post" accept-charset="utf-8" class="bgLogin">
                        {{ csrf_field() }}
                        <div class="form-group">
                            <label class="control-label lbName" for="inputSuccess1">{{ $languageSetup['ho-va-ten'] }}</label>
                            <input type="text" class="form-control bgrs" name="name" id="inputSuccess1" aria-describedby="helpBlock2" placeholder="{{ $languageSetup['ho-va-ten'] }}"  required />
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="inputSuccess1">Email</label>
                            <input type="email" name="email" class="form-control bgrs" id="inputSuccess1" aria-describedby="helpBlock2" placeholder="Email" required/>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="inputSuccess1">{{ $languageSetup['nhap-mat-khau'] }}</label>
                            <input type="password" name="password" class="form-control bgrs" id="inputSuccess1" aria-describedby="helpBlock2" required />
                        </div>
                        <div class="form-group">
                            <label for="password-confirm" class="control-label">{{ $languageSetup['nhap-lai-mat-khau'] }} <span class="red">(*)</span></label>
                            <input id="password-confirm" type="password" class="form-control bgrs" name="password_confirmation" aria-describedby="helpBlock2" required>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="inputSuccess1">{{ $languageSetup['di-dong'] }}</label>
                            <input type="number" name="phone" class="form-control bgrs" id="inputSuccess1" aria-describedby="helpBlock2" required />
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="inputSuccess1">{{ $languageSetup['dia-chi'] }}</label>
                            <input type="text" class="form-control bgrs" name="address" id="inputSuccess1" aria-describedby="helpBlock2" required />

                            @if ($errors->has('name'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('name') }}</strong>
                                 </span>
                            @endif
                            @if ($errors->has('email'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('email') }}</strong>
                                 </span>
                            @endif
                            @if ($errors->has('password'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('password') }}</strong>
                                 </span>
                            @endif
                            @if ($errors->has('phone'))
                                <span class="help-block">
                                    <strong>{{ $errors->first('phone') }}</strong>
                                 </span>
                            @endif
                        </div>

                        <button type="submit" class="pull-right bgrs">{{ $languageSetup['tao-tai-khoan-cua-ban'] }}</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
@endsection
