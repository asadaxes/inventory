<?php

namespace App\Models;

use App\Models\Scopes\Searchable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Employee extends Model
{
    use HasFactory;
    use Searchable;

    protected $fillable = [
        'department_id',
        'name',
        'designation_id',
        'fname',
        'mname',
        'mobile',
        'phone',
        'email',
        'nid',
        'dob',
        'joining_date',
        'salary',
        'status',
        'image',
        'address',
        'per_address',
        'company_id',
        'branch_id',
    ];

    protected $searchableFields = ['*'];

    public function department()
    {
        return $this->belongsTo(Department::class);
    }

    public function designation()
    {
        return $this->belongsTo(Designation::class);
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
