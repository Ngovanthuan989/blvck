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
        <section id="shopify-section-template--15590143951027__main" class="shopify-section section">
            <link rel="stylesheet"
                  href="//cdn.shopify.com/s/files/1/0080/9035/3717/t/3/assets/section-main-page.css?v=26772147938707470111649770042"
                  media="all" onload="this.media='all'">

            <div class="page-width page-width--narrow section-template--15590143951027__main-padding">
                <h2 class="main-page-title page-title">
                    Contact us
                </h2>
                <div class="rte">

                </div>
            </div>
        </section>
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
            <div class="color-background-1 gradient">
                <div class="contact page-width page-width--narrow section-template--15590143951027__form-padding">
                    @if (isset($success) && $success == 1)
                    <h3 class="title title-wrapper--no-top-margin" style="text-align: center">Cảm ơn đã để lại liên hệ cho chúng tôi</h3>
                    @else
                    <form method="post" action="{{ route('sub_contact', [ 'languageCurrent' => $languageCurrent]) }}" id="ContactForm" accept-charset="UTF-8"
                          class="isolate">
                        {!! csrf_field() !!}

                        <div class="contact__fields">
                            <div class="field">
                                <input class="field__input" autocomplete="name" type="text" id="ContactForm-name"
                                       name="name" value="" placeholder="Name">
                                <label class="field__label" for="ContactForm-name">Name</label>
                            </div>
                            <div class="field field--with-error">
                                <input autocomplete="email" type="email" id="ContactForm-email" class="field__input"
                                       name="email" spellcheck="false" autocapitalize="off" value=""
                                       aria-required="true" placeholder="Email">
                                <label class="field__label" for="ContactForm-email">Email <span
                                            aria-hidden="true">*</span></label></div>
                        </div>
                        <div class="field">
                            <input type="tel" id="ContactForm-phone" class="field__input" autocomplete="tel"
                                   name="phone" pattern="[0-9\-]*" value="" placeholder="Phone number">
                            <label class="field__label" for="ContactForm-phone">Phone number</label>
                        </div>
                        <div class="field">
                            <textarea rows="10" id="ContactForm-body" class="text-area field__input"
                                      name="message" placeholder="Comment"></textarea>
                            <label class="form__label field__label" for="ContactForm-body">Comment</label>
                        </div>
                        <div class="contact__button">
                            <button type="submit" class="button">
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
