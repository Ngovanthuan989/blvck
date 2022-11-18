<?php

namespace App\Http\Controllers\Admin;

use App\Entity\Category;
use App\Entity\Language;
use App\Entity\LanguageSave;
use App\Entity\Template;
use App\Entity\User;
use App\Ultility\Icon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\Rule;
use Validator;
use App\Ultility\Ultility;

class CategoryProductController extends AdminController
{
    protected $role;

    public function __construct()
    {
        parent::__construct();
        $this->middleware(function ($request, $next) {
            $this->role =  Auth::user()->role;

            if (User::isMember($this->role)) {
                return redirect('admin/home');
            }

            return $next($request);
        });

    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $category = new Category();
        $categories =$category->getCategory('product');

        return view('admin.product_cate.list', compact('categories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $category = new Category();
        $categories =$category->getCategory('product');
        $templates = Template::orderBy('template_id')->get();
        $languages = Language::orderBy('language_id')->get();

        return view('admin.product_cate.add', compact('categories', 'templates', 'languages'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->insertCateogry($request);

        return redirect('admin/category-products');
    }

    private function insertCateogry ($request) {
        $titles = $request->input('title');
        $images = $request->input('image');
        $slugs = $request->input('slug');
        $descripsions = $request->input('description');

        $categoryIds = array();
        $mainId = 0;
        $languages = Language::orderBy('language_id')->get();
        $category = new Category();

        foreach ($languages as $id => $language) {
            $slug = $slugs[$id];
            if (empty($slug)) {
                $slug = Ultility::createSlug($titles[$id]);
            }
            $categoryId = $category->insertGetId([
                'title' => $titles[$id],
                'slug' => $slug,
                'parent' => $request->input('parent'),
                'post_type' => 'product',
                'template' =>  $request->input('template'),
                'description' =>$descripsions[$id],
                'image' =>  $images[$id],
                'language' => $language->acronym
            ]);
            $categoryIds[] = $categoryId;
            if ($id == 0) {
                $mainId = $categoryId;
            }
        }
        $languageSave = new LanguageSave();
        $languageSave->insert([
            'element_type' => 'category',
            'element_id' => implode(',', $categoryIds),
            'main_id' =>  $mainId
        ]);
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $category = Category::where('category_id', $id)->first();
        $categoryObj = new Category();
        $categories =$categoryObj->getCategory('product');
        $templates = Template::orderBy('template_id')->get();
        $languages = Language::orderBy('language_id')->get();
        $languageSave = LanguageSave::select('element_id')->where('main_id', $category->category_id)->first();
        $categorieLanguages = Category::whereIn(
		'category_id', explode(',',  $languageSave->element_id )
		)
		->get();

        return view('admin.product_cate.edit', compact('categories', 'templates', 'category', 'languages', 'categorieLanguages'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $category = Category::where('category_id', $id)->first();

        $languageSave = LanguageSave::select('element_id')->where('main_id', $category->category_id)->first();
        $categories = Category::whereIn('category_id', explode(',', $languageSave->element_id))
            ->orderBy('category_id')
            ->get();

        $titles = $request->input('title');
        $images = $request->input('image');
        $slugs = $request->input('slug');
        $descripsions = $request->input('description');

        foreach ($categories as $id => $cate) {
            $slug = $slugs[$id];
            if (empty($slug)) {
                $slug = Ultility::createSlug($titles[$id]);
            }
            $cate->update([
                'title' => $titles[$id],
                'slug' => $slug,
                'parent' => $request->input('parent'),
                'post_type' => 'product',
                'template' =>  $request->input('template'),
                'description' =>$descripsions[$id],
                'image' =>  $images[$id],
            ]);
        }


        return redirect('admin/category-products');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $category = Category::where('category_id', $id)->first();
        $languageSave = LanguageSave::select('element_id')->where('main_id', $category->category_id)->first();

        Category::whereIn('category_id', explode(',', $languageSave->element_id))
            ->delete();

        return redirect('admin/category-products');
    }
}
