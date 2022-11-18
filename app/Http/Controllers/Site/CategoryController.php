<?php
/**
 * Created by PhpStorm.
 * User: Nam Handsome
 * Date: 10/19/2017
 * Time: 10:21 AM
 */

namespace App\Http\Controllers\Site;


use App\Entity\Category;
use App\Entity\Input;
use App\Entity\Language;
use App\Entity\Post;
use App\Entity\TypeInput;
use App\Ultility\Ultility;
use Illuminate\Http\Request;

class CategoryController extends SiteController
{
    public function index($languageCurrent, $cate_slug) {
        $category = Category::where('slug', $cate_slug)->first();
        // get main category
        $cateId =  $category->category_id;
        $languages = Language::orderBy('language_id', 'asc')->get();
        $indexLangCurrent = 0;
         foreach ($languages as $id => $language) {
             if ($language->acronym == $languageCurrent) {
                 $indexLangCurrent = $id;
             }
         }
        $cateId = $cateId - $indexLangCurrent;
        $nameRoute = 'category';
        $mainId = $cateId;
        
        $posts = Post::join('category_post', 'category_post.post_id', '=', 'posts.post_id')
            ->select('posts.*')
            ->where('category_post.category_id', $cateId)
            ->where('language', session('languageCurrent', 'vn'))
            ->whereNotNull('posts.title')
            ->orderBy('posts.post_id', 'desc')
            ->paginate(10);

        foreach($posts as $id => $post) {
            $inputs = Input::where('post_id', $post->post_id)->get();
            foreach ($inputs as $input) {
                $posts[$id][$input->type_input_slug] = $input->content;
            }
        }

        $activeMenu = route('category', ['languageCurrent' => $languageCurrent, 'cate_slug' => $cate_slug]);

        if ($category->template == 'default') {
            return view('site.default.category', compact('category', 'posts', 'activeMenu', 'nameRoute', 'mainId'));
        } else {
            return view('site.template.'.$category->template, compact('category', 'posts', 'activeMenu', 'nameRoute', 'mainId'));
        }
    }

    public function search($languageCurrent, Request $request) {
        $word = $request->input('word');
        $tags = $request->input('tags');

        if (isset($tags) && !empty($tags) ) {
            $posts = Post::where('posts.post_type', 'post')
                ->where('language', $languageCurrent)
                ->whereNotNull('posts.title')
                ->orderBy('posts.post_id', 'desc')
                ->where('tags', 'like',  $tags.'%')
                ->orWhere('tags', 'like', '%'.$tags.'%')
                ->paginate(12);

            $posts->appends(['tags' => $tags]);

            return view('site.default.search_tags', compact('posts'));
        } else {
            $menus = Post::where('posts.post_type', 'thuc-don')
                ->where('language', $languageCurrent)
                ->whereNotNull('posts.title')
                ->where('title', 'like',  '%'.Ultility::createSlug($word).'%')
                ->orderBy('posts.post_id', 'desc')
                ->paginate(10);
            $menus = $menus->appends(['word' => $word]);
        }

        // lay ra cac truong phụ được lưu trong bài viết
        foreach($menus as $id => $menu) {
            $inputs = Input::where('post_id', $menu->post_id)->get();
            foreach ($inputs as $input) {
                $menus[$id][$input->type_input_slug] = $input->content;
            }
        }

        return view('site.default.search', compact('menus'));

    }
}
