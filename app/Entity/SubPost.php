<?php
/**
 * Created by PhpStorm.
 * User: Nam Handsome
 * Date: 10/13/2017
 * Time: 10:52 AM
 */

namespace App\Entity;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class SubPost  extends Model
{
    protected $table = 'sub_post';

    protected $primaryKey = 'sub_post_id';

    protected $fillable = [
        'sub_post_id',
        'post_id',
        'type_sub_post_slug',
    ];

    public static function showSubPost($typePost, $count = 10, $isHot = 0, $isRandom = 0) {
        $typeSubPost = TypeSubPost::where('slug', $typePost)->first();
        
        $posts = Post::join('sub_post', 'sub_post.post_id', '=', 'posts.post_id')
            ->select(
                'sub_post.sub_post_id',
                'posts.post_id',
                'title',
                'slug',
                'image',
                'content',
                'sort',
                'description'
            )
            ->where('post_type', $typePost)
            ->where('visiable', 0)
            ->where('language', session('languageCurrent', 'vn'))
            ->whereNotNull('posts.title')
            ->orderBy('posts.post_id', 'asc');
        if ($isHot == 1) {
            $posts = $posts->where('index_hot', 1);
        }

        if (isset($typeSubPost->have_sort) && $typeSubPost->have_sort == 1) {
            $posts = $posts->orderBy('posts.sort', 'asc');
        } else if($isRandom == 1) {
            $posts = $posts->orderBy(DB::raw('RAND()'));
        } else {
            $posts = $posts->orderBy('posts.post_id', 'desc');
        }

        $posts = $posts->offset(0)
            ->limit($count)->get();

        foreach($posts as $id => $post) {
            $inputs = Input::where('post_id', $post->post_id)->get();
            foreach ($inputs as $input) {
                $posts[$id][$input->type_input_slug] = $input->content;
            }
        }

        return $posts;
    }

    public static function countSubPost ($typePost) {
        $typeSubPost = TypeSubPost::where('slug', $typePost)->first();

        $countPosts = Post::join('sub_post', 'sub_post.post_id', '=', 'posts.post_id')
            ->select(
                'sub_post.sub_post_id',
                'posts.post_id',
                'title',
                'slug',
                'image',
                'content',
                'sort',
                'description'
            )
            ->where('post_type', $typePost)
            ->where('visiable', 0)
            ->where('language', session('languageCurrent', 'vn'))
            ->whereNotNull('posts.title')->count();

        return $countPosts;
    }

    public static function showOfOtherSubpost($typePost, $typeOtherSubpost, $count = 10, $isHot = 0) {
        $languageCurrent = session('languageCurrent', 'vn');
        $typeSubPost = TypeSubPost::where('slug', $typePost)->first();

        $postCateLogo =  Post::where('slug', $typeOtherSubpost)
            ->where('language', $languageCurrent)
            ->first();

        if ($languageCurrent != 'vn') {
            $postCateLogo = LanguageSave::where('element_id', 'like', '%,'.$postCateLogo->post_id.'%')
                ->orWhere('element_id', 'like', '%,'.$postCateLogo->post_id)
                ->first();
            $postCateLogo = Post::join('sub_post', 'sub_post.post_id', '=', 'posts.post_id')
                ->select('posts.*')
                ->where('posts.post_id', $postCateLogo->main_id )->first();
        }

        $menuLogo = $postCateLogo->title;

        $inputPostIds =  Input::select('post_id')
            ->where('input.content', $menuLogo)
            ->get();

        $menus = Post::select('posts.*')
            ->where('posts.post_type', $typePost)
            ->where('language', $languageCurrent)
            ->where('visiable', 0)
            ->whereNotNull('posts.title')
            ->whereIn('post_id', $inputPostIds);

        if ($isHot == 1) {
            $menus = $menus->where('index_hot', 1);
        }
        if ($typeSubPost->have_sort == 1) {
            $menus = $menus->orderBy('posts.sort', 'asc');
        } else {
            $menus = $menus->orderBy('posts.post_id', 'desc');
        }

        $menus = $menus->offset(0)
            ->limit($count)->get();

        foreach($menus as $id => $menu) {
            $inputs = Input::where('post_id', $menu->post_id)->get();
            foreach ($inputs as $input) {
                $menus[$id][$input->type_input_slug] = $input->content;
            }
        }

        return $menus;
    }

    public static function nextImage($typePost, $count = 10, $offset = 0){
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

        $posts = $posts->offset($offset)
            ->limit($count)->get();

        foreach($posts as $id => $post) {
            $inputs = Input::where('post_id', $post->post_id)->get();
            foreach ($inputs as $input) {
                $posts[$id][$input->type_input_slug] = $input->content;
            }
        }

        return $posts;
    }
}
