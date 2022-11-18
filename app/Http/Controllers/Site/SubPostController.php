<?php
/**
 * Created by PhpStorm.
 * User: Nam Handsome
 * Date: 10/19/2017
 * Time: 10:25 AM
 */

namespace App\Http\Controllers\Site;


use App\Entity\Category;
use App\Entity\Input;
use App\Entity\Language;
use App\Entity\LanguageSave;
use App\Entity\Post;
use App\Entity\SubPost;
use App\Entity\TypeInput;
use App\Entity\TypeSubPost;
use App\Ultility\Ultility;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SubPostController extends SiteController
{
    public function index($languageCurrent, $type_sub_post, $sub_post_slug, Request $request) {
        $post = Post::join('sub_post', 'sub_post.post_id', '=', 'posts.post_id')
            ->select('posts.*')
            ->where('type_sub_post_slug', $sub_post_slug)->first();

        $typeSubPost = TypeSubPost::where('slug', $sub_post_slug)->first();
        $inputs = Input::where('post_id', $post->post_id)->get();
        foreach ($inputs as $input) {
            $post[$input->type_input_slug] = $input->content;
        }
        $category = new Category();
        $category->title = $typeSubPost->title;

        if ($typeSubPost->template == 'default') {
            return view('site.default.single', compact('post', 'category'));
        } else {
            return view('site.template.'.$typeSubPost->template, compact('post', 'category'));
        }
    }

    public function logo($languageCurrent, $menuLogo = null, Request $request) {
        // lay ra tat ca mon an
        $menus = Post::select('posts.*')
            ->where('posts.post_type', 'thuc-don')
            ->where('language', $languageCurrent)
            ->where('visiable', 0)
            ->whereNotNull('posts.title');

        $nameRoute = 'logo';
        $arrayRoute = null;

        // neu chon danh muc thuc don
        if (!empty($menuLogo)) {
            $postCateLogo =  Post::where('slug', $menuLogo)
                ->where('language', $languageCurrent)
                ->first();
            $arrayRoute = $postCateLogo->post_id;
            $nameRoute = 'logo-menus';
            if ($languageCurrent != 'vn') {
                $postCateLogo = LanguageSave::where('element_id', 'like', '%,'.$postCateLogo->post_id.'%')
                    ->orWhere('element_id', 'like', '%,'.$postCateLogo->post_id)
                    ->first();
                $arrayRoute = $postCateLogo->main_id;
                $postCateLogo = Post::join('sub_post', 'sub_post.post_id', '=', 'posts.post_id')
                    ->select('posts.*')
                    ->where('posts.post_id', $postCateLogo->main_id )->first();
            }
            $menuLogo = $postCateLogo->title;

            $inputPostIds =  Input::select('post_id')
                ->where('input.content', $menuLogo)
                ->get();
        }

        if (isset($inputPostIds)) {
            $menus = $menus->whereIn('post_id', $inputPostIds);
        }
        $menus = $menus->paginate(12);

        // lay ra cac truong phu cua mon an, vi du gia-thuc-don
        foreach($menus as $id => $menu) {
            $inputs = Input::where('post_id', $menu->post_id)->get();
            foreach ($inputs as $input) {
                $menus[$id][$input->type_input_slug] = $input->content;
            }
        }
        
        $activeMenu = '/'.$languageCurrent.'/menus';

        return view('site.template.logo-thuong-hieu', compact( 'menus', 'cateLogos', 'menuLogo', 'activeMenu', 'mainId', 'nameRoute', 'arrayRoute'));
    }

    public function detailMenu($languageCurrent, $food, Request $request) {
        $food = Post::where('language', $languageCurrent)
            ->where('posts.slug', $food)->first();
        $inputs = Input::where('post_id', $food->post_id)->get();
        foreach ($inputs as $input) {
            $food[$input->type_input_slug] = $input->content;
        }
        
        $indexLangCurrent = 0;
        $languages = Language::orderBy('language_id', 'asc')->get();
        foreach ($languages as $id => $language) {
            if ($language->acronym == $languageCurrent) {
                $indexLangCurrent = $id;
            }
        }

        $mainId = $food->post_id - $indexLangCurrent;
        $nameRoute = 'show-detail-food';
        $arrayRoute = null;

        $menuLogo = $food['chon-menu-thuong-hieu'];
        
        $inputPostIds =  Input::select('post_id')
            ->where('input.content', $menuLogo)
            ->get();
        $menus = Post::whereIn('post_id', $inputPostIds)
            ->orderBy(DB::raw('RAND()'))
            ->select('posts.*')
            ->where('posts.post_type', 'thuc-don')
            ->where('language', $languageCurrent)
            ->whereNotNull('posts.title')
            ->where('visiable', 0)
            ->offset(0)
            ->limit(4)->get();

        foreach($menus as $id => $menu) {
            $inputs = Input::where('post_id', $menu->post_id)->get();
            foreach ($inputs as $input) {
                $menus[$id][$input->type_input_slug] = $input->content;
            }
        }
        
        $activeMenu = '/'.$languageCurrent.'/menus';

        return view('site.template.chi-tiet-thuc-don', compact('post', 'menus', 'food', 'cateLogos', 'menuLogo',
            'postMain', 'activeMenu',  'mainId', 'nameRoute', 'arrayRoute'
        ));

    }

    public function nextImageLibrary(Request $request) {
        $offset = $request->input('offset');

        $posts = SubPost::nextImage('quan-ly-hinh-anh', 6, $offset);

        return response([
            'status' => 200,
            'posts' => $posts,
        ])->header('Content-Type', 'text/plain');
    }

    public function nextVideoLibrary(Request $request) {
        $typePost = 'quan-ly-video';
        $typeSubPost = TypeSubPost::where('slug', $typePost)->first();

        $posts = Post::join('sub_post', 'sub_post.post_id', '=', 'posts.post_id')
            ->select(
                'sub_post.sub_post_id',
                'posts.post_id',
                'title',
                'slug',
                'image',
                'content',
                'sort'
            )
            ->where('post_type', $typePost)
            ->where('visiable', 0)
            ->where('language', session('languageCurrent', 'vn'))
            ->whereNotNull('posts.title');

        if (isset($typeSubPost->have_sort) && $typeSubPost->have_sort == 1) {
            $posts = $posts->orderBy('posts.sort', 'asc');
        } else {
            $posts = $posts->orderBy('posts.post_id', 'desc');
        }

        $posts = $posts->paginate(3);

        foreach($posts as $id => $post) {
            $inputs = Input::where('post_id', $post->post_id)->get();
            foreach ($inputs as $input) {
                $posts[$id][$input->type_input_slug] = $input->content;
            }
        }

        $languageCurrent = session('languageCurrent', 'vn');
        if ($languageCurrent == 'vn') {
            $activeMenu = route('next_video', ['languageCurrent' => $languageCurrent]);
            $nameRoute = 'next_video';
        } else {
            $activeMenu = route('next_video_en', ['languageCurrent' => $languageCurrent]);
            $nameRoute = 'next_video_en';
        }

        return view('site.template.thu-vien-hinh-anh', compact('posts', 'activeMenu', 'nameRoute'));
    }
}
