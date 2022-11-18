@extends('site.layout.site')

@section('title', ($languageCurrent =='vn') ? 'Đăng ký' : 'Register')
@section('meta_description', isset($information['meta_description']) ? $information['meta_description'] : '')
@section('keywords', isset($information['meta_keyword']) ? $information['meta_keyword'] : '')

@section('content')
    <main role="main" id="MainContent" class="main-content">
        <section id="Login" class="account--login account">
            <section class="col">
                <div class="customer-register">
                    <h2 class="theme">Create Account</h2>
                    <p>Already have an account? <span class="text-link"><a href="{{ route('login-site', ['lang' => $languageCurrent]) }}">Sign in here</a></span>.</p>
                    <form method="post" action="/{{ $languageCurrent }}/dang-ky" id="create_customer" accept-charset="UTF-8"><input type="hidden" name="form_type" value="create_customer"><input type="hidden" name="utf8" value="✓">
                        <div class="form-field">
                            {{ csrf_field() }}

                        </div>
                        <div class="form-field">
                            <label for="first_name">Name</label>
                            <input type="text" value="" name="name" id="first_name" class="large" size="30" placeholder="Name">
                        </div>
                        <div class="form-field">
                            <label for="last_name">Contact Number</label>
                            <input type="text" value="" name="phone" id="phone" class="large" placeholder="Contact Number">
                        </div>
                        <div class="form-field">
                            <label for="email">Email</label>
                            <input type="email" value="" name="email" id="email" class="large" placeholder="Email">
                        </div>
                        <div class="form-field">
                            <label for="password">Password</label>
                            <input type="password" value="" name="password" id="password" class="large password" placeholder="Password">
                        </div>
                        <div class="form-field action-bottom">
                            <button class="button_submit uk-button uk-button-large uk-button-secondary" type="submit">Create</button>
                        </div>
                    </form>
                </div>
            </section>
        </section>
    </main>

@endsection
