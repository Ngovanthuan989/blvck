@extends('site.layout.site')

@section('title', isset($information['meta_title']) ? $information['meta_title'] : '')
@section('meta_description', isset($information['meta_description']) ? $information['meta_description'] : '')
@section('keywords', isset($information['meta_keyword']) ? $information['meta_keyword'] : '')

@section('content')
    <!-- CONTENT -->
    <main role="main" id="MainContent" class="main-content">
        <section data-account-form="" id="Login" class="account account--login ">
            <section class="col">
                <div id="login-form" data-login-form="" class="animates login">
                    <h2 class="theme">Login</h2>
                    <p>Don't have an account? <span class="text-link"><a
                                    href="/{{ $languageCurrent }}/dang-ky">Sign up here</a>
                        </span>.</p>

                    <form method="post" action="/{{ $languageCurrent }}/dang-nhap" id="customer_login" accept-charset="UTF-8">
                        {{ csrf_field() }}
                        <input
                                type="hidden" name="form_type" value="customer_login">
                        <input type="hidden" name="utf8"value="✓">
                        <div class="form-field">
                        </div>
                        <div class="form-field">
                            <label for="customer_email">Email</label>
                            <input type="email" value="" name="email" id="customer_email" class=""
                                   placeholder="Email" spellcheck="false" autocomplete="off" autocapitalize="off"
                                   autofocus="">
                        </div>

                        <div class="form-field">
                            <label for="customer_password">Password</label>
                            <input type="password" value="" name="password" id="customer_password"
                                   class="password" placeholder="Password">
                            <div class="forgot-password">
                                <button type="button" class="text-link small" data-show-reset="" onclick="return resetPass(this);">
                                    Forgot your password?
                                </button>
                            </div>
                        </div>

                        <div class="form-field action-bottom">
                            <button class="button_submit uk-button uk-button-large uk-button-secondary" type="submit">Sign In</button>
                            &nbsp;
                            <span class="text-link small">
                                <a href="/">Return to Store</a>
                            </span>
                        </div>
                        <input type="hidden" name="return_url" value="/account"></form>
                </div>

                <div id="reset-form" class="animates is-hidden" data-recover-password="">
                    <h2 class="theme">Reset your password</h2>
                    <p>We will send you an email to reset your password.</p>
                    <form method="post" action="/account/recover" accept-charset="UTF-8">
                        <input type="hidden"
                            name="form_type"
                            value="recover_customer_password">
                        <input
                                type="hidden" name="utf8" value="✓">
                        <div class="form-field">
                            <label for="email">Email</label>
                            <input type="email" value="" placeholder="Email" size="30" name="email" id="recover-email" class="large">
                        </div>
                        <div class="form-field action-bottom">
                            <button class="button_submit uk-button uk-button-large uk-button-secondary" type="submit">Submit</button>
                            <span class="note">
                            or
                            <span class="text-link small" onclick="return cancelResetPass(this);">
                            Cancel
                            </span>
                          </span>
                        </div>
                    </form>
                </div>
            </section>
        </section>
        <script>
            function resetPass(){
                $("#reset-form").removeClass('is-hidden');
                $("#login-form").addClass('is-hidden');
            }
            function cancelResetPass(){
                $("#reset-form").addClass('is-hidden');
                $("#login-form").removeClass('is-hidden');
            }
        </script>
    </main>
@endsection