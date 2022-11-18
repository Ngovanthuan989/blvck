<?php
/**
 * Created by PhpStorm.
 * User: Nam Handsome
 * Date: 10/28/2017
 * Time: 10:07 PM
 */

namespace App\Http\Controllers\Site;


use App\Entity\Book;
use App\Entity\Contact;
use App\Entity\Input;
use App\Entity\Post;
use App\Mail\Mail;
use Illuminate\Http\Request;
use Validator;

class ContactController extends SiteController
{
    public function index() {
        $languageCurrent = session('languageCurrent', 'vn');
        if ($languageCurrent == 'vn') {
            $activeMenu = '/vn/lien-he';
            $nameRoute = 'lien-he';
        } else {
            $activeMenu = '/en/contact';
            $nameRoute = 'contact';
        }
        
        return view('site.default.contact', compact('activeMenu', 'nameRoute'));
    }


    public function submit(Request $request) {
        $languageCurrent = session('languageCurrent', 'vn');
        
        $validation = Validator::make($request->all(), [
            'name' => 'required',
            'phone' => 'required',
            'email' => 'required|email',
        ]);

        // if validation fail return error
        if ($validation->fails()) {
            return redirect(route('contact', ['languageCurrent' => $languageCurrent]))
                ->withErrors($validation)
                ->withInput();
        }

        //success
        $contact = new Contact();
        $contact->insert([
            'name' => $request->input('name'),
            'phone' => $request->input('phone'),
            'email' => $request->input('email'),
            'address' => $request->input('address'),
            'message' => $request->input('message'),
            'created_at' => new \DateTime(),
            'updated_at' => new \DateTime()
        ]);

        if ($languageCurrent == 'vn') {
            $activeMenu = route('lien-he', ['languageCurrent' => $languageCurrent]);
        } else {
            $activeMenu = route('contact', ['languageCurrent' => $languageCurrent]);
        }
        $success = 1;
        $this->sendMainContact($request);
        
        return view('site.default.contact', compact('activeMenu', 'success'));

    }

    public function submitBook(Request $request) {
        $languageCurrent = session('languageCurrent', 'vn');

        $restaurents = $request->input('restaurant');
        $restaurent = explode(';,', $restaurents);
        $restaurentMain = isset($restaurent[0]) ? $restaurent[0] : '';
        $restaurentMail = isset($restaurent[1]) ? $restaurent[1] : '';
        $validation = Validator::make($request->all(), [
            'name' => 'required|string',
        ], [
            'required' => ':attribute không được để trống (:attribute is not null).',
            'string' => ':attribute phải là dạng chuỗi (:attribute must is string).',
        ]);

        if ($validation->fails()) {
            return redirect(route('category', ['languageCurrent' => $this->languageCurrent, 'cate_slug' => 'dat-ban']))
                ->withErrors($validation)
                ->withInput();
        }
        //success
        $book = new Book();
        $book->insert([
            'name' => $request->input('name'),
            'phone' => $request->input('phone'),
            'email' => $request->input('email'),
            'address' => $request->input('address'),
            'message' => $request->input('message'),
            'number' => $request->input('number'),
            'prepay' => $request->input('prepay'),
            'time' => new \Datetime($request->input('time')),
            'restaurant' => $restaurentMain,
            'created_at' => new \DateTime(),
            'updated_at' => new \DateTime()
        ]);

        if ($languageCurrent == 'vn') {
            $activeMenu = route('lien-he', ['languageCurrent' => $languageCurrent]);
        } else {
            $activeMenu = route('contact', ['languageCurrent' => $languageCurrent]);
        }
        $isBookSuccess = 1;
//        $this->sendMailBook($request, $restaurentMail, $restaurentMain);
//        $this->sendMailBookAdmin($request, $restaurentMain);

        return view('site.default.thanks', compact('activeMenu', 'isBookSuccess'));
    }
    
    private function sendMainContact($request) {
        $content = 'Anh '. $request->input('name').' SDT: '.$request->input('phone').' Vừa liên hệ với bạn từ website trichoderma.com.vn <br> Vui lòng truy cập website trichoderma.com.vn thông tin chi tiết: ';
		$content .= '<p>Số điện thoại: '.$request->input('phone').'. </p>';
		$content .= '<p>Email: '.$request->input('email').'. </p>';
		$content .= '<p>Địa chỉ: '.$request->input('address').'. </p>';
		$content .= '<p>Nội dung: '.$request->input('message').'. </p>';


        $to = 'trichodermaat@gmail.com';
        $subject = 'Có liên hệ mới từ website: trichoderma.com.vn';
        $mail = new Mail(
            $content
        );

        \Mail::to($to)->send($mail->subject($subject));
    }

    private function sendMailBook ($request, $restaurentMail, $restaurentMain) {
        $content = 'Anh '. $request->input('name').' SDT: '.$request->input('phone').' Vừa liên hệ với bạn từ website trichoderma.com.vn <br> Vui lòng truy cập website trichoderma.com.vn thông tin chi tiết: ';
		$content .= '<p>Số điện thoại: '.$request->input('phone').'. </p>';
		$content .= '<p>Email: '.$request->input('email').'. </p>';
		$content .= '<p>Địa chỉ: '.$request->input('address').'. </p>';
		$content .= '<p>Nội dung: '.$request->input('message').'. </p>';


        $to = 'vn3ctran@gmail.com';
        $subject = 'Có liên hệ mới từ website: trichoderma.com.vn';
        $mail = new Mail(
            $content
        );

        \Mail::to($to)->send($mail->subject($subject));
    }

    private function sendMailBookAdmin($request, $restaurentMain) {
        $now = new \DateTime();
        $mailConfig = Post::join('sub_post', 'sub_post.post_id', '=', 'posts.post_id')
            ->select('posts.*')
            ->where('type_sub_post_slug', 'cau-hinh-email')
            ->where('posts.slug', 'mail-dat-tiec-gui-cho-quan-tri')
            ->first();
        // config content
        $mailConfig->content = str_replace('[customer-name]', $request->input('name'), $mailConfig->content);
        $mailConfig->content = str_replace('[customer-address]', $request->input('address'), $mailConfig->content);
        $mailConfig->content = str_replace('[customer-email]', $request->input('email'), $mailConfig->content);
        $mailConfig->content = str_replace('[customer-phone]', $request->input('phone'), $mailConfig->content);
        $mailConfig->content = str_replace('[customer-message]', $request->input('message'), $mailConfig->content);
        $mailConfig->content = str_replace('[customer-time]', $request->input('time'), $mailConfig->content);
        $mailConfig->content = str_replace('[restaurant-address]', $restaurentMain, $mailConfig->content);
        $mailConfig->content = str_replace('[time]', $now->format('d/m/Y H:i:s'), $mailConfig->content);

        $inputs = Input::where('post_id', $mailConfig->post_id)->get();
        foreach ($inputs as $input) {
            $mailConfig[$input->type_input_slug] = $input->content;
            // config to, from, subject
        }


        $to = $mailConfig['to'];
        $from = $mailConfig['from'];
        $subject = $mailConfig['chu-de-(subject)'];
        $content = $mailConfig->content;
        $mail = new Mail(
            $content
        );

        \Mail::to($to)->send($mail->subject($subject));
    }
}
