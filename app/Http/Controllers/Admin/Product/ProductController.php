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


    public function select_product()
    {
//        abort_if(!auth()->user()->can('view product'),403,__('User does not have the right permissions.'));
        return view('admin.product.product.select_product', [
            'products'=>Product::get()
        ]);
    }
    public function pro_qty_change(Request $request, string $id)
    {
//        return $request->qty;
        $currentData = session()->get('purches_item', []);
        $amountdata=session()->get('amount_data');
        foreach($currentData as $key=>$data){
            if ($data['product_id'] == $id){
                $product=Product::find($id);
                $inc_val=$request->qty - $data['product_qty'];
                $price=($product->price * $request->qty) - $data['product_price'];
                $currentData[$key]['product_qty'] = $request->qty;
                $currentData[$key]['product_price'] = $product->price * $request->qty;
                $item2=[
                    'total_item'=>$amountdata['total_item'] + ($inc_val),
                    'total_taka'=>$amountdata['total_taka'] + $price,
                ];
//                unset($currentData[$key]);
//                $i++;
                // Update the product_qty (for example, increment by 1)



                $amount_data=$item2;

                // Save the updated data back to the session
//                    session()->put('purches_item', $currentData);
            }
        }
        session()->put('purches_item', $currentData);
        session()->put('amount_data', $amount_data);

        $product_data= session()->get('purches_item');
        $amount_data= session()->get('amount_data');

//        return $amount_data;
        return response(['data'=>$product_data,'amount'=>$amount_data]);
    }
    public function delete_select_product(string $id)
    {
        $currentData = session()->get('purches_item', []);
        $amountdata=session()->get('amount_data');
//        return $amountdata;
        foreach($currentData as $key=>$data){
            if ($data['product_id'] == $id){
                $item2=[
                    'total_item'=>$amountdata['total_item'] - $data['product_qty'],
                    'total_taka'=>$amountdata['total_taka'] - $data['product_price'],
                ];
                unset($currentData[$key]);
//                $i++;
                // Update the product_qty (for example, increment by 1)
//                $currentData[$key]['product_id'] = $data['product_qty'] + 1;
//                $currentData[$key]['product_price'] = $data['product_price'] + $product->price;


                $amount_data=$item2;

                // Save the updated data back to the session
//                    session()->put('purches_item', $currentData);
            }
        }
        session()->put('purches_item', $currentData);
        session()->put('amount_data', $amount_data);

        $product_data= session()->get('purches_item');
        $amount_data= session()->get('amount_data');
//        return $amountdata;
        return response(['data'=>$product_data,'amount'=>$amount_data]);

    }
    public function get_product(string $id)
    {
        $product=Product::find($id);
//session()->forget('purches_item');
//session()->forget('amount_data');
//return
        $currentData = session()->get('purches_item', []);
        $amountdata=session()->get('amount_data');
//return $currentData;
        if(!empty($currentData)){
//            return 'saro';
            $i=0;
            foreach($currentData as $key=>$data){
                if ($data['product_id'] == $product->id){
                    $i++;
                    // Update the product_qty (for example, increment by 1)
                    $currentData[$key]['product_qty'] = $data['product_qty'] + 1;
                    $currentData[$key]['product_price'] = $data['product_price'] + $product->price;
                    $item2=[
                        'total_item'=>$amountdata['total_item']+1,
                        'total_taka'=>$amountdata['total_taka']+$product->price,
                    ];

                    $amount_data=$item2;

                    // Save the updated data back to the session
//                    session()->put('purches_item', $currentData);
                }
            }
            if ($i==0){
                $item=[
                    'product_id'=>$product->id,
                    'product_name'=>$product->name,
                    'product_price'=>$product->price,
                    'product_image'=>$product->image,
                    'product_qty'=>1,
                ];

//                foreach ($amountdata as $key =>$adata){
//
//                }
//                $amountdata['total_item']=$amountdata['total_item']+1;
//                $amountdata['total_taka']=$amountdata['total_taka']+$product->price;
                $item2=[
                    'total_item'=>$amountdata['total_item']+1,
                    'total_taka'=>$amountdata['total_taka']+$product->price,
                ];

                $amount_data=$item2;
                $currentData[] = $item;
            }
        }else{
            $item=[
                'product_id'=>$product->id,
                'product_name'=>$product->name,
                'product_price'=>$product->price,
                'product_image'=>$product->image,
                'product_qty'=>1,
            ];
            $item2=[
                'total_item'=>1,
                'total_taka'=>$product->price,
            ];

            $amount_data=$item2;
            $currentData[] = $item;
//            session()->put('purches_item', $currentData);
        }
        session()->put('purches_item', $currentData);
        session()->put('amount_data', $amount_data);


$product_data= session()->get('purches_item');
$amount_data= session()->get('amount_data');


//        if (empty(session()->get('purches_item'))){
//            $currentData[] = $item;
//            session()->put('purches_item', $currentData);
////            session()->put(['data'=>$item]);
//        }else{
//            // Retrieve the current session data or initialize an empty array if not set
//            $currentData = session()->get('purches_item', []);
//
//// Append the new item to the existing array
//            $currentData[] = $item;
//
//// Store the updated array back into the session
//            session()->put('purches_item', $currentData);
//        }
////        session(['data'=>$product]);
//
////        session([ 'data' => $cart]);
//
//        return session()->get('purches_item');

        return response(['data'=>$product_data,'amount'=>$amount_data]);


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

    public function get_sub_cat(string $id)
    {
        $sub_cat=SubCategory::where('category_id',$id)->get();

        return response(['data'=>$sub_cat]);
    }
    public function get_child_cat(string $id)
    {
        $child_cat=ChildCategory::where('sub_cat_id',$id)->get();

        return response(['data'=>$child_cat]);
    }
}
