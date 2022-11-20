<!--Cart-->
<div id="offcanvas-flip-cart" class="cart__offcanvas" uk-offcanvas="flip: true; overlay: true">
    <div class="uk-offcanvas-bar cart__offcanvas__bar uk-flex uk-flex-column">
        <div class="cart__offcanvas__header">
            <h3 class="cart__offcanvas__header__title">YOUR CART</h3>
            <button class="uk-offcanvas-close cart__offcanvas__header__close uk-position-center-right uk-position-small"
                    type="button" uk-close></button>
        </div>
        <div class="cart__offcanvas__body uk-flex-auto uk-overflow-auto cart__offcanvas__overflow">
            <div class="cart__offcanvas__body__box1">
                @if( \App\Entity\Order::countOrder() > 0)

                @foreach(\App\Entity\Order::getOrderItems() as $id => $item)
                        <div class="cart__offcanvas__body__item cart_item_head">
                            <div class="uk-grid-small uk-flex-middle" uk-grid>
                                <div class="uk-width-auto">
                                    <div class="uk-cover-container">
                                        <img src="{{ isset($item['image']) ? $item['image'] : '' }}" alt="" uk-cover="">
                                        <canvas width="90" height="90"></canvas>
                                        <a href="" class="uk-position-cover"></a>
                                    </div>
                                </div>
                                <div class="uk-width-expand">
                                    <div class="uk-grid-10 uk-flex-middle" uk-grid>
                                        <div class="uk-width-expand">
                                            <h4 class="uk-h4 cart__offcanvas__body__name">
                                                <a href="">{{ isset($item['title']) ? $item['title'] : '' }}</a></h4>
                                        </div>
                                        <div class="uk-width-auto">
                                            <a href="javascript:void(0);" onclick="return removeItemCart(this)" class="cart__offcanvas__body__trash" href="" uk-icon="icon: trash"></a>
                                        </div>
                                    </div>
                                    <div class="cart__offcanvas__body__size">
                                        {{ isset($item['size']) ? $item['size'] : '' }}
                                        <input type="hidden" name="size[]" class="size" value="{{ isset($item['size']) ? $item['size'] : '' }}" >
                                    </div>
                                    <div class="item__10 session-item-cart" uk-grid>
                                        <div class="uk-width-expand">
                                            <div class="cart__offcanvas__body__boxCount">
                                                <a href="javascript:void(0)" class="uk-button uk-button-small uk-button-default"
                                                   uk-icon="icon: minus; ratio: .6" onclick="return minusQuantity(this);"></a>
                                                <input type="text" class="uk-input uk-form-small uk-form-width-xsmall quantity" name="quantity[]"
                                                       value="{{ isset($item['quantity']) ? $item['quantity'] : 1 }}" placeholder="">
                                                <input type="hidden" name="price[]" class="price-input" value="{{ isset($item['price']) ? $item['price'] : '' }}">
                                                <input type="hidden" name="productId[]" class="product-id" value="{{ isset($item['product_id']) ? $item['product_id'] : '' }}">
                                                <a href="javascript:void(0)" class="uk-button uk-button-small uk-button-default"
                                                   uk-icon="icon: plus; ratio: .6" onclick="return plusQuantity(this);"></a>
                                            </div>
                                        </div>
                                        <div class="uk-width-auto">
                                            <span class="cart__offcanvas__body__price cart__offcanvas__body__price--new">
                                                <input type="hidden" name="total-price-item[]" class="total-price-item" value="{{ $item['price'] * $item['quantity'] }}">
                                                <span class="price">
                                                    {{ isset($item['price']) ? number_format($item['price'] * $item['quantity'] ) : '' }}
                                                </span>
                                                {{ isset($information['currency']) ? $information['currency'] : '₫' }}
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                @else
                    <div class="rebuy-cart__flyout-empty-cart" style="text-align: center; color: #000">
                        <h4>Your cart is empty!</h4>
                        <p class="ql-align-center">Add your favorite items to your cart.</p>
                        <p class="ql-align-center">
                            <a href="/">Shop Now</a></p>
                    </div>
                @endif
            </div>


            <div class="cart__offcanvas__body__box2">
                <div class="uk-text-center cart__offcanvas__body__box2__txt">
                    Customers who bought this item also bought
                </div>
                <div class="cart__offcanvas__body__box2__item-20-15">
                    @foreach( \App\Entity\Product::newProduct(3) as $item)
                    <div class="cart__offcanvas__body__item">
                        <div class="uk-grid-small uk-flex-middle" uk-grid>
                            <div class="uk-width-auto">
                                <div class="uk-cover-container">
                                    <img src="{{ isset($item['image']) ? $item['image'] : '' }}" alt="" uk-cover="">
                                    <canvas width="90" height="90"></canvas>
                                    <a href="" class="uk-position-cover"></a>
                                </div>
                            </div>
                            <div class="uk-width-expand">
                                <div class="uk-grid-10 uk-flex-middle" uk-grid>
                                    <div class="uk-width-expand">
                                        <h4 class="uk-h4 cart__offcanvas__body__name"><a href="">
                                                {{ isset($item['title']) ? $item['title'] : '' }}
                                            </a>
                                        </h4>
                                    </div>
                                    <div class="uk-width-auto">

                                    </div>
                                </div>
                                <div>
                                    <form enctype="multipart/form-data"
                                          id="add-to-cart-form" method="post" accept-charset="utf-8">
                                        {{ csrf_field() }}

                                        <input class="quantity__input"
                                               type="number"
                                               name="quantity[]"
                                               id="Quantity-template--15590144082099__main"
                                               min="1"
                                               value="1">
{{--                                        @if($item->properties)--}}
{{--                                            @foreach(explode(',', $item->properties) as $id =>$size )--}}
{{--                                                <input type="radio" id="template--15590144082099__main-1-{{$id}}"--}}
{{--                                                       name="size[]"--}}
{{--                                                       value="{{$size}}" {{$id == 0 ? 'checked' : ''}}>--}}
{{--                                                <label for="template--15590144082099__main-1-{{$id}}">--}}
{{--                                                    {{$size}}--}}
{{--                                                </label>--}}
{{--                                            @endforeach--}}
{{--                                        @endif--}}

                                        <input type="hidden" class="size" name="size[]"
                                               value="XXLL"/>

                                        <input type="hidden" class="product_id" name="product_id[]"
                                               value="{{ isset($item['product_id']) ? $item['product_id'] : '' }}"/>
                                        <button type="button" onclick="return addToOrder(this);"
                                                name="add">
                                            Add
                                        </button>

                                    </form>
                                    <span class="cart__offcanvas__body__price cart__offcanvas__body__price--new">
                                        {{ isset($item['price']) ? number_format($item['price']) : '' }}
                                        {{ isset($information['currency']) ? $information['currency'] : '₫' }}
                                    </span>
                                </div>
                            </div>
                            <div class="uk-width-auto">
                                <a href=""
                                   class="cart__offcanvas__body__box2__btn uk-border-rounded uk-button uk-button-secondary uk-button-small">
                                   view
                                </a>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
        <div class="cart__offcanvas__footer">
            <div class="uk-grid-10 uk-flex-middle" uk-grid>
                <div class="uk-width-expand">
                    <span class="cart__offcanvas__footer__txt">Subtotal ({{\App\Entity\Order::countOrder()}} items)</span>
                </div>
                <div class="uk-width-auto">
                    <span class="cart__offcanvas__footer__txt">
                        <input type="hidden" name="total-cart">
                        <span id="total-cart">
                        </span>
                        {{ isset($information['currency']) ? $information['currency'] : '₫' }}
                    </span>
                </div>
            </div>
            <div>
                <a href="{{ route('checkout', ['lang' => $languageCurrent]) }}" class="cart__offcanvas__footer__btn uk-button uk-button-secondary uk-width-1-1 uk-border-rounded"
                        uk-icon="icon: lock"><span class="uk-text-middle uk-margin-small-left">Checkout</span></a>
            </div>
        </div>
    </div>
</div>
<!--/Cart-->

<script>
    $(document).ready(function(){
        caculateTotalPrice();
    })
    function minusQuantity(e) {
        let quantityInput = $(e).parent().find('.quantity');
        let price = $(e).parent().find('.price-input').val();
        let quantity = quantityInput.val();
        if(quantity > 1){
            quantity = parseInt(quantity) - 1;
        }else{
            quantity = parseInt(quantity);
            return;
        }
        quantityInput.val(quantity)
        updateOrder();
        caculatePrice(e, quantity, price)
    }

    function plusQuantity(e) {
        let quantityInput = $(e).parent().find('.quantity');
        let price = $(e).parent().find('.price-input').val();
        let quantity = quantityInput.val();
        quantity = parseInt(quantity) + 1;
        quantityInput.val(quantity)
        updateOrder();

        caculatePrice(e, quantity, price)
    }

    function caculatePrice(e, quantity, price) {
        let priceOneItem = quantity * price;
        let priceItem = $(e).closest('.session-item-cart').find('.price');
        priceItem.html(numeral(priceOneItem).format('0,0'))

        $(e).closest('.session-item-cart').find('.total-price-item').val(priceOneItem);
        caculateTotalPrice();

    }

    function caculateTotalPrice() {
        let sum = 0;
        $('.total-price-item').each(function (index, value) {
            let priceTotal = value.value;
            sum = parseInt(sum) + parseInt(priceTotal);
        });
        $('input[name=total-cart]').val(sum);
        $('#total-cart').html(numeral(sum).format('0,0'));
    }

    function updateOrder() {
        let cart = [];
        $('.cart_item_head').each(function (index, value) {
            let newQuantiy = $(this).find('.quantity').val();
            let productId = $(this).find('.product-id').val();
            let size = $(this).find('.size').val();
            let element = {};
            element.product_id = productId;
            element.quantity = newQuantiy;
            element.size = size;
            cart.push(element);
        });
        console.log(cart)
        $.ajax({
            url: "{{ route('update_order') }}",
            method: "post",
            data: {
                cart: cart
            }
        }).done(function(result) {
            console.log('oke')
        });
    }

    function removeItemCart(e) {
        let priceItem = $(e).closest('.cart_item_head').remove();

        updateOrder();
    }


</script>