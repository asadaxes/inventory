<?php

namespace App\Http\Controllers\Admin\Purchas;

use App\Http\Controllers\Controller;
use App\Models\ProductTransection;
use App\Models\Purchas;
use App\Models\Stock;
use Illuminate\Http\Request;

class PurchasController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //                return $request;
        abort_if(!auth()->user()->can('create category'),403,__('User does not have the right permissions.'));
        $store=Purchas::createOrUpdateUser($request);

        $product_transection=ProductTransection::createOrUpdateUser($request,$trans_type='pur', $trans_id= $store->id);

        $stock=Stock::createOrUpdateUser($request);
//        return $store;

        return redirect()->route('product.index')->with('success','Product create successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
