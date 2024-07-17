<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\Admin\CompanyController;
use App\Http\Controllers\Admin\BranchController;
use App\Http\Controllers\Admin\StoreController;
use App\Http\Controllers\Admin\Product\BrandController;
use App\Http\Controllers\Admin\Product\CategoryController;
use App\Http\Controllers\Admin\Product\SubCategoryController;
use App\Http\Controllers\Admin\Product\ChildCategoryController;
use App\Http\Controllers\Admin\Product\ProductController;
use App\Http\Controllers\Admin\Product\ColorController;
use App\Http\Controllers\Admin\Product\SizeController;
use App\Http\Controllers\Admin\Product\UnitController;
use App\Http\Controllers\Admin\Product\ManufactureController;
use App\Http\Controllers\Admin\People\CustomerController;
use App\Http\Controllers\Admin\People\SupplierController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return redirect(route('dashboard'));
});

Route::get('/dashboard', function () {
    return view('admin.dashboard.home');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

});

Route::group(['middleware' => ['admin_access']], function() {
//Route::group(['middleware' => ['role:super-admin|admin|user']], function() {

    Route::resource('permissions', App\Http\Controllers\PermissionController::class);
    Route::get('permissions/{permissionId}/delete', [App\Http\Controllers\PermissionController::class, 'destroy']);

    Route::resource('roles', App\Http\Controllers\RoleController::class);
    Route::get('roles/{roleId}/delete', [App\Http\Controllers\RoleController::class, 'destroy']);
    Route::get('roles/{roleId}/give-permissions', [App\Http\Controllers\RoleController::class, 'addPermissionToRole']);
    Route::put('roles/{roleId}/give-permissions', [App\Http\Controllers\RoleController::class, 'givePermissionToRole']);


    Route::resource('admins', App\Http\Controllers\UserController::class);
    Route::get('users/delete/{id}', [App\Http\Controllers\UserController::class, 'destroy'])->name('user_delete');

    //company
    Route::resource('company',CompanyController::class);
//    Route::get('company/delete/{id}', [CompanyController::class, 'destroy'])->name('company_delete');

    //Branch
    Route::resource('branch',BranchController::class);
//    Route::get('branch/delete/{id}', [BranchController::class, 'destroy'])->name('branch_delete');

    //Branch
    Route::resource('store',StoreController::class);

    //Brand
    Route::resource('brand',BrandController::class);

    //category
    Route::resource('category',CategoryController::class);

    //sub category
    Route::resource('sub_category',SubCategoryController::class);

    //sub category
    Route::resource('child_category',ChildCategoryController::class);
//================================================ Product module start=================================================
    // product
    Route::resource('product', ProductController::class);

    Route::get('get_sub_cat/{id}',[ProductController::class,'get_sub_cat'])->name('get_sub_cat');
    Route::get('get_child_cat/{id}',[ProductController::class,'get_child_cat'])->name('get_child_cat');
    Route::get('get_product/{id}',[ProductController::class,'get_product'])->name('get_product');

    Route::get('select_product',[ProductController::class,'select_product'])->name('select_product');
    Route::delete('delete_select_product/{id}',[ProductController::class,'delete_select_product'])->name('delete_select_product');
    Route::get('pro_qty_change/{id}',[ProductController::class,'pro_qty_change'])->name('pro_qty_change');

    // color
    Route::resource('color', ColorController::class);

    // size
    Route::resource('size', SizeController::class);

    // unit
    Route::resource('unit', UnitController::class);

    // manufacture
    Route::resource('manufacture', ManufactureController::class);

//================================================ Product module end===================================================

//================================================ People module start=================================================
    //Customer
    Route::resource('customers',CustomerController::class);
    //Supplier
    Route::resource('suppliers',SupplierController::class);
//================================================ People module end===================================================


});

require __DIR__.'/auth.php';
