<?php
/**
 * Created by PhpStorm.
 * User: Nam Handsome
 * Date: 10/19/2017
 * Time: 10:24 AM
 */

namespace App\Http\Controllers\Site;


use App\Entity\Category;
use App\Entity\Language;
use App\Entity\Post;
use App\Entity\Product;
use App\Ultility\Ultility;
use Illuminate\Http\Request;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Input;

class ProductCategoryController extends SiteController
{
    public function index($languageCurrent, $cate_slug, Request $request) {
        $category = Category::where('slug', $cate_slug)
            ->where('post_type', 'product')
            ->where('language', session('languageCurrent', 'vn'))
            ->first();
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
        $nameRoute = 'category_product';
        $mainId = $cateId;

        $categoryMain = Category::where('category_id', $cateId)
            ->first();
        $categoryMain['otherLanguage'] = Category::where('category_id', ($cateId + 1) )
            ->first();

        $categoryChildrens = Category::where('parent', $cateId)
            ->where('language', session('languageCurrent', 'vn'));
        $countCategoryChildrens = $categoryChildrens->count();
        $categoryChildrens = $categoryChildrens->get();

        foreach ($categoryChildrens as $id => $cateChild) {
            $cateIdSub = ($languageCurrent == 'vn') ? $cateChild->category_id + 1 : $cateChild->category_id - 1;
            $categoryChildrens[$id]['otherLanguage'] = Category::where('category_id', $cateIdSub )
                ->first();
        }

        $products = Post::join('category_post', 'category_post.post_id', '=', 'posts.post_id')
            ->join('products', 'products.post_id', '=', 'posts.post_id')
            ->select(
                'posts.*',
                'products.price',
                'products.discount',
                'products.discount_start',
                'products.discount_end'
                )
            ->where('language', session('languageCurrent', 'vn'))
            ->where('category_post.category_id', $cateId);


        if (!empty($request->input('word'))) {
            $word = $request->input('word');
            $products =  $products->where('posts.slug', 'like', '%'.Ultility::createSlug($word).'%');
        }

        $countProduct = $products->count();
        $products = $products->paginate(16);

        foreach ($products as $id => $product) {
            $cateIdSub = ($languageCurrent == 'vn') ? $product->post_id + 1 : $product->post_id - 1;
            $products[$id]['otherLanguage'] = Post::join('category_post', 'category_post.post_id', '=', 'posts.post_id')
                ->join('products', 'products.post_id', '=', 'posts.post_id')
                ->select(
                    'posts.*',
                    'products.price',
                    'products.discount',
                    'products.discount_start',
                    'products.discount_end'
                )
                ->where('posts.post_id', ($product->post_id + 1) )
                ->where('category_post.category_id', $cateId)->first();
        }

        $activeMenu = route('category_product', ['languageCurrent' => $languageCurrent, 'cate_slug' => $cate_slug]);

        if ($category->template == 'default') {
            return view('site.default.category_product', compact('category', 'products', 'activeMenu', 'nameRoute', 'mainId', 'categoryChildrens', 'categoryMain', 'countProduct', 'countCategoryChildrens'));
        } else {
            return view('site.template.'.$category->template, compact('category', 'products', 'productSeen', 'activeMenu', 'nameRoute', 'mainId', 'categoryChildrens', 'categoryMain', 'countProduct', 'countCategoryChildrens'));
        }
    }


    public function filter(Request $request) {
        $mark = $request->input('mark');
        $madeInOf = $request->input('made_in_of');
        $cateSlug = $request->input('slug_cate');

        $category = Category::where('slug', $cateSlug)->first();
        // tìm kiếm theo thương hiệu
        $products = Post::join('category_post', 'category_post.post_id', '=', 'posts.post_id')
            ->join('products', 'products.post_id', '=', 'posts.post_id')
            ->leftJoin('input', 'input.post_id', '=', 'posts.post_id')
            ->select(
                'posts.*',
                'products.price',
                'products.discount'
            )
            ->where('category_post.category_id', $category->category_id)
            ->where('input.type_input_slug', 'hang-san-xuat');
            if(!empty($mark)) {
                $products = $products->whereIn('input.content', $mark);
            }


        // tìm kiếm theo nơi sản xuất
        if(!empty($madeInOf)) {
        $productMadeInOf =  Post::leftJoin('category_post', 'category_post.post_id', '=', 'posts.post_id')
            ->leftJoin('products', 'products.post_id', '=', 'posts.post_id')
            ->leftJoin('input', 'input.post_id', '=', 'posts.post_id')
            ->select(
                'posts.*',
                'products.price',
                'products.discount'
            )
            ->where('category_post.category_id', $category->category_id)
            ->where('input.type_input_slug', 'xuat-xu')
            ->whereIn('input.content', $madeInOf);

            $products = $products->union($productMadeInOf);
        }


        // tìm kiếm theo khoảng giá
        $priceRanges = $request->input('price_range');
        if (!empty($priceRanges)) {
            $priceRange = explode('-', $priceRanges);
            $productPriceRange =  Post::leftJoin('category_post', 'category_post.post_id', '=', 'posts.post_id')
                ->leftJoin('products', 'products.post_id', '=', 'posts.post_id')
                ->select(
                    'posts.*',
                    'products.price',
                    'products.discount'
                )
                ->where('category_post.category_id', $category->category_id)
                ->where('products.price','>=', $priceRange[0])
                ->where('products.price', '<=', $priceRange[1]);

            $products = $products->union($productPriceRange);
        }

        $productSeen =Product::saveProductSeen($request);

        $products = $products->get();
        if ($category->template == 'default') {
            return view('site.default.category_product', compact('category', 'products', 'productSeen'));
        } else {
            return view('site.template.'.$category->template, compact('category', 'products', 'productSeen'));
        }
    }

    public function search(Request $request) {
        $word = $request->input('word');

		$products = Post::join('products', 'products.post_id', '=', 'posts.post_id')
			->select(
				'posts.*',
				'products.price',
				'products.discount',
				'products.discount_start',
				'products.discount_end'
			)
			->where('posts.post_type', 'product')
			->where('posts.slug', 'like', '%'.Ultility::createSlug($word).'%')
			->where('language', session('languageCurrent', 'vn'));
            $count = $products->count();

			$products = $products->paginate(16);

		return view('site.default.search', compact('products', 'word', 'count'));
    }

    public function searchAjax(Request $request) {
        $word = $request->input('word');
        
        if ( empty($word) ) {
            return response('Error', 404)
                ->header('Content-Type', 'text/plain');
        }

        $products = Post::join('products', 'products.post_id', '=', 'posts.post_id')
            ->select(
                'posts.*',
                'products.price',
                'products.discount',
                'products.discount_start',
                'products.discount_end'
            )
            ->where('posts.slug', 'like', '%'.Ultility::createSlug($word).'%')
            ->offset(0)
            ->limit(5)->get();

        return response([
            'status' => 200,
            'products' => $products
        ])->header('Content-Type', 'text/plain');
    }
}
