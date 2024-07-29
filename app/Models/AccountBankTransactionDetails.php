<?php

namespace App\Models;

use App\Models\Scopes\Searchable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class AccountBankTransactionDetails extends Model
{
    use HasFactory;
    // use Searchable;

    protected $fillable = [
        'bank_tran_id',
        'inv_id',
        'credit_id',
        'debit_id',
        'amount',
        'note',
        'date',
        'cheque_id',
        'cheque_date',
        'reference',
        'user_id',
        'branch_id',
        'company_id'
    ];

    protected $searchableFields = ['*'];

    protected $table = 'account_bank_transaction_details';

    protected $casts = [
        'date' => 'date',
        'cheque_date' => 'datetime'
    ];

    public function transaction()
    {
        return $this->belongsTo(AccountBankTransaction::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function branch()
    {
        return $this->belongsTo(Branch::class);
    }

    public function company()
    {
        return $this->belongsTo(Company::class);
    }
}