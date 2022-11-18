<?php

namespace App\Http\Controllers\Site;

use App\Entity\Category;
use App\Entity\Language;
use App\Entity\Post;

/**
 * Created by PhpStorm.
 * User: Nam Handsome
 * Date: 10/19/2017
 * Time: 9:50 AM
 */
class PostController extends SiteController
{

    public function index($languageCurrent, $cate_slug, $slug_post) {
        $post = Post::where('slug', $slug_post)
            ->where('language', $languageCurrent)
            ->first();

        $languages = Language::orderBy('language_id', 'asc')->get();
        $indexLangCurrent = 0;
        foreach ($languages as $id => $language) {
            if ($language->acronym == $languageCurrent) {
                $indexLangCurrent = $id;
            }
        }
        $mainId = $post->post_id - $indexLangCurrent;
        $nameRoute = 'post';

        $category = Category::where('slug', $cate_slug)
            ->where('language', $languageCurrent)
            ->first();
        if (empty($category)) {
            $category = Category::where('slug', 'tin-tuc')
                ->where('language', $languageCurrent)->first();
            $arrayRoute =  $category->category_id;
        } else {
            $arrayRoute =  $category->category_id - $indexLangCurrent;
        }

        $activeMenu = route('post', ['languageCurrent' => $languageCurrent, 'cate_slug' => $cate_slug, 'post_slug' => $slug_post]);

        if ($post->template == 'default') {
            return view('site.default.single', compact('post', 'category', 'activeMenu', 'mainId', 'nameRoute', 'arrayRoute'));
        } else {
            return view('site.template.'.$post->template, compact('post', 'category', 'activeMenu', 'mainId', 'nameRoute', 'arrayRoute'));
        }
    }
    
}
