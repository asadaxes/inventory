<?php

namespace App\Models;

use App\Models\Scopes\Searchable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Product extends Model
{
    use HasFactory;
    use Searchable;

    protected $fillable = [
        'name',
        'sku',
        'price',
        'quantity',
        'created_by',
        'image',
        'min_quantity',
        'tex',
        'discount_type',
        'discount',
        'description',
        'brand_id',
        'category_id',
        'size_id',
        'sub_category_id',
        'color_id',
        'child_category_id',
        'unit_id',
        'manufacture_id',
    ];

    protected $searchableFields = ['*'];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function subCategory()
    {
        return $this->belongsTo(SubCategory::class);
    }

    public function childCategory()
    {
        return $this->belongsTo(ChildCategory::class);
    }

    public function brand()
    {
        return $this->belongsTo(Brand::class);
    }

    public function size()
    {
        return $this->belongsTo(Size::class);
    }

    public function color()
    {
        return $this->belongsTo(Color::class);
    }

    public function unit()
    {
        return $this->belongsTo(Unit::class);
    }

    public function manufacture()
    {
        return $this->belongsTo(Manufacture::class);
    }
}
