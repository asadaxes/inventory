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

//Route::get('/', function () {
//    return view('welcome');
//});

Route::get('/', function () {
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


});

require __DIR__.'/auth.php';
