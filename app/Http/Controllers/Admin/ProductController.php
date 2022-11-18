<?php

namespace App\Http\Controllers\Admin;

use App\Entity\Category;
use App\Entity\CategoryPost;
use App\Entity\Comment;
use App\Entity\Input;
use App\Entity\Language;
use App\Entity\LanguageSave;
use App\Entity\Post;
use App\Entity\Template;
use App\Entity\TypeInput;
use App\Entity\Product;
use App\Entity\TypeSubPost;
use App\Entity\User;
use App\Ultility\Ultility;
use Faker\Provider\DateTime;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\Rule;
use Validator;
use Yajra\Datatables\Datatables;

class ProductController extends AdminController
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
        return View('admin.product.list');
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
        $typeInputDatabaseGeneral = TypeInput::orderBy('type_input_id')
            ->where('general', 1)->get();
        $typeInputsGeneral = array();
        foreach($typeInputDatabaseGeneral as $typeInput) {
            $token = explode(',', $typeInput->post_used);
            if (in_array('post', $token)) {
                $typeInputsGeneral[] = $typeInput;
            }
        }
        // lọc bỏ những trường mà ko sử dụng trong post
        $typeInputDatabase = TypeInput::orderBy('type_input_id')
            ->where('general', null)->get();
        $typeInputs = array();
        foreach($typeInputDatabase as $typeInput) {
            $token = explode(',', $typeInput->post_used);
            if (in_array('product', $token)) {
                $typeInputs[] = $typeInput;
            }
        }

        $languages = Language::orderBy('language_id')->get();

        return view('admin.product.add', compact('categories', 'templates', 'typeInputs', 'languages', 'typeInputsGeneral'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $this->insertStore($request);

        return redirect('admin/products');
    }

    private function insertStore($request) {
        $userId = Auth::user()->id;
        $languages = Language::orderBy('language_id', 'asc')->get();

        $titles = $request->input('title');
        $tags = $request->input('tags');
        $contents = $request->input('content');
        $descriptions = $request->input('description');
        $images = $request->input('image');
        $slugs = $request->input('slug');
        // kiểm tra xem có là tin hot ko
        $isHotnews = $request->input('is_hotnews');
        // kiểm tra title xem có bị rỗng ko
        $emptyTitle = '';
        foreach ($titles as $title) {
            $emptyTitle .= $title;
        }
        if (empty($emptyTitle)) {
            return false;
        }

        $postIds = array();
        $mainId = 0;
        foreach ($languages as $id => $language) {
            $slug = $slugs[$id];
            // if slug null slug create as title
            if (empty($slug)) {
                $slug = Ultility::createSlug($titles[$id]);
            }
            $post = new Post();
            $postId = $post->insertGetId([
                'title' => $titles[$id],
                'post_type' => 'product',
                'template' =>  $request->input('template'),
                'description' => $descriptions[$id],
                'tags' => $tags[$id],
                'image' =>  $images[$id],
                'user_id' => $userId,
                'visiable' => 0,
                'meta_title' => $request->input('meta_title'),
                'meta_description' => $request->input('meta_description'),
                'meta_keyword' => $request->input('meta_keyword'),
                'language' =>  $language->acronym,
                'created_at' => new \DateTime(),
                'updated_at' => new \DateTime(),
                'content' =>  $contents[$id],
            ]);

            $codes = $request->input('code');
            $prices = $request->input('price');
            $discount = $request->input('discount');
            $properties = $request->input('properties');
            $imageList = $request->input('image_list');

            $product = new Product();
            $product->insert([
                'post_id' => $postId,
                'code' =>  $codes[$id],
                'price' =>  $prices[$id],
                'discount' =>  $discount[$id],
                'image_list' =>  $imageList[$id],
                'properties' =>  $properties[$id],
            ]);

            // insert slug
            $postWithSlug = $post->where('slug', $slug)->first();
            if (empty($postWithSlug)) {
                $post->where('post_id', '=', $postId)
                    ->update([
                        'slug' => $slug
                    ]);
            } else {
                $post->where('post_id', '=', $postId)
                    ->update([
                        'slug' => $slug.'-'.$postId
                    ]);
            }

            $postIds[] = $postId;
            // post_id đại diện cho posts
            if ($id == 0) {
                $mainId = $postId;
            }
        }

        $languageSave = new LanguageSave();
        $languageSave->insert([
            'element_type' => 'product',
            'element_id' => implode(',', $postIds),
            'main_id' =>  $mainId
        ]);

        // insert danh mục cha
        $categoryPost = new CategoryPost();
        if (!empty($request->input('parents'))) {
            foreach($request->input('parents') as $parent) {
                foreach($postIds as $postId) {
                    $categoryPost->insert([
                        'category_id' => $parent,
                        'post_id' => $postId
                    ]);
                }
            }
        }

        // insert input
        $input = new Input();
        $typeInputDatabase = TypeInput::orderBy('type_input_id')->get();
        foreach($typeInputDatabase as $typeInput) {
            $token = explode(',', $typeInput->post_used);
            if (in_array('product', $token)) {
                $contentInputs =  $request->input($typeInput->slug);
                foreach($postIds as $id => $postId) {
                    $input->insert([
                        'type_input_slug' => $typeInput->slug,
                        'content' => $contentInputs[$id],
                        'post_id' => $postId
                    ]);
                }

            }
        }

    }
    /**
     * Display the specified resource.
     *
     * @param  \App\Entity\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        return redirect('admin/products');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Entity\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        $post = Post::where('post_id', $product->post_id)->first();

        $category = new Category();
        $categories =$category->getCategory('product');
        $templates = Template::orderBy('template_id')->get();

        $categoryPosts = CategoryPost::where('post_id', $post->post_id)->get();
        $categoryPost = array();
        foreach($categoryPosts as $cate ) {
            $categoryPost[] = $cate->category_id;
        }

        // get bài viết thuộc ngôn ngữ khác
        $languages = Language::orderBy('language_id')->get();
        $languageSave = LanguageSave::select('element_id')->where('main_id', $post->post_id)->first();
        $posts = Post::whereIn('post_id', explode(',', $languageSave->element_id))->get();
        // lọc bỏ những trường mà ko sử dụng trong post
        foreach ($posts as $id => $postLanguage) {
            $typeInputDatabase = TypeInput::orderBy('type_input_id')
                ->where('general', null)->get();
            $typeInputs = array();
            foreach($typeInputDatabase as $typeInput) {
                $token = explode(',', $typeInput->post_used);
                if (in_array('product', $token)) {
                    $typeInputs[] = $typeInput;
                    $posts[$id][$typeInput->slug] = Input::getPostMeta($typeInput->slug, $postLanguage->post_id);
                }
            }
            $productModel = new Product();
            $posts[$id]['product'] = $productModel->where('post_id', $posts[$id]->post_id)->first();
        }

        $typeInputDatabase = TypeInput::orderBy('type_input_id')
            ->where('general', 1)->get();
        $typeInputsGeneral = array();
        foreach($typeInputDatabase as $typeInput) {
            $token = explode(',', $typeInput->post_used);
            if (in_array('post', $token)) {
                $typeInputsGeneral[] = $typeInput;
                $post[$typeInput->slug] = Input::getPostMeta($typeInput->slug, $post->post_id);
            }
        }

        return view('admin.product.edit', compact('categories', 'templates', 'typeInputs', 'post', 'product', 'categoryPost', 'languages', 'posts', 'typeInputsGeneral'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Entity\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        $post = Post::where('post_id', $product->post_id)->first();

        $languageSave = LanguageSave::select('element_id')->where('main_id', $post->post_id)->first();
        $titles = $request->input('title');
        $tags = $request->input('tags');
        $contents = $request->input('content');
        $descriptions = $request->input('description');
        $images = $request->input('image');
        $slugs = $request->input('slug');
        //kiểm tra xem có là tin hot ko
        $isHotnews = $request->input('is_hotnews');

        // kiểm tra title xem có bị rỗng ko
        $emptyTitle = '';
        foreach ($titles as $title) {
            $emptyTitle .= $title;
        }
        if (empty($emptyTitle)) {
            return false;
        }

        $posts = Post::whereIn('post_id', explode(',', $languageSave->element_id))->get();

        foreach ($posts as $id => $post) {
            $slug = $slugs[$id];
            // if slug null slug create as title
            if (empty($slug)) {
                $slug = Ultility::createSlug($titles[$id]);
            }

            $post->update([
                'title' => $titles[$id],
                'post_type' => 'product',
                'template' =>  $request->input('template'),
                'description' => $descriptions[$id],
                'tags' => $tags[$id],
                'image' =>  $images[$id],
                'content' =>  $contents[$id],
                'visiable' => 0,
                'meta_title' => $request->input('meta_title'),
                'meta_description' => $request->input('meta_description'),
                'meta_keyword' => $request->input('meta_keyword'),
                'created_at' => new \DateTime(),
                'updated_at' => new \DateTime(),
            ]);

            $codes = $request->input('code');
            $prices = $request->input('price');
            $discount = $request->input('discount');
            $properties = $request->input('properties');
            $imageList = $request->input('image_list');

            $productModel = new Product();
            $productModel->where('post_id','=', $post->post_id)
                ->update([
                'code' =>  $codes[$id],
                'price' =>  $prices[$id],
                'discount' =>  $discount[$id],
                'image_list' =>  $imageList[$id],
                'properties' =>  $properties[$id],
            ]);

            // insert slug
            $postWithSlug = Post::where('slug', $slug)
                ->where('post_id', '!=', $post->post_id)
                ->first();
            if (empty($postWithSlug)) {
                $post->where('post_id', $post->post_id)
                    ->update([
                        'slug' => $slug
                    ]);
            } else {
                $post->where('post_id', $post->post_id)
                    ->update([
                        'slug' => $slug.'-'.$post->post_id
                    ]);
            }

            // insert danh mục cha
            CategoryPost::where('post_id', $post->post_id)->delete();
            if (!empty($request->input('parents'))) {
                foreach($request->input('parents') as $parent) {
                    $categoryPost =  CategoryPost::where('category_id', $parent)
                        ->where('post_id', $post->post_id)
                        ->first();
                    if (empty($categoryPost)) {
                        $categoryPost = new CategoryPost();
                        $categoryPost->insert([
                            'category_id' => $parent,
                            'post_id' => $post->post_id
                        ]);
                    }
                }
            }

            // insert input
            $typeInputDatabase = TypeInput::orderBy('type_input_id')->get();
            foreach($typeInputDatabase as $typeInput) {
                $token = explode(',', $typeInput->post_used);
                if (in_array('product', $token)) {
                    $contentInputs =  $request->input($typeInput->slug);
                    $input = Input::where('post_id', $post->post_id)
                        ->where('type_input_slug', $typeInput->slug)->first();
                    if (empty($input)) {
                        $input = new Input();
                        $input->insert([
                            'type_input_slug' => $typeInput->slug,
                            'content' => $contentInputs[$id],
                            'post_id' => $post->post_id
                        ]);
                    } else {
                        $input->update([
                            'content' => $contentInputs[$id],
                        ]);
                    }


                }
            }
        }

        return redirect('admin/products');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Entity\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        $post = Post::where('post_id', $product->post_id)->first();

        $languageSave = LanguageSave::select('element_id')->where('main_id', $post->post_id)->first();
        // xóa hết dữ liệu cũ đi
        Post::whereIn('post_id', explode(',', $languageSave->element_id))->delete();
        $categoryPost = new CategoryPost();
        $categoryPost->whereIn('post_id', explode(',', $languageSave->element_id))->delete();
        $input = new Input();
        $input->whereIn('post_id', explode(',', $languageSave->element_id))->delete();
        $languageSave->where('main_id', $post->post_id)->where('element_type', 'post')->delete();
        Comment::whereIn('post_id', explode(',', $languageSave->element_id))->delete();
        Product::whereIn('post_id', explode(',', $languageSave->element_id))->delete();

        return redirect('admin/products');
    }

    public function anyDatatables(Request $request) {
        $posts = Post::join('products', 'products.post_id', '=', 'posts.post_id')
            ->select(
                'products.product_id',
                'posts.*'
            )->where('language', 'vn')
            ->where('post_type', 'product')->orderBy('posts.post_id', 'desc');
        
        return Datatables::of($posts)
            ->addColumn('category', function($post) {
                $categories = Category::leftJoin('category_post', 'category_post.category_id', 'categories.category_id')
                    ->select('title')->where('category_post.post_id', $post->post_id)->get();
                $categoryPost  = '';
                foreach ($categories as $category ) {
                    if(empty($categoryPost)) {
                        $categoryPost =  $category->title;
                        continue;
                    }
                    $categoryPost = implode(',', array($categoryPost, $category->title));
                }
                
                return $categoryPost;
            })
            ->addColumn('action', function($post) {
                $string = '<input type="checkbox" class="flat-red" onclick="return visiablePost(this);" value="'.$post->post_id.'" '.( ($post->visiable == 0 || $post->visiable == null ) ? 'checked' : '' ).'/> Hiện ';
                
                $string .=  '<a href="'.route('products.edit', ['product_id' => $post->product_id]).'">
                           <button class="btn btn-primary"><i class="fa fa-pencil" aria-hidden="true"></i></button>
                       </a>';
                $string .= '<a  href="'.route('products.destroy', ['product_id' => $post->product_id]).'" class="btn btn-danger btnDelete" 
                            data-toggle="modal" data-target="#myModalDelete" onclick="return submitDelete(this);">
                               <i class="fa fa-trash-o" aria-hidden="true"></i>
                            </a>';
                return $string;
            })
            ->make(true);
    }
}
