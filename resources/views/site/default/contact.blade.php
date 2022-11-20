@extends('site.layout.site')

@section('title', isset($information['meta_title']) ? $information['meta_title'] : '')
@section('meta_description', isset($information['meta_description']) ? $information['meta_description'] : '')
@section('keywords', isset($information['meta_keyword']) ? $information['meta_keyword'] : '')

@section('content')
    <style>
        .page-title {
            margin-top: 20px;
        }

        .main-page-title {
            margin-bottom: 3rem;
            text-align: center;
        }

        @media screen and (min-width: 750px) {
            .main-page-title {
                margin-bottom: 3rem;
            }
        }

        .page-placeholder-wrapper {
            display: flex;
            justify-content: center;
        }

        .page-placeholder {
            width: 52.5rem;
            height: 52.5rem;
        }

        .contact img {
            max-width: 100%;
        }

        .contact .form__message {
            align-items: flex-start;
        }

        .contact .icon-success {
            margin-top: 0.2rem;
        }

        .contact .field {
            margin-bottom: 1.5rem;
        }

        @media screen and (min-width: 750px) {
            .contact .field {
                margin-bottom: 2rem;
            }
        }

        .contact__button {
            margin-top: 3rem;
        }

        @media screen and (min-width: 750px) {
            .contact__button {
                margin-top: 4rem;
            }
        }

        @media screen and (min-width: 750px) {
            .contact__fields {
                display: grid;
                grid-template-columns: repeat(2, 1fr);
                grid-column-gap: 2rem;
            }
        }

        .grecaptcha-badge {
            visibility: hidden;
        }
        #MainContent{
            min-height: auto;
        }
    </style>
    <main id="MainContent" class="content-for-layout focus-none" role="main" tabindex="-1">
        <section id="shopify-section-template--15590143951027__form" class="shopify-section section">
            <style data-shopify="">.section-template--15590143951027__form-padding {
                    padding-top: 3px;
                    padding-bottom: 27px;
                }

                @media screen and (min-width: 750px) {
                    .section-template--15590143951027__form-padding {
                        padding-top: 4px;
                        padding-bottom: 36px;
                    }
                }</style>
            <div id="contact-form" class="color-background-1 gradient">
                <div class="contact page-width page-width--narrow section-template--15590143951027__form-padding">
                    @if (isset($success) && $success == 1)
                    <h3 class="contact__form__heading" style="text-align: center; color: #0a0a0a">Thank you for keeping in touch with us</h3>
                    @else

                    <h2 class="contact__form__heading">Write us a message.</h2>

                    <form method="post" action="{{ route('sub_contact', [ 'languageCurrent' => $languageCurrent]) }}" id="ContactForm" accept-charset="UTF-8"
                          class="isolate">
                        {!! csrf_field() !!}

                        <div class="fields">
                            <div class="field">
                                <input class="field__input" autocomplete="name" type="text" id="ContactForm-name"
                                       name="name" value="" placeholder="Name">
                            </div>
                        </div>
                        <div class="field">
                            <div class="field field--with-error">
                                <input autocomplete="email" type="email" id="ContactForm-email" class="field__input"
                                       name="email" spellcheck="false" autocapitalize="off" value=""
                                       aria-required="true" placeholder="Email">
                            </div>
                        </div>
                        <div class="field">
                            <input type="tel" id="ContactForm-phone" class="field__input" autocomplete="tel"
                                   name="phone" pattern="[0-9\-]*" value="" placeholder="Phone number">
                        </div>
                        <div class="field">
                            <textarea rows="10" id="ContactForm-body" class="text-area field__input"
                                      name="message" placeholder="Message"></textarea>
                        </div>
                        <div class="contact__button">
                            <button id="button_submit" type="submit" class="button">
                                Send
                            </button>
                        </div>
                    </form>
                    @endif

                </div>
            </div>

        </section>
    </main>
@endsection
