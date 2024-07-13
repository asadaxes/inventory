<?php

namespace App\Http\Controllers\Admin\Product;

use App\Http\Controllers\Controller;
use App\Models\Brand;
use App\Models\Category;
use App\Models\ChildCategory;
use App\Models\Color;
use App\Models\Manufacture;
use App\Models\Product;
use App\Models\Size;
use App\Models\SubCategory;
use App\Models\Unit;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        abort_if(!auth()->user()->can('view product'),403,__('User does not have the right permissions.'));
        return view('admin.product.product.index', [
            'products'=>Product::get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        abort_if(!auth()->user()->can('create product'),403,__('User does not have the right permissions.'));

        return view('admin.product.product.create',[
            'brands' => Brand::all(),
            'categories' => Category::all(),
            'subCategories' => SubCategory::all(),
            'childCategories' => ChildCategory::all(),
            'colors' => Color::all(),
            'sizes' => Size::all(),
            'units'=> Unit::all(),
            'manufacturers'=> Manufacture::all()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
//                return $request;
        abort_if(!auth()->user()->can('create category'),403,__('User does not have the right permissions.'));
        $store=Product::createOrUpdateUser($request);
//        return $store;

        return redirect()->route('product.index')->with('success','Product create successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $product=Product::find($id);
        return view('admin.product.product.show',[
            'product'=>$product,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        abort_if(!auth()->user()->can('update product'),403,__('User does not have the right permissions.'));

        $product=Product::find($id);
        return view('admin.product.product.edit',[
            'product'=>$product,
            'brands' => Brand::all(),
            'categories' => Category::all(),
            'subCategories' => SubCategory::all(),
            'childCategories' => ChildCategory::all(),
            'colors' => Color::all(),
            'sizes' => Size::all(),
            'units'=> Unit::all(),
            'manufacturers'=> Manufacture::all()
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        abort_if(!auth()->user()->can('update product'),403,__('User does not have the right permissions.'));
        $store=Product::createOrUpdateUser($request,$id);
//        return $store;

        return redirect()->route('product.index')->with('success','Product Update successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        {
//        return $id;
            abort_if(!auth()->user()->can('delete product'),403,__('User does not have the right permissions.'));
            $delete=Product::find($id);
        if (file_exists($delete->image)){
            unlink(public_path($delete->image));
        }

            $delete->delete();
            return redirect()->route('product.index')->with('error','Product delete successfully');
        }
    }
}
