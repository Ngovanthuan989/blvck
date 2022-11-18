@extends('site.layout.site')

@section('title', $category->title)
@section('meta_description',  $category->description )
@section('keywords', '')

@section('content')
<div id="main">
	<script language="javascript" src="/site/admin/media/scripts/my_script.js"></script>


	<script type="text/javascript">
		jQuery(document).ready(function(){

			jQuery(".content_faq").addClass('hide');

			jQuery("a.items_faq").click(function(){
				jQuery("a.items_faq").css('color','inherit');
				jQuery(this).css('color','#FF0000');
				var id=jQuery(this).attr("value");

				jQuery(".content_faq").addClass('hide');
				jQuery("#faq"+id).toggle();
				return false;
			});
		});
	</script>

	<div class="title_main">{{ $category->title }}</div>
	<div class="content_main">

		<a class="gui_hoidap" href="#frm_gui_hoidap">
			<p class="btn_datcauhoi">{{ $languageSetup['dat-cau-hoi'] }}</p>
		</a>


		<ul class="list_faq_us">
			@foreach ($posts as $id=>$post)
				<li class="li_faq">
					<h4 class="title_faq"><a href="#" title="ẩn/hiện câu trả lời" class="items_faq" value="{{ ($id + 1 ) }}">» {{ $post->title }}.</a></h4>
					<span class="send_by">{{ $post->description }}</span>
					<div id="faq{{ ($id + 1 ) }}" class="content_faq">				
						<p>{!! $post->content !!}</p>            
					</div>
				</li> 
			@endforeach	


				


					

					</ul>


					<div class="phantrang" ></div>

				</div>


				<!-- JQ Colorbox -->
				<link rel="stylesheet" href="/site/css/colorbox.css" />
				<script type="text/javascript" src="/site/js/jquery.colorbox.js"></script>
				<script>
					$(document).ready(function(){
						$(".gui_hoidap").colorbox({inline:true, width:"350px", height:"490px"});
						$('.gui_hoidap').each(function(){
							$(this).click(function(){

							});
						});
						
					});
				</script>
				<!-- ajax - load giới thiệu --> 


				<div style="display:none;">  

					<div id="frm_gui_hoidap">

						<form method="post" name="frm_hoidap" action="" onSubmit="return contact(this);">
							{!! csrf_field() !!}
							<input type="hidden" name="is_json" class="form-control captcha" value="1" placeholder="">	           
							<table width="100%" cellpadding="5" cellspacing="0" border="0" class="tablelienhe">                        <tr>
								<td>Họ tên<span>*</span></td>
								<td><label>
									<input name="name" type="text" class="input" id="ten" size="40" />
								</label></td>
							</tr>                        
							<tr>
								<td>Địa Chỉ </td>
								<td>
									<input name="address" type="text"  class="input" id="diachi" size="40" />
								</td>
							</tr>                                                                         
							<tr>
								<td>Điện thoại</td>				
								<td><label>
									<input name="phone" type="text" class="input" id="dienthoai" size="40">
								</label></td>
							</tr>                         
							<tr>
								<td>Email<span>*</span></td>				
								<td><label>
									<input name="email" type="text" class="input" id="email" size="40"  />
								</label></td>
							</tr>                                                 
							<tr>
								<td>Nội dung<span>*</span></td>				
								<td>
									<textarea name="message" cols="30" rows="5" class="ta_noidung" id="noidung" style="background-color:#FFFFFF; color:#666666;"></textarea>  </td>
								</tr>
								<tr>
									<td colspan="3" align="center" class="text_vanban_gg1" valign="middle" style="padding-top:8px;"> 
										 <button class="btn-submit" type="submit" title="Gửi liên hệ">{{ $languageSetup['gui-lien-he'] }}</button>
										                
									</td>
								</tr>
							</table>     
						</form>
						

					</div>

				</div> 

			<div class="clear"></div>
	</div><!--MAIN-->
@endsection