<?php

namespace App\Models;

use App\Models\Scopes\Searchable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class ProductTransection extends Model
{
    use HasFactory;
//    use Searchable;

    protected $fillable = [
        'trans_type',
        'trans_id',
        'product_id',
        'color_id',
        'size_id',
        'unit_id',
        'qty',
        'price',
        'total_price',
        'dis_type',
        'dis',
        'tax_type',
        'tax',
        'vat_type',
        'vat',
        'pro_in',
        'pro_out',
        'pro_sell',
        'pro_loc',
        'purchas_id',
        'company_id',
        'branch_id',
    ];

    protected $searchableFields = ['*'];

    protected $table = 'product_transections';

    protected  static $transection;

    public static function createOrUpdateUser ($request, $trans_type=null, $trans_id=null, $id = null)
    {
//        $lastdata=Product::orderBy('sku','DESC')->first();
        if (isset($id))
        {
            self::$transection = ProductTransection::find($id);
        } else {
            self::$transection = new ProductTransection();
        }
        self::$transection->trans_type                      = $trans_type ?? '';
        self::$transection->trans_id                        = $trans_id ?? '';
        self::$transection->product_id                      = $request->product_id ?? '';
        self::$transection->color_id                        = $request->color_id ?? '';
        self::$transection->size_id                         = $request->size_id ?? '';
        self::$transection->unit_id                         = $request->unit_id ?? '';
        self::$transection->qty                             = $request->qty ?? '';
        self::$transection->price                           = $request->price ?? '';
        self::$transection->total_price                     = $request->total_price ?? '';
        self::$transection->dis_type                        = $request->dis_type ?? '';
        self::$transection->dis                             = $request->dis ?? '';
        self::$transection->tax_type                        = $request->tax_type ?? '';
        self::$transection->tax                             = $request->tax ?? '';
        self::$transection->vat_type                        = $request->vat_type ?? '';
        self::$transection->vat                             = $request->vat ?? '';
        self::$transection->pro_in                          = $request->pro_in ?? '';
        self::$transection->pro_out                         = $request->pro_out ?? '';
        self::$transection->pro_sell                        = $request->pro_sell ?? '';
        self::$transection->pro_loc                         = $request->pro_loc ?? '';

//        self::$transection->purchas_id                = $request->date ?? '';
//        self::$transection->due_date                = $request->due_date ?? '';
//        self::$transection->due                = $request->due ?? '';
//        self::$transection->total                = $request->total ?? '';
//        self::$transection->status                     = $request->status ?? '';
        self::$transection->save();
        return self::$transection;
    }

    public function purchas()
    {
        return $this->belongsTo(Purchas::class);
    }

    public function company()
    {
        return $this->belongsTo(Company::class);
    }

    public function branch()
    {
        return $this->belongsTo(Branch::class);
    }
}
