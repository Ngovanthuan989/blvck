@extends('site.layout.site')

@section('title', isset($information['meta_title']) ? $information['meta_title'] : '')
@section('meta_description', isset($information['meta_description']) ? $information['meta_description'] : '')
@section('keywords', isset($information['meta_keyword']) ? $information['meta_keyword'] : '')

@section('content')
<div id="main">
<div class="container">
	<div class="row">
		<div class="col-md-12">


<script language="javascript" src="/site/admin/media/scripts/my_script.js"></script>


<div class="title_main">{{ $languageSetup['lien-he'] }}</div>

<div class="content_main"  >
<p style="text-align: center;"><span style="font-size: large;">{{ isset($information['ten-cong-ty']) ?  $information['ten-cong-ty'] : '' }}</span></p>
 {!! isset($information['thong-tin-cong-ty']) ?  $information['thong-tin-cong-ty'] : '' !!}
</div>

<div class="title_main">{{ $languageSetup['lien-he-ngay-voi-chung-toi'] }}</div>
 <div class="clear"></div>
			<div class="withFromContac">

		<form action="{{ route('sub_contact', [ 'languageCurrent' => $languageCurrent]) }}" method="post">
		 {!! csrf_field() !!}
             <input type="hidden" name="is_json" class="form-control captcha" value="1" placeholder="">
	<div class="form-row">
		<div class="form-group col-md-12">
		@if (isset($success) && $success == 1)
		  <label style="color: red;" for="inputEmail4">{{ $languageSetup['cam-on-sau-lien-he'] }}</label>
		@endif
		</div>
	</div>
	<div class="form-row">
    <div class="form-group col-md-12">
      <label for="inputEmail4">{{ $languageSetup['ho-va-ten'] }}</label>
      <input type="text" class="form-control" id="inputEmail4" placeholder="{{ $languageSetup['ho-va-ten'] }}" name="name">

    </div>

  </div>
  <div class="form-row">
    <div class="form-group col-md-12">
      <label for="inputEmail4">{{ $languageSetup['email'] }}</label>
      <input type="email" class="form-control" id="inputEmail4" placeholder="{{ $languageSetup['email'] }}" name="email">
    </div>

  </div>
    <div class="form-group">
    <label for="inputAddress">{{ $languageSetup['so-dien-thoai'] }}</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="{{ $languageSetup['so-dien-thoai'] }}" name="phone">
  </div>
  <div class="form-group">
    <label for="inputAddress">{{ $languageSetup['dia-chi'] }}</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="{{ $languageSetup['dia-chi'] }}" name="address">
  </div>
  <div class="form-group" >
    <label for="inputAddress2">{{ $languageSetup['loi-nhan'] }}</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" placeholder="{{ $languageSetup['loi-nhan'] }}" name="message" ></textarea>
  </div>



  <button type="submit" class="btn btn-primary" style="background: green;">{{ $languageSetup['gui-lien-he'] }}</button>
</form>
		</div>

<div class="title_main">{{ $languageSetup['ban-do'] }}</div>
<div class="content_main">
<center>

    <div class="box-map">
       <div class="map-container">
        {!! isset($information['google-map']) ?  $information['google-map'] : '' !!}
             </div>

    </div><!--box-map-->
 </center>
</div>

    <div class="clear"></div>
	</div>
	</div>
</div>

    </div><!--MAIN-->
@endsection
