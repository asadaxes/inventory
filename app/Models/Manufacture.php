<?php

namespace App\Models;

use App\Models\Scopes\Searchable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Manufacture extends Model
{
    use HasFactory;
    use Searchable;

    protected $fillable = [
        'name',
        'bname',
        'address',
        'cperson',
        'cmobile',
        'email',
        'web',
        'rank',
        'mainproduct',
        'description',
        'status',
    ];

    protected $searchableFields = ['*'];

    public function product()
    {
        return $this->hasOne(Product::class);
    }
}
